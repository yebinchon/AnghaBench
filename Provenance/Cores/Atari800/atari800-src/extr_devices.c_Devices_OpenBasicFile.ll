; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_OpenBasicFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_OpenBasicFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOAD_bin_file = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@ehclos_addr = common dso_local global i32 0, align 4
@ESC_EHCLOS = common dso_local global i32 0, align 4
@Devices_CloseBasicFile = common dso_local global i32 0, align 4
@ehread_addr = common dso_local global i32 0, align 4
@ESC_EHREAD = common dso_local global i32 0, align 4
@Devices_ReadBasicFile = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@Devices_RestoreEHOPEN = common dso_local global i32 0, align 4
@CPU_rts_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_OpenBasicFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_OpenBasicFile() #0 {
  %1 = load i32*, i32** @BINLOAD_bin_file, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32*, i32** @BINLOAD_bin_file, align 8
  %5 = load i32, i32* @SEEK_SET, align 4
  %6 = call i32 @fseek(i32* %4, i32 0, i32 %5)
  %7 = load i32, i32* @ehclos_addr, align 4
  %8 = load i32, i32* @ESC_EHCLOS, align 4
  %9 = load i32, i32* @Devices_CloseBasicFile, align 4
  %10 = call i32 @ESC_AddEscRts(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @ehread_addr, align 4
  %12 = load i32, i32* @ESC_EHREAD, align 4
  %13 = load i32, i32* @Devices_ReadBasicFile, align 4
  %14 = call i32 @ESC_AddEscRts(i32 %11, i32 %12, i32 %13)
  store i32 1, i32* @CPU_regY, align 4
  %15 = load i32, i32* @CPU_ClrN, align 4
  br label %16

16:                                               ; preds = %3, %0
  %17 = load i32, i32* @Devices_RestoreEHOPEN, align 4
  store i32 %17, i32* @CPU_rts_handler, align 4
  ret void
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ESC_AddEscRts(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
