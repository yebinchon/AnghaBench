; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/extr_app_trace_util.c_esp_apptrace_tmo_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/extr_app_trace_util.c_esp_apptrace_tmo_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@ESP_APPTRACE_TMO_INFINITE = common dso_local global i64 0, align 8
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_apptrace_tmo_check(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i32 (...) @esp_clk_cpu_freq()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ESP_APPTRACE_TMO_INFINITE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = call i32 (...) @portGET_RUN_TIME_COUNTER_VALUE()
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub i32 %20, %23
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @ESP_APPTRACE_CPUTICKS2US(i32 %24, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 -1, %33
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @ESP_APPTRACE_CPUTICKS2US(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %30, %19
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* @ESP_OK, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @esp_clk_cpu_freq(...) #1

declare dso_local i32 @portGET_RUN_TIME_COUNTER_VALUE(...) #1

declare dso_local i8* @ESP_APPTRACE_CPUTICKS2US(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
