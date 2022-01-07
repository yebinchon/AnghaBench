; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_basic_config/main/extr_mcpwm_basic_config_example.c_disp_captured_signal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/mcpwm/mcpwm_basic_config/main/extr_mcpwm_basic_config_example.c_disp_captured_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@CAP_SIG_NUM = common dso_local global i32 0, align 4
@cap_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@MCPWM_SELECT_CAP0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"CAP0 : %d us\0A\00", align 1
@MCPWM_SELECT_CAP1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"CAP1 : %d us\0A\00", align 1
@MCPWM_SELECT_CAP2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"CAP2 : %d us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @disp_captured_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disp_captured_signal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @CAP_SIG_NUM, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @CAP_SIG_NUM, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %1, %123
  %19 = load i32, i32* @cap_queue, align 4
  %20 = load i32, i32* @portMAX_DELAY, align 4
  %21 = call i32 @xQueueReceive(i32 %19, %struct.TYPE_3__* %5, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MCPWM_SELECT_CAP0, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 10000
  %43 = sext i32 %42 to i64
  %44 = call i32 (...) @rtc_clk_apb_freq_get()
  %45 = sext i32 %44 to i64
  %46 = sdiv i64 10000000000, %45
  %47 = mul nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %26, %18
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MCPWM_SELECT_CAP1, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 10000
  %77 = sext i32 %76 to i64
  %78 = call i32 (...) @rtc_clk_apb_freq_get()
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 10000000000, %79
  %81 = mul nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %60, %55
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MCPWM_SELECT_CAP2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 10000
  %111 = sext i32 %110 to i64
  %112 = call i32 (...) @rtc_clk_apb_freq_get()
  %113 = sext i32 %112 to i64
  %114 = sdiv i64 10000000000, %113
  %115 = mul nsw i64 %111, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %94, %89
  br label %18
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xQueueReceive(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_get(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
