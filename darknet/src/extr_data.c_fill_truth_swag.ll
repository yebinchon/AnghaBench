; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_swag.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_swag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float, i32 }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_truth_swag(i8* %0, float* %1, i32 %2, i32 %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca [4096 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %29 = call i32 @find_replace(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %32 = call i32 @find_replace(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %35 = call i32 @find_replace(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %38 = call i32 @find_replace(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %41 = call i32 @find_replace(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  store i32 0, i32* %18, align 4
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %17, i64 0, i64 0
  %43 = call %struct.TYPE_6__* @read_boxes(i8* %42, i32* %18)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %19, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @randomize_boxes(%struct.TYPE_6__* %44, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load float, float* %13, align 4
  %50 = load float, float* %14, align 4
  %51 = load float, float* %15, align 4
  %52 = load float, float* %16, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @correct_boxes(%struct.TYPE_6__* %47, i32 %48, float %49, float %50, float %51, float %52, i32 %53)
  store i32 0, i32* %25, align 4
  br label %55

55:                                               ; preds = %143, %8
  %56 = load i32, i32* %25, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %25, align 4
  %61 = icmp slt i32 %60, 90
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i1 [ false, %55 ], [ %61, %59 ]
  br i1 %63, label %64, label %146

64:                                               ; preds = %62
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %66 = load i32, i32* %25, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  store float %70, float* %20, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %72 = load i32, i32* %25, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  store float %76, float* %21, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %78 = load i32, i32* %25, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load float, float* %81, align 4
  store float %82, float* %22, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %84 = load i32, i32* %25, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load float, float* %87, align 4
  store float %88, float* %23, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %90 = load i32, i32* %25, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %24, align 4
  %95 = load float, float* %22, align 4
  %96 = fpext float %95 to double
  %97 = fcmp olt double %96, 0.000000e+00
  br i1 %97, label %102, label %98

98:                                               ; preds = %64
  %99 = load float, float* %23, align 4
  %100 = fpext float %99 to double
  %101 = fcmp olt double %100, 0.000000e+00
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %64
  br label %143

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 4, %104
  %106 = load i32, i32* %25, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %26, align 4
  %108 = load float, float* %20, align 4
  %109 = load float*, float** %10, align 8
  %110 = load i32, i32* %26, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %26, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds float, float* %109, i64 %112
  store float %108, float* %113, align 4
  %114 = load float, float* %21, align 4
  %115 = load float*, float** %10, align 8
  %116 = load i32, i32* %26, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %26, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds float, float* %115, i64 %118
  store float %114, float* %119, align 4
  %120 = load float, float* %22, align 4
  %121 = load float*, float** %10, align 8
  %122 = load i32, i32* %26, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %26, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds float, float* %121, i64 %124
  store float %120, float* %125, align 4
  %126 = load float, float* %23, align 4
  %127 = load float*, float** %10, align 8
  %128 = load i32, i32* %26, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %26, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds float, float* %127, i64 %130
  store float %126, float* %131, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %103
  %136 = load float*, float** %10, align 8
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %24, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %136, i64 %140
  store float 1.000000e+00, float* %141, align 4
  br label %142

142:                                              ; preds = %135, %103
  br label %143

143:                                              ; preds = %142, %102
  %144 = load i32, i32* %25, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %25, align 4
  br label %55

146:                                              ; preds = %62
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %148 = call i32 @free(%struct.TYPE_6__* %147)
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
