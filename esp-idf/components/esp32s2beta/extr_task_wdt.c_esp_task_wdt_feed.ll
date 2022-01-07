; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_feed.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32 }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_6__* null, align 8
@VOID_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_task_wdt_feed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @VOID_RETURN, align 4
  %10 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %8, i32 %9)
  %11 = call i32 (...) @xTaskGetCurrentTaskHandle()
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call %struct.TYPE_5__* @find_task_in_twdt_list(i32 %12, i32* %2)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @reset_hw_timer()
  br label %23

23:                                               ; preds = %21, %16
  %24 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  br label %67

25:                                               ; preds = %0
  %26 = call %struct.TYPE_5__* @calloc(i32 1, i32 24)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @VOID_RETURN, align 4
  %31 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp eq %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  br label %65

47:                                               ; preds = %25
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twdt_config, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %4, align 8
  br label %51

51:                                               ; preds = %57, %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %4, align 8
  br label %51

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  br label %65

65:                                               ; preds = %61, %43
  %66 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  br label %67

67:                                               ; preds = %65, %23
  ret void
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local %struct.TYPE_5__* @find_task_in_twdt_list(i32, i32*) #1

declare dso_local i32 @reset_hw_timer(...) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
