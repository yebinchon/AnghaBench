; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane2d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_plane2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, float** }

@CURRENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @filter_plane2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_plane2d(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sitofp i32 %51 to float
  store float %52, float* %10, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fsub float 1.000000e+00, %55
  store float %56, float* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load float**, float*** %58, align 8
  %60 = load i64, i64* @CURRENT, align 8
  %61 = getelementptr inbounds float*, float** %59, i64 %60
  %62 = load float*, float** %61, align 8
  store float* %62, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %158, %2
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %161

67:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %154, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %157

72:                                               ; preds = %68
  %73 = load float*, float** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %73, i64 %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = mul nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %80, i64 %85
  store float* %86, float** %17, align 8
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %150, %72
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %153

91:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %142, %91
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %145

96:                                               ; preds = %92
  %97 = load float*, float** %17, align 8
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %97, i64 %100
  %102 = load float, float* %101, align 4
  store float %102, float* %20, align 4
  %103 = load float*, float** %17, align 8
  %104 = load i32, i32* %16, align 4
  %105 = mul nsw i32 %104, 2
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %103, i64 %107
  %109 = load float, float* %108, align 4
  store float %109, float* %21, align 4
  %110 = load float, float* %20, align 4
  %111 = load float, float* %20, align 4
  %112 = fmul float %110, %111
  %113 = load float, float* %21, align 4
  %114 = load float, float* %21, align 4
  %115 = fmul float %113, %114
  %116 = fadd float %112, %115
  %117 = fadd float %116, 0x3CD203AFA0000000
  store float %117, float* %19, align 4
  %118 = load float, float* %11, align 4
  %119 = load float, float* %19, align 4
  %120 = load float, float* %10, align 4
  %121 = fsub float %119, %120
  %122 = load float, float* %19, align 4
  %123 = fdiv float %121, %122
  %124 = call float @FFMAX(float %118, float %123)
  store float %124, float* %18, align 4
  %125 = load float, float* %18, align 4
  %126 = load float*, float** %17, align 8
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %126, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %131, %125
  store float %132, float* %130, align 4
  %133 = load float, float* %18, align 4
  %134 = load float*, float** %17, align 8
  %135 = load i32, i32* %16, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %134, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fmul float %140, %133
  store float %141, float* %139, align 4
  br label %142

142:                                              ; preds = %96
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %92

145:                                              ; preds = %92
  %146 = load i32, i32* %9, align 4
  %147 = load float*, float** %17, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds float, float* %147, i64 %148
  store float* %149, float** %17, align 8
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %87

153:                                              ; preds = %87
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %68

157:                                              ; preds = %68
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %63

161:                                              ; preds = %63
  ret void
}

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
