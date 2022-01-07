; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@PERIPH_PWM0_MODULE = common dso_local global i64 0, align 8
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM_CLK_PRESCL = common dso_local global i32 0, align 4
@MCPWM = common dso_local global %struct.TYPE_15__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_init(i64 %0, i64 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @MCPWM_CHECK(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MCPWM_TIMER_MAX, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @MCPWM_TIMER_ERROR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @MCPWM_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @PERIPH_PWM0_MODULE, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @periph_module_enable(i64 %23)
  %25 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %26 = load i32, i32* @MCPWM_CLK_PRESCL, align 4
  %27 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %27, i64 %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mcpwm_set_frequency(i64 %33, i64 %34, i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %42, i64 %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %41, i32* %51, align 4
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mcpwm_set_duty(i64 %52, i64 %53, i32 0, i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mcpwm_set_duty(i64 %58, i64 %59, i32 1, i32 %62)
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mcpwm_set_duty_type(i64 %64, i64 %65, i32 0, i32 %68)
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mcpwm_set_duty_type(i64 %70, i64 %71, i32 1, i32 %74)
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @mcpwm_start(i64 %76, i64 %77)
  %79 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %79, i64 %80
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %85, i64 %86
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %91, i64 %92
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 2, i32* %96, align 4
  %97 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %97, i64 %98
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %103, i64 %104
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @MCPWM, align 8
  %110 = load i64, i64* %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %109, i64 %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %116 = load i32, i32* @ESP_OK, align 4
  ret i32 %116
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @periph_module_enable(i64) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @mcpwm_set_frequency(i64, i64, i32) #1

declare dso_local i32 @mcpwm_set_duty(i64, i64, i32, i32) #1

declare dso_local i32 @mcpwm_set_duty_type(i64, i64, i32, i32) #1

declare dso_local i32 @mcpwm_start(i64, i64) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
