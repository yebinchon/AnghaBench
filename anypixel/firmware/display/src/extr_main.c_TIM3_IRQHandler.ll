; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_TIM3_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_TIM3_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIM3_IRQHandler.CaptureNumber = internal global i32 0, align 4
@TIM3_IRQHandler.inval1 = internal global i32 0, align 4
@TIM3_IRQHandler.inval2 = internal global i32 0, align 4
@TIM3 = common dso_local global i32 0, align 4
@TIM_IT_CC1 = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@captures = common dso_local global i8** null, align 8
@captureCounter = common dso_local global i32 0, align 4
@FanCapture = common dso_local global i32 0, align 4
@LocalTime = common dso_local global i32 0, align 4
@FanLastIrq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM3_IRQHandler() #0 {
  %1 = load i32, i32* @TIM3, align 4
  %2 = load i32, i32* @TIM_IT_CC1, align 4
  %3 = call i64 @TIM_GetITStatus(i32 %1, i32 %2)
  %4 = load i64, i64* @SET, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %47

6:                                                ; preds = %0
  %7 = load i32, i32* @TIM3, align 4
  %8 = call i8* @TIM_GetCapture1(i32 %7)
  %9 = load i8**, i8*** @captures, align 8
  %10 = load i32, i32* @captureCounter, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @captureCounter, align 4
  %12 = srem i32 %10, 32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13
  store i8* %8, i8** %14, align 8
  %15 = load i32, i32* @TIM3, align 4
  %16 = load i32, i32* @TIM_IT_CC1, align 4
  %17 = call i32 @TIM_ClearITPendingBit(i32 %15, i32 %16)
  %18 = load i32, i32* @TIM3_IRQHandler.CaptureNumber, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @TIM3, align 4
  %22 = call i8* @TIM_GetCapture1(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* @TIM3_IRQHandler.inval1, align 4
  store i32 1, i32* @TIM3_IRQHandler.CaptureNumber, align 4
  br label %45

24:                                               ; preds = %6
  %25 = load i32, i32* @TIM3_IRQHandler.CaptureNumber, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* @TIM3, align 4
  %29 = call i8* @TIM_GetCapture1(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @TIM3_IRQHandler.inval2, align 4
  %31 = load i32, i32* @TIM3_IRQHandler.inval2, align 4
  %32 = load i32, i32* @TIM3_IRQHandler.inval1, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @TIM3_IRQHandler.inval1, align 4
  %36 = sub nsw i32 65535, %35
  %37 = load i32, i32* @TIM3_IRQHandler.inval2, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* @FanCapture, align 4
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @TIM3_IRQHandler.inval2, align 4
  %41 = load i32, i32* @TIM3_IRQHandler.inval1, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* @FanCapture, align 4
  br label %43

43:                                               ; preds = %39, %34
  store i32 0, i32* @TIM3_IRQHandler.CaptureNumber, align 4
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* @LocalTime, align 4
  store i32 %46, i32* @FanLastIrq, align 4
  br label %47

47:                                               ; preds = %45, %0
  ret void
}

declare dso_local i64 @TIM_GetITStatus(i32, i32) #1

declare dso_local i8* @TIM_GetCapture1(i32) #1

declare dso_local i32 @TIM_ClearITPendingBit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
