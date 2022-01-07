; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_read_channel_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_on2avc_read_channel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float**, i32, i32, i32*, i32*, i32* }

@ON2AVC_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @on2avc_read_channel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on2avc_read_channel_data(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @on2avc_decode_band_types(%struct.TYPE_7__* %15, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %141

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @on2avc_decode_band_scales(%struct.TYPE_7__* %22, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %141

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load float**, float*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float*, float** %31, i64 %33
  %35 = load float*, float** %34, align 8
  store float* %35, float** %12, align 8
  store i32 0, i32* %11, align 4
  %36 = load float*, float** %12, align 8
  %37 = load i32, i32* @ON2AVC_SUBFRAME_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(float* %36, i32 0, i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %137, %28
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %140

48:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %128, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %131

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %63, %70
  store i32 %71, i32* %13, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %55
  %84 = load i32, i32* %13, align 4
  %85 = load float*, float** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds float, float* %85, i64 %86
  store float* %87, float** %12, align 8
  br label %128

88:                                               ; preds = %55
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 9
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load float*, float** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @on2avc_decode_quads(%struct.TYPE_7__* %92, i32* %93, float* %94, i32 %95, i32 %96, i32 %105)
  br label %123

107:                                              ; preds = %88
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load float*, float** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @on2avc_decode_pairs(%struct.TYPE_7__* %108, i32* %109, float* %110, i32 %111, i32 %112, i32 %121)
  br label %123

123:                                              ; preds = %107, %91
  %124 = load i32, i32* %13, align 4
  %125 = load float*, float** %12, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds float, float* %125, i64 %126
  store float* %127, float** %12, align 8
  br label %128

128:                                              ; preds = %123, %83
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %49

131:                                              ; preds = %49
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %42

140:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %26, %19
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @on2avc_decode_band_types(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @on2avc_decode_band_scales(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @on2avc_decode_quads(%struct.TYPE_7__*, i32*, float*, i32, i32, i32) #1

declare dso_local i32 @on2avc_decode_pairs(%struct.TYPE_7__*, i32*, float*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
