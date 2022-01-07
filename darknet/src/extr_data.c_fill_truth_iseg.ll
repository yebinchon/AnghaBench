; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_iseg.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_iseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { float* }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_truth_iseg(i8* %0, i32 %1, float* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4096 x i8], align 16
  %21 = alloca i32*, align 8
  %22 = alloca [32788 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_12__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_12__, align 8
  %30 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store float* %2, float** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 %9, i32* %19, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %33 = call i32 @find_replace(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %36 = call i32 @find_replace(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %39 = call i32 @find_replace(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %42 = call i32 @find_replace(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %45 = call i32 @find_replace(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %47, i32** %21, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %10
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %52 = call i32 @file_error(i8* %51)
  br label %53

53:                                               ; preds = %50, %10
  store i32 0, i32* %24, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call float* @make_image(i32 %54, i32 %55, i32 1)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store float* %56, float** %57, align 8
  br label %58

58:                                               ; preds = %147, %53
  %59 = load i32*, i32** %21, align 8
  %60 = getelementptr inbounds [32788 x i8], [32788 x i8]* %22, i64 0, i64 0
  %61 = call i32 @fscanf(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %23, i8* %60)
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  br i1 %68, label %69, label %158

69:                                               ; preds = %67
  store i32 0, i32* %27, align 4
  %70 = getelementptr inbounds [32788 x i8], [32788 x i8]* %22, i64 0, i64 0
  %71 = call i32* @read_intlist(i8* %70, i32* %27, i32 0)
  store i32* %71, i32** %28, align 8
  %72 = load i32*, i32** %28, align 8
  %73 = load i32, i32* %27, align 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %75 = load float*, float** %74, align 8
  %76 = call i32 @load_rle(float* %75, i32* %72, i32 %73)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %92 = load float*, float** %91, align 8
  %93 = call float* @rotate_crop_image(float* %92, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 %88, i32 %90)
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store float* %93, float** %94, align 8
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %69
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %99 = load float*, float** %98, align 8
  %100 = call i32 @flip_image(float* %99)
  br label %101

101:                                              ; preds = %97, %69
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %105 = load float*, float** %104, align 8
  %106 = call float* @resize_image(float* %105, i32 %102, i32 %103)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store float* %106, float** %107, align 8
  %108 = load i32, i32* %23, align 4
  %109 = sitofp i32 %108 to float
  %110 = load float*, float** %13, align 8
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = mul nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %110, i64 %117
  store float %109, float* %118, align 4
  store i32 0, i32* %25, align 4
  br label %119

119:                                              ; preds = %144, %101
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = mul nsw i32 %121, %122
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %127 = load float*, float** %126, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  %132 = load float*, float** %13, align 8
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %19, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = mul nsw i32 %133, %137
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %25, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %132, i64 %142
  store float %131, float* %143, align 4
  br label %144

144:                                              ; preds = %125
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %25, align 4
  br label %119

147:                                              ; preds = %119
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %24, align 4
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %151 = load float*, float** %150, align 8
  %152 = call i32 @free_image(float* %151)
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = call i32 @free_image(float* %154)
  %156 = load i32*, i32** %28, align 8
  %157 = call i32 @free(i32* %156)
  br label %58

158:                                              ; preds = %67
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load float*, float** %13, align 8
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %19, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %167, 1
  %169 = mul nsw i32 %164, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %163, i64 %170
  store float -1.000000e+00, float* %171, align 4
  br label %172

172:                                              ; preds = %162, %158
  %173 = load i32*, i32** %21, align 8
  %174 = call i32 @fclose(i32* %173)
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %176 = load float*, float** %175, align 8
  %177 = call i32 @free_image(float* %176)
  ret void
}

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local float* @make_image(i32, i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @load_rle(float*, i32*, i32) #1

declare dso_local float* @rotate_crop_image(float*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @flip_image(float*) #1

declare dso_local float* @resize_image(float*, i32, i32) #1

declare dso_local i32 @free_image(float*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
