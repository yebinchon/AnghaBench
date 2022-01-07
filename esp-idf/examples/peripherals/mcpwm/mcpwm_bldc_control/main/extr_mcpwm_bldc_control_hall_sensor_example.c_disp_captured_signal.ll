; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_bldc_control/main/extr_mcpwm_bldc_control_hall_sensor_example.c_disp_captured_signal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_bldc_control/main/extr_mcpwm_bldc_control_hall_sensor_example.c_disp_captured_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@cap_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP0 = common dso_local global i64 0, align 8
@MCPWM_SELECT_CAP1 = common dso_local global i64 0, align 8
@MCPWM_SELECT_CAP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @disp_captured_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disp_captured_signal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i64 @malloc(i32 4)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = call i64 @malloc(i32 4)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %1, %103
  %11 = load i32, i32* @cap_queue, align 4
  %12 = load i32, i32* @portMAX_DELAY, align 4
  %13 = call i32 @xQueueReceive(i32 %11, %struct.TYPE_3__* %5, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MCPWM_SELECT_CAP0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 10000
  %35 = sext i32 %34 to i64
  %36 = call i32 (...) @rtc_clk_apb_freq_get()
  %37 = sext i32 %36 to i64
  %38 = sdiv i64 10000000000, %37
  %39 = mul nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %18, %10
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MCPWM_SELECT_CAP1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 10000
  %65 = sext i32 %64 to i64
  %66 = call i32 (...) @rtc_clk_apb_freq_get()
  %67 = sext i32 %66 to i64
  %68 = sdiv i64 10000000000, %67
  %69 = mul nsw i64 %65, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %48, %43
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MCPWM_SELECT_CAP2, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 10000
  %95 = sext i32 %94 to i64
  %96 = call i32 (...) @rtc_clk_apb_freq_get()
  %97 = sext i32 %96 to i64
  %98 = sdiv i64 10000000000, %97
  %99 = mul nsw i64 %95, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %78, %73
  br label %10
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xQueueReceive(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
