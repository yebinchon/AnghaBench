; ModuleID = '/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_daq_min_distance_transform.c'
source_filename = "/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_daq_min_distance_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, float* }

@CCV_32F = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@for_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daq_min_distance_transform(%struct.TYPE_8__* %0, %struct.TYPE_8__** %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CCV_32F, align 4
  %29 = load i32, i32* @CCV_C1, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_8__* @ccv_dense_matrix_new(i32 %24, i32 %27, i32 %30, i32 0, i32 0)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %13, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CCV_32F, align 4
  %39 = load i32, i32* @CCV_C1, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.TYPE_8__* @ccv_dense_matrix_new(i32 %34, i32 %37, i32 %40, i32 0, i32 0)
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %14, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %15, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load float*, float** %49, align 8
  store float* %50, float** %16, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @for_block, align 4
  %55 = call i32 @ccv_matrix_getter(i32 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = call i64 @calloc(i32 %62, i32 4)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %19, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = call i64 @calloc(i32 %71, i32 4)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %20, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  store float* %77, float** %16, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load float*, float** %80, align 8
  store float* %81, float** %21, align 8
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %119, %6
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %82
  %89 = load float*, float** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %89, i64 %95
  %97 = load float*, float** %21, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %97, i64 %103
  %105 = load i32*, i32** %19, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load double, double* %11, align 8
  %117 = load double, double* %9, align 8
  %118 = call i32 @dt_min1d(float* %96, float* %104, i32* %112, i32 1, i32 %115, double %116, double %117)
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %82

122:                                              ; preds = %82
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %151, %122
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load float*, float** %21, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float*, float** %16, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load i32*, i32** %20, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load double, double* %12, align 8
  %149 = load double, double* %10, align 8
  %150 = call i32 @dt_min1d(float* %133, float* %137, i32* %141, i32 %144, i32 %147, double %148, double %149)
  br label %151

151:                                              ; preds = %129
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %123

154:                                              ; preds = %123
  %155 = load i32*, i32** %19, align 8
  %156 = call i32 @free(i32* %155)
  %157 = load i32*, i32** %20, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %160 = call i32 @ccv_matrix_free(%struct.TYPE_8__* %159)
  ret void
}

declare dso_local %struct.TYPE_8__* @ccv_dense_matrix_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_getter(i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @dt_min1d(float*, float*, i32*, i32, i32, double, double) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
