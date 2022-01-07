; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_CloseBasicFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_CloseBasicFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOAD_bin_file = common dso_local global i32* null, align 8
@BINLOAD_loading_basic = common dso_local global i64 0, align 8
@BINLOAD_LOADING_BASIC_SAVED = common dso_local global i64 0, align 8
@ready_prompt = common dso_local global i32 0, align 4
@ready_ptr = common dso_local global i32 0, align 4
@ehwrit_addr = common dso_local global i32 0, align 4
@ESC_EHWRIT = common dso_local global i32 0, align 4
@Devices_IgnoreReady = common dso_local global i32 0, align 4
@BINLOAD_LOADING_BASIC_RUN = common dso_local global i64 0, align 8
@Devices_RestoreEHCLOS = common dso_local global i32 0, align 4
@CPU_rts_handler = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@Devices_E_Read = common dso_local global i32 0, align 4
@ESC_EHREAD = common dso_local global i32 0, align 4
@ehread_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_CloseBasicFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_CloseBasicFile() #0 {
  %1 = load i32*, i32** @BINLOAD_bin_file, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32*, i32** @BINLOAD_bin_file, align 8
  %5 = call i32 @fclose(i32* %4)
  store i32* null, i32** @BINLOAD_bin_file, align 8
  %6 = load i64, i64* @BINLOAD_loading_basic, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = load i64, i64* @BINLOAD_loading_basic, align 8
  %10 = load i64, i64* @BINLOAD_LOADING_BASIC_SAVED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* @ready_prompt, align 4
  store i32 %13, i32* @ready_ptr, align 4
  %14 = load i32, i32* @ehwrit_addr, align 4
  %15 = load i32, i32* @ESC_EHWRIT, align 4
  %16 = load i32, i32* @Devices_IgnoreReady, align 4
  %17 = call i32 @ESC_AddEscRts(i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* @BINLOAD_LOADING_BASIC_RUN, align 8
  store i64 %18, i64* @BINLOAD_loading_basic, align 8
  br label %20

19:                                               ; preds = %8, %3
  store i64 0, i64* @BINLOAD_loading_basic, align 8
  br label %20

20:                                               ; preds = %19, %12
  br label %21

21:                                               ; preds = %20, %0
  %22 = call i32 (...) @Devices_RestoreEHREAD()
  %23 = load i32, i32* @Devices_RestoreEHCLOS, align 4
  store i32 %23, i32* @CPU_rts_handler, align 4
  store i32 1, i32* @CPU_regY, align 4
  %24 = load i32, i32* @CPU_ClrN, align 4
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ESC_AddEscRts(i32, i32, i32) #1

declare dso_local i32 @Devices_RestoreEHREAD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
