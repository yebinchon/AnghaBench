; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_classic.c_ccv_otsu.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_classic.c_ccv_otsu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@CCV_32S = common dso_local global i32 0, align 4
@CCV_8U = common dso_local global i32 0, align 4
@for_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_otsu(%struct.TYPE_5__* %0, double* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CCV_32S, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CCV_8U, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %27, %3
  %35 = phi i1 [ true, %3 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i64 @alloca(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %44, i32 0, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @for_block, align 4
  %58 = call i32 @ccv_matrix_getter(i32 %56, i32 %57)
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %74, %34
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %64, %69
  %71 = sitofp i32 %70 to double
  %72 = load double, double* %11, align 8
  %73 = fadd double %72, %71
  store double %73, double* %11, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %59

77:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  store i32 %84, i32* %15, align 4
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %147, %77
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %150

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %147

100:                                              ; preds = %89
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %150

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %108, %113
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %12, align 8
  %117 = fadd double %116, %115
  store double %117, double* %12, align 8
  %118 = load double, double* %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %118, %120
  store double %121, double* %18, align 8
  %122 = load double, double* %11, align 8
  %123 = load double, double* %12, align 8
  %124 = fsub double %122, %123
  %125 = load i32, i32* %14, align 4
  %126 = sitofp i32 %125 to double
  %127 = fdiv double %124, %126
  store double %127, double* %19, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sitofp i32 %130 to double
  %132 = load double, double* %18, align 8
  %133 = load double, double* %19, align 8
  %134 = fsub double %132, %133
  %135 = fmul double %131, %134
  %136 = load double, double* %18, align 8
  %137 = load double, double* %19, align 8
  %138 = fsub double %136, %137
  %139 = fmul double %135, %138
  store double %139, double* %20, align 8
  %140 = load double, double* %20, align 8
  %141 = load double, double* %16, align 8
  %142 = fcmp ogt double %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %107
  %144 = load double, double* %20, align 8
  store double %144, double* %16, align 8
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %17, align 4
  br label %146

146:                                              ; preds = %143, %107
  br label %147

147:                                              ; preds = %146, %99
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %85

150:                                              ; preds = %106, %85
  %151 = load double*, double** %5, align 8
  %152 = icmp ne double* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load double, double* %16, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sitofp i32 %155 to double
  %157 = fdiv double %154, %156
  %158 = load i32, i32* %15, align 4
  %159 = sitofp i32 %158 to double
  %160 = fdiv double %157, %159
  %161 = load double*, double** %5, align 8
  store double %160, double* %161, align 8
  br label %162

162:                                              ; preds = %153, %150
  %163 = load i32, i32* %17, align 4
  ret i32 %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ccv_matrix_getter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
