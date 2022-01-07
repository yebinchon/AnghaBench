; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_plot_channel_log.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showspectrum.c_plot_channel_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64, float** }

@VERTICAL = common dso_local global i64 0, align 8
@COMBINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32)* @plot_channel_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plot_channel_log(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %9, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %10, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VERTICAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  br label %48

44:                                               ; preds = %4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %43, %40 ], [ %47, %44 ]
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @color_range(%struct.TYPE_8__* %51, i32 %52, float* %14, float* %15, float* %16)
  store float 0.000000e+00, float* %13, align 4
  br label %54

54:                                               ; preds = %178, %48
  %55 = load float, float* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sitofp i32 %56 to float
  %58 = fcmp olt float %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %181

65:                                               ; preds = %63
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 0
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call float @bin_pos(i32 %67, i32 %68, i32 %71)
  store float %72, float* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call float @bin_pos(i32 %74, i32 %75, i32 %78)
  store float %79, float* %19, align 4
  %80 = load float, float* %19, align 4
  %81 = load float, float* %18, align 4
  %82 = fsub float %80, %81
  store float %82, float* %20, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 0
  %87 = call float @get_value(%struct.TYPE_10__* %83, i32 %84, i32 %86)
  store float %87, float* %21, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @FFMIN(i32 %91, i32 %93)
  %95 = call float @get_value(%struct.TYPE_10__* %88, i32 %89, i32 %94)
  store float %95, float* %22, align 4
  %96 = load float, float* %18, align 4
  store float %96, float* %23, align 4
  br label %97

97:                                               ; preds = %171, %65
  %98 = load float, float* %23, align 4
  %99 = load float, float* %19, align 4
  %100 = fcmp olt float %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load float, float* %13, align 4
  %103 = load float, float* %23, align 4
  %104 = fadd float %102, %103
  %105 = load float, float* %18, align 4
  %106 = fsub float %104, %105
  %107 = load i32, i32* %11, align 4
  %108 = sitofp i32 %107 to float
  %109 = fcmp olt float %106, %108
  br label %110

110:                                              ; preds = %101, %97
  %111 = phi i1 [ false, %97 ], [ %109, %101 ]
  br i1 %111, label %112, label %174

112:                                              ; preds = %110
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @COMBINED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load float, float* %13, align 4
  %120 = load float, float* %23, align 4
  %121 = fadd float %119, %120
  %122 = load float, float* %18, align 4
  %123 = fsub float %121, %122
  br label %135

124:                                              ; preds = %112
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %11, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sitofp i32 %127 to float
  %129 = load float, float* %13, align 4
  %130 = fadd float %128, %129
  %131 = load float, float* %23, align 4
  %132 = fadd float %130, %131
  %133 = load float, float* %18, align 4
  %134 = fsub float %132, %133
  br label %135

135:                                              ; preds = %124, %118
  %136 = phi float [ %123, %118 ], [ %134, %124 ]
  store float %136, float* %24, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  %139 = load float**, float*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %139, i64 %141
  %143 = load float*, float** %142, align 8
  %144 = load float, float* %24, align 4
  %145 = call i32 @lrintf(float %144)
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @FFMIN(i32 %145, i32 %147)
  %149 = mul nsw i32 3, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %143, i64 %150
  store float* %151, float** %25, align 8
  %152 = load float, float* %23, align 4
  %153 = load float, float* %18, align 4
  %154 = fsub float %152, %153
  %155 = load float, float* %20, align 4
  %156 = fdiv float %154, %155
  store float %156, float* %26, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = load float, float* %14, align 4
  %159 = load float, float* %15, align 4
  %160 = load float, float* %16, align 4
  %161 = load float, float* %26, align 4
  %162 = load float, float* %22, align 4
  %163 = fmul float %161, %162
  %164 = load float, float* %26, align 4
  %165 = fsub float 1.000000e+00, %164
  %166 = load float, float* %21, align 4
  %167 = fmul float %165, %166
  %168 = fadd float %163, %167
  %169 = load float*, float** %25, align 8
  %170 = call i32 @pick_color(%struct.TYPE_8__* %157, float %158, float %159, float %160, float %168, float* %169)
  br label %171

171:                                              ; preds = %135
  %172 = load float, float* %23, align 4
  %173 = fadd float %172, 1.000000e+00
  store float %173, float* %23, align 4
  br label %97

174:                                              ; preds = %110
  %175 = load float, float* %20, align 4
  %176 = load float, float* %13, align 4
  %177 = fadd float %176, %175
  store float %177, float* %13, align 4
  br label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %54

181:                                              ; preds = %63
  ret i32 0
}

declare dso_local i32 @color_range(%struct.TYPE_8__*, i32, float*, float*, float*) #1

declare dso_local float @bin_pos(i32, i32, i32) #1

declare dso_local float @get_value(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @lrintf(float) #1

declare dso_local i32 @pick_color(%struct.TYPE_8__*, float, float, float, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
