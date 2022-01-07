; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_startup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Pier Solar mapper startup\00", align 1
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@M68K_BANK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OOM\00", align 1
@carthw_pier_mem_setup = common dso_local global i32 0, align 4
@PicoCartMemSetup = common dso_local global i32 0, align 4
@carthw_pier_reset = common dso_local global i32 0, align 4
@PicoResetHook = common dso_local global i32 0, align 4
@carthw_pier_statef = common dso_local global i32 0, align 4
@PicoLoadStateHook = common dso_local global i32 0, align 4
@carthw_pier_state = common dso_local global i32 0, align 4
@carthw_chunks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carthw_pier_startup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EL_STATUS, align 4
  %3 = call i32 @elprintf(i32 %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %5 = load i32, i32* @M68K_BANK_SIZE, align 4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %4, %6
  %8 = call i32 @PicoCartResize(i64 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @EL_STATUS, align 4
  %13 = call i32 @elprintf(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %36

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @M68K_BANK_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %27 = call i32 @memcpy(i64 %25, i64 %26, i32 32768)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 32768
  store i32 %30, i32* %1, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load i32, i32* @carthw_pier_mem_setup, align 4
  store i32 %32, i32* @PicoCartMemSetup, align 4
  %33 = load i32, i32* @carthw_pier_reset, align 4
  store i32 %33, i32* @PicoResetHook, align 4
  %34 = load i32, i32* @carthw_pier_statef, align 4
  store i32 %34, i32* @PicoLoadStateHook, align 4
  %35 = load i32, i32* @carthw_pier_state, align 4
  store i32 %35, i32* @carthw_chunks, align 4
  br label %36

36:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @PicoCartResize(i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
