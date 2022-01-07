; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_carrier_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_carrier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM_TIMER_MAX = common dso_local global i64 0, align 8
@MCPWM_TIMER_ERROR = common dso_local global i32 0, align 4
@mcpwm_spinlock = common dso_local global i32 0, align 4
@MCPWM_ONESHOT_MODE_EN = common dso_local global i64 0, align 8
@MCPWM = common dso_local global %struct.TYPE_9__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_carrier_init(i64 %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
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
  %21 = call i32 @portENTER_CRITICAL(i32* @mcpwm_spinlock)
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @mcpwm_carrier_enable(i64 %22, i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mcpwm_carrier_set_period(i64 %25, i64 %26, i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mcpwm_carrier_set_duty_cycle(i64 %31, i64 %32, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MCPWM_ONESHOT_MODE_EN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mcpwm_carrier_oneshot_mode_enable(i64 %43, i64 %44, i32 %47)
  br label %53

49:                                               ; preds = %3
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @mcpwm_carrier_oneshot_mode_disable(i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mcpwm_carrier_output_invert(i64 %54, i64 %55, i32 %58)
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @MCPWM, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = call i32 @portEXIT_CRITICAL(i32* @mcpwm_spinlock)
  %71 = load i32, i32* @ESP_OK, align 4
  ret i32 %71
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @mcpwm_carrier_enable(i64, i64) #1

declare dso_local i32 @mcpwm_carrier_set_period(i64, i64, i32) #1

declare dso_local i32 @mcpwm_carrier_set_duty_cycle(i64, i64, i32) #1

declare dso_local i32 @mcpwm_carrier_oneshot_mode_enable(i64, i64, i32) #1

declare dso_local i32 @mcpwm_carrier_oneshot_mode_disable(i64, i64) #1

declare dso_local i32 @mcpwm_carrier_output_invert(i64, i64, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
