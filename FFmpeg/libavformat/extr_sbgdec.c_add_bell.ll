; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_add_bell.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_add_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ws_intervals = type { i32 }
%struct.sbg_script = type { i32 }

@WS_SINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ws_intervals*, %struct.sbg_script*, i32, i32, i32, i32)* @add_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bell(%struct.ws_intervals* %0, %struct.sbg_script* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ws_intervals*, align 8
  %9 = alloca %struct.sbg_script*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [7 x [2 x i32]], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ws_intervals* %0, %struct.ws_intervals** %8, align 8
  store %struct.sbg_script* %1, %struct.sbg_script** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %14, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 2, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 4, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sdiv i32 %28, 4
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 8, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %13, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 1
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  store i32 16, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 1
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 0
  store i32 25, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %13, align 4
  %45 = sdiv i32 %44, 10
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 1
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  store i32 50, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %13, align 4
  %50 = sdiv i32 %49, 80
  store i32 %50, i32* %48, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 1
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 0
  store i32 75, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 0, i32* %53, align 4
  %54 = load %struct.sbg_script*, %struct.sbg_script** %9, align 8
  %55 = getelementptr inbounds %struct.sbg_script, %struct.sbg_script* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 20
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %101, %6
  %60 = load i32, i32* %15, align 4
  %61 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %14, i64 0, i64 0
  %62 = bitcast [2 x i32]* %61 to i32**
  %63 = call i32 @FF_ARRAY_ELEMS(i32** %62)
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %14, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %67, %74
  %76 = call i32 @FFMIN(i32 %66, i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load %struct.ws_intervals*, %struct.ws_intervals** %8, align 8
  %78 = load i32, i32* @WS_SINE, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %14, i64 0, i64 %85
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @add_interval(%struct.ws_intervals* %77, i32 %78, i32 3, i32 -1, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %65
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %7, align 4
  br label %105

94:                                               ; preds = %65
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* %14, i64 0, i64 %97
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %59

104:                                              ; preds = %59
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %92
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @add_interval(%struct.ws_intervals*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
