; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_GetBasicCommand.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_GetBasicCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@basic_command_ptr = common dso_local global i8* null, align 8
@CPU_regA = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@BINLOAD_loading_basic = common dso_local global i64 0, align 8
@BINLOAD_LOADING_BASIC_SAVED = common dso_local global i64 0, align 8
@BINLOAD_LOADING_BASIC_LISTED = common dso_local global i64 0, align 8
@ehopen_addr = common dso_local global i32 0, align 4
@ESC_EHOPEN = common dso_local global i32 0, align 4
@Devices_OpenBasicFile = common dso_local global i32 0, align 4
@Devices_RestoreEHREAD = common dso_local global i32 0, align 4
@CPU_rts_handler = common dso_local global i32 0, align 4
@Devices_E_Read = common dso_local global i32 0, align 4
@ESC_EHREAD = common dso_local global i32 0, align 4
@ehread_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_GetBasicCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_GetBasicCommand() #0 {
  %1 = load i8*, i8** @basic_command_ptr, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %28

3:                                                ; preds = %0
  %4 = load i8*, i8** @basic_command_ptr, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** @basic_command_ptr, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  store i32 %7, i32* @CPU_regA, align 4
  store i32 1, i32* @CPU_regY, align 4
  %8 = load i32, i32* @CPU_ClrN, align 4
  %9 = load i8*, i8** @basic_command_ptr, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load i64, i64* @BINLOAD_loading_basic, align 8
  %16 = load i64, i64* @BINLOAD_LOADING_BASIC_SAVED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @BINLOAD_loading_basic, align 8
  %20 = load i64, i64* @BINLOAD_LOADING_BASIC_LISTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @ehopen_addr, align 4
  %24 = load i32, i32* @ESC_EHOPEN, align 4
  %25 = load i32, i32* @Devices_OpenBasicFile, align 4
  %26 = call i32 @ESC_AddEscRts(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  store i8* null, i8** @basic_command_ptr, align 8
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i32, i32* @Devices_RestoreEHREAD, align 4
  store i32 %29, i32* @CPU_rts_handler, align 4
  br label %30

30:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @ESC_AddEscRts(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
