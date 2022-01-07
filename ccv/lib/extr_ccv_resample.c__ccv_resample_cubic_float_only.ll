; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_cubic_float_only.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_cubic_float_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@CCV_32F = common dso_local global i64 0, align 8
@CCV_64F = common dso_local global i64 0, align 8
@ccv_matrix_setter_getter_float_only = common dso_local global i32 0, align 4
@for_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*)* @_ccv_resample_cubic_float_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_resample_cubic_float_only(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CCV_GET_DATA_TYPE(i32 %20)
  %22 = load i64, i64* @CCV_32F, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CCV_GET_DATA_TYPE(i32 %27)
  %29 = load i64, i64* @CCV_64F, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %24, %2
  %32 = phi i1 [ true, %2 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CCV_GET_CHANNEL(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %43, %31
  %49 = phi i1 [ false, %31 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i64 @alloca(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %9, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to float
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sitofp i32 %66 to float
  %68 = fdiv float %63, %67
  store float %68, float* %10, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %95, %48
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = sitofp i32 %76 to double
  %78 = fadd double %77, 5.000000e-01
  %79 = load float, float* %10, align 4
  %80 = fpext float %79 to double
  %81 = fmul double %78, %80
  %82 = fsub double %81, 5.000000e-01
  %83 = fptrunc double %82 to float
  store float %83, float* %11, align 4
  %84 = load float, float* %11, align 4
  %85 = fptosi float %84 to i32
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load float, float* %11, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @_ccv_init_cubic_coeffs(i32 %85, i32 %88, float %89, i32* %93)
  br label %95

95:                                               ; preds = %75
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load float, float* %103, align 8
  %105 = fdiv float %101, %104
  store float %105, float* %12, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 4
  %110 = call i64 @alloca(i32 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %13, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %14, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %15, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ccv_matrix_setter_getter_float_only, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @for_block, align 4
  %128 = call i32 @ccv_matrix_getter(i32 %122, i32 %123, i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @_ccv_init_cubic_coeffs(i32, i32, float, i32*) #1

declare dso_local i32 @ccv_matrix_getter(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
