; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_task_wdt.c_esp_task_wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_8__* null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ETS_TG0_WDT_LEVEL_INTR_SOURCE = common dso_local global i32 0, align 4
@task_wdt_isr = common dso_local global i32 0, align 4
@PERIPH_TIMG0_MODULE = common dso_local global i32 0, align 4
@TIMG_WDT_WKEY_VALUE = common dso_local global i8* null, align 8
@TIMERG0 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TIMG_WDT_STG_SEL_INT = common dso_local global i32 0, align 4
@TIMG_WDT_STG_SEL_RESET_SYSTEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = call %struct.TYPE_8__* @calloc(i32 1, i32 4)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** @twdt_config, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %14 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %12, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ETS_TG0_WDT_LEVEL_INTR_SOURCE, align 4
  %25 = load i32, i32* @task_wdt_isr, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = call i32 @esp_intr_alloc(i32 %24, i32 0, i32 %25, i32* null, i32* %27)
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = load i32, i32* @PERIPH_TIMG0_MODULE, align 4
  %31 = call i32 @periph_module_enable(i32 %30)
  %32 = load i8*, i8** @TIMG_WDT_WKEY_VALUE, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 3), align 8
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 0), align 8
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 2), align 8
  %33 = load i32, i32* @TIMG_WDT_STG_SEL_INT, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 5), align 4
  %34 = load i32, i32* @TIMG_WDT_STG_SEL_RESET_SYSTEM, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 4), align 8
  store i32 40000, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 5, i32 0), align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2000
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4000
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 2), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 3), align 8
  br label %60

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @TIMG_WDT_WKEY_VALUE, align 8
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 3), align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 2000
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 0), align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @twdt_config, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 4000
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 4, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 2), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG0, i32 0, i32 3), align 8
  br label %60

60:                                               ; preds = %43, %8
  %61 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %62 = load i32, i32* @ESP_OK, align 4
  ret i32 %62
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
