; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_source_dummy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-video-processor/extr_video_processor_v4l2.c_source_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@frame_cap = common dso_local global i32* null, align 8
@M_PI = common dso_local global i32 0, align 4
@video_buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@dummy_pos = common dso_local global float 0.000000e+00, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@video_half_feed_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @source_dummy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** @frame_cap, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* @M_PI, align 4
  %16 = sdiv i32 %15, 64
  %17 = sitofp i32 %16 to float
  store float %17, float* %12, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %19 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %24 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load float, float* %12, align 4
  %30 = load float, float* @dummy_pos, align 4
  %31 = fadd float %30, %29
  store float %31, float* @dummy_pos, align 4
  %32 = load float, float* @dummy_pos, align 4
  %33 = call i32 @sinf(float %32)
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 2
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %39 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %28
  %42 = load i32, i32* @video_half_feed_rate, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* @video_half_feed_rate, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load float, float* @dummy_pos, align 4
  %47 = call i32 @sinf(float %46)
  %48 = add nsw i32 %47, 1
  %49 = sdiv i32 %48, 2
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load float, float* %12, align 4
  %53 = load float, float* @dummy_pos, align 4
  %54 = fadd float %53, %52
  store float %54, float* @dummy_pos, align 4
  %55 = load float, float* @dummy_pos, align 4
  %56 = call i32 @sinf(float %55)
  %57 = add nsw i32 %56, 1
  %58 = sdiv i32 %57, 2
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %45, %28
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %125, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %64, %65
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = srem i32 %70, %71
  %73 = sub nsw i32 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  %76 = sitofp i32 %75 to float
  %77 = fdiv float %76, 1.000000e+01
  %78 = call i32 @clamp_float(float %77, i32 -1, i32 1)
  %79 = add nsw i32 %78, 1
  %80 = sdiv i32 %79, 2
  %81 = sitofp i32 %80 to float
  store float %81, float* %13, align 4
  %82 = load float, float* %13, align 4
  %83 = fmul float %82, 2.240000e+02
  %84 = fadd float 1.600000e+01, %83
  %85 = fptosi float %84 to i32
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load float, float* %13, align 4
  %89 = fmul float %88, 2.240000e+02
  %90 = fadd float 1.600000e+01, %89
  %91 = fptosi float %90 to i32
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %91, i32* %93, align 4
  %94 = load float, float* %13, align 4
  %95 = fmul float %94, 2.240000e+02
  %96 = fadd float 1.600000e+01, %95
  %97 = fptosi float %96 to i32
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %3, align 4
  %103 = srem i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %68
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 2
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %113 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %6, align 4
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %118
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %68
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32* %129, i32** %11, align 8
  br label %62

130:                                              ; preds = %62
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %132 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  store i64 %135, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  br label %143

136:                                              ; preds = %130
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  %138 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* @V4L2_FIELD_TOP, align 8
  store i64 %141, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @video_buf, i32 0, i32 0), align 8
  br label %142

142:                                              ; preds = %140, %136
  br label %143

143:                                              ; preds = %142, %134
  ret void
}

declare dso_local i32 @sinf(float) #1

declare dso_local i32 @clamp_float(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
