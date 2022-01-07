; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_task_wdt.c_esp_task_wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@twdt_spinlock = common dso_local global i32 0, align 4
@twdt_config = common dso_local global %struct.TYPE_3__* null, align 8
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ETS_TG0_WDT_LEVEL_INTR_SOURCE = common dso_local global i32 0, align 4
@task_wdt_isr = common dso_local global i32 0, align 4
@PERIPH_TIMG0_MODULE = common dso_local global i32 0, align 4
@TIMERG0 = common dso_local global i32 0, align 4
@TG0_WDT_TICK_US = common dso_local global i32 0, align 4
@TIMER_WDT_INT = common dso_local global i32 0, align 4
@TIMER_WDT_RESET_SYSTEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_task_wdt_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @portENTER_CRITICAL(i32* @twdt_spinlock)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  %9 = call %struct.TYPE_3__* @calloc(i32 1, i32 4)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** @twdt_config, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %14 = call i32 @ASSERT_EXIT_CRIT_RETURN(i32 %12, i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ETS_TG0_WDT_LEVEL_INTR_SOURCE, align 4
  %25 = load i32, i32* @task_wdt_isr, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = call i32 @esp_intr_alloc(i32 %24, i32 0, i32 %25, i32* null, i32* %27)
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  %30 = load i32, i32* @PERIPH_TIMG0_MODULE, align 4
  %31 = call i32 @periph_module_enable(i32 %30)
  %32 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 0)
  %33 = call i32 @timer_ll_wdt_init(i32* @TIMERG0)
  %34 = load i32, i32* @TG0_WDT_TICK_US, align 4
  %35 = call i32 @timer_ll_wdt_set_tick(i32* @TIMERG0, i32 %34)
  %36 = load i32, i32* @TIMER_WDT_INT, align 4
  %37 = call i32 @timer_ll_wdt_set_timeout_behavior(i32* @TIMERG0, i32 0, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 1000
  %42 = mul nsw i32 %41, 1000
  %43 = load i32, i32* @TG0_WDT_TICK_US, align 4
  %44 = sdiv i32 %42, %43
  %45 = call i32 @timer_ll_wdt_set_timeout(i32* @TIMERG0, i32 0, i32 %44)
  %46 = load i32, i32* @TIMER_WDT_RESET_SYSTEM, align 4
  %47 = call i32 @timer_ll_wdt_set_timeout_behavior(i32* @TIMERG0, i32 1, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 2, %50
  %52 = mul nsw i32 %51, 1000
  %53 = mul nsw i32 %52, 1000
  %54 = load i32, i32* @TG0_WDT_TICK_US, align 4
  %55 = sdiv i32 %53, %54
  %56 = call i32 @timer_ll_wdt_set_timeout(i32* @TIMERG0, i32 1, i32 %55)
  %57 = call i32 @timer_ll_wdt_set_enable(i32* @TIMERG0, i32 1)
  %58 = call i32 @timer_ll_wdt_feed(i32* @TIMERG0)
  %59 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 1)
  br label %90

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 0)
  %69 = call i32 @timer_ll_wdt_set_enable(i32* @TIMERG0, i32 0)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 1000
  %74 = mul nsw i32 %73, 1000
  %75 = load i32, i32* @TG0_WDT_TICK_US, align 4
  %76 = sdiv i32 %74, %75
  %77 = call i32 @timer_ll_wdt_set_timeout(i32* @TIMERG0, i32 0, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @twdt_config, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 2, %80
  %82 = mul nsw i32 %81, 1000
  %83 = mul nsw i32 %82, 1000
  %84 = load i32, i32* @TG0_WDT_TICK_US, align 4
  %85 = sdiv i32 %83, %84
  %86 = call i32 @timer_ll_wdt_set_timeout(i32* @TIMERG0, i32 1, i32 %85)
  %87 = call i32 @timer_ll_wdt_set_enable(i32* @TIMERG0, i32 1)
  %88 = call i32 @timer_ll_wdt_feed(i32* @TIMERG0)
  %89 = call i32 @timer_ll_wdt_set_protect(i32* @TIMERG0, i32 1)
  br label %90

90:                                               ; preds = %60, %8
  %91 = call i32 @portEXIT_CRITICAL(i32* @twdt_spinlock)
  %92 = load i32, i32* @ESP_OK, align 4
  ret i32 %92
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i32 @ASSERT_EXIT_CRIT_RETURN(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @timer_ll_wdt_set_protect(i32*, i32) #1

declare dso_local i32 @timer_ll_wdt_init(i32*) #1

declare dso_local i32 @timer_ll_wdt_set_tick(i32*, i32) #1

declare dso_local i32 @timer_ll_wdt_set_timeout_behavior(i32*, i32, i32) #1

declare dso_local i32 @timer_ll_wdt_set_timeout(i32*, i32, i32) #1

declare dso_local i32 @timer_ll_wdt_set_enable(i32*, i32) #1

declare dso_local i32 @timer_ll_wdt_feed(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
