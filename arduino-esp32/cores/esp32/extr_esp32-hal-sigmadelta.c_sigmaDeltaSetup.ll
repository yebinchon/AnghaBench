; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-sigmadelta.c_sigmaDeltaSetup.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-sigmadelta.c_sigmaDeltaSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@sigmaDeltaSetup.tHasStarted = internal global i32 0, align 4
@_sd_sys_lock = common dso_local global i32 0, align 4
@SIGMADELTA = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@_on_apb_change = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigmaDeltaSetup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 7
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* @sigmaDeltaSetup.tHasStarted, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  store i32 1, i32* @sigmaDeltaSetup.tHasStarted, align 4
  %16 = call i32 (...) @xSemaphoreCreateMutex()
  store i32 %16, i32* @_sd_sys_lock, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 (...) @getApbFrequency()
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 256
  %22 = sdiv i32 %19, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 255, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = call i32 (...) @SD_MUTEX_LOCK()
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SIGMADELTA, i32 0, i32 1), align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SIGMADELTA, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @SIGMADELTA, i32 0, i32 0, i32 0), align 8
  %35 = call i32 (...) @SD_MUTEX_UNLOCK()
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @_on_apb_change, align 4
  %41 = call i32 @addApbChangeCallback(i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %44, 256
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %27, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @getApbFrequency(...) #1

declare dso_local i32 @SD_MUTEX_LOCK(...) #1

declare dso_local i32 @SD_MUTEX_UNLOCK(...) #1

declare dso_local i32 @addApbChangeCallback(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
