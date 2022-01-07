; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_disp_captured_signal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_pwm.c_disp_captured_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CAP_SIG_NUM = common dso_local global i32 0, align 4
@cap_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"CAP0 : %d us\0A\00", align 1
@cap0_times = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"CAP1 : %d us\0A\00", align 1
@cap1_times = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"CAP2 : %d us\0A\00", align 1
@cap2_times = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @disp_captured_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disp_captured_signal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @CAP_SIG_NUM, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* @CAP_SIG_NUM, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %134, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = load i32, i32* @cap_queue, align 4
  %24 = load i32, i32* @portMAX_DELAY, align 4
  %25 = call i32 @xQueueReceive(i32 %23, %struct.TYPE_3__* %5, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MCPWM_SELECT_CAP0, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 10000
  %47 = sext i32 %46 to i64
  %48 = call i32 (...) @rtc_clk_apb_freq_get()
  %49 = sext i32 %48 to i64
  %50 = sdiv i64 10000000000, %49
  %51 = mul nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @cap0_times, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @cap0_times, align 4
  br label %61

61:                                               ; preds = %30, %22
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MCPWM_SELECT_CAP1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 10000
  %83 = sext i32 %82 to i64
  %84 = call i32 (...) @rtc_clk_apb_freq_get()
  %85 = sext i32 %84 to i64
  %86 = sdiv i64 10000000000, %85
  %87 = mul nsw i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %3, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @cap1_times, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @cap1_times, align 4
  br label %97

97:                                               ; preds = %66, %61
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MCPWM_SELECT_CAP2, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = load i32*, i32** %3, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 10000
  %119 = sext i32 %118 to i64
  %120 = call i32 (...) @rtc_clk_apb_freq_get()
  %121 = sext i32 %120 to i64
  %122 = sdiv i64 10000000000, %121
  %123 = mul nsw i64 %119, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %3, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @cap2_times, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @cap2_times, align 4
  br label %133

133:                                              ; preds = %102, %97
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %19

137:                                              ; preds = %19
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @free(i32* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @free(i32* %140)
  %142 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xQueueReceive(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_get(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
