; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_region.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, float, i32 }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_truth_region(i8* %0, float* %1, i32 %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store float* %1, float** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %33 = call i32 @find_replace(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %36 = call i32 @find_replace(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %39 = call i32 @find_replace(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %42 = call i32 @find_replace(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %45 = call i32 @find_replace(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %48 = call i32 @find_replace(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  store i32 0, i32* %20, align 4
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %50 = call %struct.TYPE_6__* @read_boxes(i8* %49, i32* %20)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %21, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %52 = load i32, i32* %20, align 4
  %53 = call i32 @randomize_boxes(%struct.TYPE_6__* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load float, float* %15, align 4
  %57 = load float, float* %16, align 4
  %58 = load float, float* %17, align 4
  %59 = load float, float* %18, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @correct_boxes(%struct.TYPE_6__* %54, i32 %55, float %56, float %57, float %58, float %59, i32 %60)
  store i32 0, i32* %27, align 4
  br label %62

62:                                               ; preds = %189, %9
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %192

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %68 = load i32, i32* %27, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 4
  store float %72, float* %22, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %74 = load i32, i32* %27, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  store float %78, float* %23, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %80 = load i32, i32* %27, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load float, float* %83, align 4
  store float %84, float* %24, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load float, float* %89, align 4
  store float %90, float* %25, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %26, align 4
  %97 = load float, float* %24, align 4
  %98 = fpext float %97 to double
  %99 = fcmp olt double %98, 5.000000e-03
  br i1 %99, label %104, label %100

100:                                              ; preds = %66
  %101 = load float, float* %25, align 4
  %102 = fpext float %101 to double
  %103 = fcmp olt double %102, 5.000000e-03
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %66
  br label %189

105:                                              ; preds = %100
  %106 = load float, float* %22, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sitofp i32 %107 to float
  %109 = fmul float %106, %108
  %110 = fptosi float %109 to i32
  store i32 %110, i32* %28, align 4
  %111 = load float, float* %23, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sitofp i32 %112 to float
  %114 = fmul float %111, %113
  %115 = fptosi float %114 to i32
  store i32 %115, i32* %29, align 4
  %116 = load float, float* %22, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sitofp i32 %117 to float
  %119 = fmul float %116, %118
  %120 = load i32, i32* %28, align 4
  %121 = sitofp i32 %120 to float
  %122 = fsub float %119, %121
  store float %122, float* %22, align 4
  %123 = load float, float* %23, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sitofp i32 %124 to float
  %126 = fmul float %123, %125
  %127 = load i32, i32* %29, align 4
  %128 = sitofp i32 %127 to float
  %129 = fsub float %126, %128
  store float %129, float* %23, align 4
  %130 = load i32, i32* %28, align 4
  %131 = load i32, i32* %29, align 4
  %132 = load i32, i32* %13, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 5, %135
  %137 = mul nsw i32 %134, %136
  store i32 %137, i32* %30, align 4
  %138 = load float*, float** %11, align 8
  %139 = load i32, i32* %30, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fcmp une float %142, 0.000000e+00
  br i1 %143, label %144, label %145

144:                                              ; preds = %105
  br label %189

145:                                              ; preds = %105
  %146 = load float*, float** %11, align 8
  %147 = load i32, i32* %30, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %30, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds float, float* %146, i64 %149
  store float 1.000000e+00, float* %150, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load float*, float** %11, align 8
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %26, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %155, i64 %159
  store float 1.000000e+00, float* %160, align 4
  br label %161

161:                                              ; preds = %154, %145
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %30, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %30, align 4
  %165 = load float, float* %22, align 4
  %166 = load float*, float** %11, align 8
  %167 = load i32, i32* %30, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %30, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds float, float* %166, i64 %169
  store float %165, float* %170, align 4
  %171 = load float, float* %23, align 4
  %172 = load float*, float** %11, align 8
  %173 = load i32, i32* %30, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %30, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds float, float* %172, i64 %175
  store float %171, float* %176, align 4
  %177 = load float, float* %24, align 4
  %178 = load float*, float** %11, align 8
  %179 = load i32, i32* %30, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %30, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds float, float* %178, i64 %181
  store float %177, float* %182, align 4
  %183 = load float, float* %25, align 4
  %184 = load float*, float** %11, align 8
  %185 = load i32, i32* %30, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %30, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds float, float* %184, i64 %187
  store float %183, float* %188, align 4
  br label %189

189:                                              ; preds = %161, %144, %104
  %190 = load i32, i32* %27, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %27, align 4
  br label %62

192:                                              ; preds = %62
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %194 = call i32 @free(%struct.TYPE_6__* %193)
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
