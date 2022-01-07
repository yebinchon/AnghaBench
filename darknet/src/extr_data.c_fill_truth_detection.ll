; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_detection.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float, i32 }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_truth_detection(i8* %0, i32 %1, float* %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca [4096 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store float* %2, float** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %31 = call i32 @find_replace(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %34 = call i32 @find_replace(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %37 = call i32 @find_replace(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %40 = call i32 @find_replace(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %43 = call i32 @find_replace(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %46 = call i32 @find_replace(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %49 = call i32 @find_replace(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  store i32 0, i32* %20, align 4
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %51 = call %struct.TYPE_6__* @read_boxes(i8* %50, i32* %20)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %21, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @randomize_boxes(%struct.TYPE_6__* %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load float, float* %15, align 4
  %58 = load float, float* %16, align 4
  %59 = load float, float* %17, align 4
  %60 = load float, float* %18, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @correct_boxes(%struct.TYPE_6__* %55, i32 %56, float %57, float %58, float %59, float %60, i32 %61)
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %9
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %20, align 4
  br label %68

68:                                               ; preds = %66, %9
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %69

69:                                               ; preds = %161, %68
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %164

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %75 = load i32, i32* %27, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load float, float* %78, align 4
  store float %79, float* %22, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load float, float* %84, align 4
  store float %85, float* %23, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %87 = load i32, i32* %27, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load float, float* %90, align 4
  store float %91, float* %24, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load float, float* %96, align 4
  store float %97, float* %25, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %99 = load i32, i32* %27, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %26, align 4
  %104 = load float, float* %24, align 4
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 1.000000e-03
  br i1 %106, label %111, label %107

107:                                              ; preds = %73
  %108 = load float, float* %25, align 4
  %109 = fpext float %108 to double
  %110 = fcmp olt double %109, 1.000000e-03
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %73
  %112 = load i32, i32* %28, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %28, align 4
  br label %161

114:                                              ; preds = %107
  %115 = load float, float* %22, align 4
  %116 = load float*, float** %12, align 8
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %28, align 4
  %119 = sub nsw i32 %117, %118
  %120 = mul nsw i32 %119, 5
  %121 = add nsw i32 %120, 0
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %116, i64 %122
  store float %115, float* %123, align 4
  %124 = load float, float* %23, align 4
  %125 = load float*, float** %12, align 8
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %28, align 4
  %128 = sub nsw i32 %126, %127
  %129 = mul nsw i32 %128, 5
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %125, i64 %131
  store float %124, float* %132, align 4
  %133 = load float, float* %24, align 4
  %134 = load float*, float** %12, align 8
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %28, align 4
  %137 = sub nsw i32 %135, %136
  %138 = mul nsw i32 %137, 5
  %139 = add nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %134, i64 %140
  store float %133, float* %141, align 4
  %142 = load float, float* %25, align 4
  %143 = load float*, float** %12, align 8
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %28, align 4
  %146 = sub nsw i32 %144, %145
  %147 = mul nsw i32 %146, 5
  %148 = add nsw i32 %147, 3
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %143, i64 %149
  store float %142, float* %150, align 4
  %151 = load i32, i32* %26, align 4
  %152 = sitofp i32 %151 to float
  %153 = load float*, float** %12, align 8
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* %28, align 4
  %156 = sub nsw i32 %154, %155
  %157 = mul nsw i32 %156, 5
  %158 = add nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %153, i64 %159
  store float %152, float* %160, align 4
  br label %161

161:                                              ; preds = %114, %111
  %162 = load i32, i32* %27, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %27, align 4
  br label %69

164:                                              ; preds = %69
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %166 = call i32 @free(%struct.TYPE_6__* %165)
  ret void
}

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @read_boxes(i8*, i32*) #1

declare dso_local i32 @randomize_boxes(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @correct_boxes(%struct.TYPE_6__*, i32, float, float, float, float, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
