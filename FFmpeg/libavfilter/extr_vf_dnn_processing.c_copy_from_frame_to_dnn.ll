; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dnn_processing.c_copy_from_frame_to_dnn.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dnn_processing.c_copy_from_frame_to_dnn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, float* }
%struct.TYPE_6__ = type { i64, i32, i32, i32*, float** }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@DNN_FLOAT = common dso_local global i64 0, align 8
@DNN_UINT8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @copy_from_frame_to_dnn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_frame_to_dnn(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i1 [ true, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @av_assert0(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DNN_FLOAT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  store float* %38, float** %5, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %89, %35
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %85, %45
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 3
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %54, %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = mul nsw i32 %67, 3
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load float**, float*** %72, align 8
  %74 = getelementptr inbounds float*, float** %73, i64 0
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fdiv float %79, 2.550000e+02
  %81 = load float*, float** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  br label %85

85:                                               ; preds = %53
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %46

88:                                               ; preds = %46
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %39

92:                                               ; preds = %39
  br label %157

93:                                               ; preds = %26
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load float*, float** %95, align 8
  store float* %96, float** %10, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DNN_UINT8, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @av_assert0(i32 %102)
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %153, %93
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %156

110:                                              ; preds = %104
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %149, %110
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 3
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %152

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %119, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = mul nsw i32 %132, 3
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load float**, float*** %137, align 8
  %139 = getelementptr inbounds float*, float** %138, i64 0
  %140 = load float*, float** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load float*, float** %10, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float %144, float* %148, align 4
  br label %149

149:                                              ; preds = %118
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %111

152:                                              ; preds = %111
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %104

156:                                              ; preds = %104
  br label %157

157:                                              ; preds = %156, %92
  ret i32 0
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
