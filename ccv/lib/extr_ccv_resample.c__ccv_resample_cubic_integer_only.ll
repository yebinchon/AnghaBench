; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_cubic_integer_only.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_cubic_integer_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@CCV_8U = common dso_local global i32 0, align 4
@CCV_32S = common dso_local global i64 0, align 8
@CCV_64S = common dso_local global i64 0, align 8
@ccv_matrix_setter_getter_integer_only = common dso_local global i32 0, align 4
@ccv_matrix_setter_integer_only = common dso_local global i32 0, align 4
@for_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*)* @_ccv_resample_cubic_integer_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_resample_cubic_integer_only(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @CCV_GET_DATA_TYPE(i32 %22)
  %24 = load i32, i32* @CCV_8U, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @CCV_GET_DATA_TYPE(i32 %30)
  %32 = load i64, i64* @CCV_32S, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @CCV_GET_DATA_TYPE(i32 %37)
  %39 = load i64, i64* @CCV_64S, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %34, %27, %2
  %42 = phi i1 [ true, %27 ], [ true, %2 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CCV_GET_CHANNEL(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CCV_8U, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i64, i64* @CCV_32S, align 8
  br label %62

57:                                               ; preds = %41
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i64 [ %56, %55 ], [ %61, %57 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @alloca(i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %10, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to float
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %82, %86
  store float %87, float* %11, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %114, %62
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = sitofp i32 %95 to double
  %97 = fadd double %96, 5.000000e-01
  %98 = load float, float* %11, align 4
  %99 = fpext float %98 to double
  %100 = fmul double %97, %99
  %101 = fsub double %100, 5.000000e-01
  %102 = fptrunc double %101 to float
  store float %102, float* %12, align 4
  %103 = load float, float* %12, align 4
  %104 = fptosi float %103 to i32
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load float, float* %12, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @_ccv_init_cubic_integer_coeffs(i32 %104, i32 %107, float %108, i32* %112)
  br label %114

114:                                              ; preds = %94
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %88

117:                                              ; preds = %88
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load float, float* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load float, float* %122, align 8
  %124 = fdiv float %120, %123
  store float %124, float* %13, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @CCV_GET_DATA_TYPE_SIZE(i32 %130)
  %132 = mul nsw i32 %129, %131
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = mul nsw i32 %133, 4
  %135 = call i64 @alloca(i32 %134)
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %15, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %16, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %17, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* @ccv_matrix_setter_getter_integer_only, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @ccv_matrix_setter_integer_only, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* @for_block, align 4
  %157 = call i32 @ccv_matrix_getter(i64 %148, i32 %149, i32 %150, i32 %151, i64 %155, i32 %156)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @_ccv_init_cubic_integer_coeffs(i32, i32, float, i32*) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i32) #1

declare dso_local i32 @ccv_matrix_getter(i64, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
