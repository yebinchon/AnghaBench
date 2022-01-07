; ModuleID = '/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_rosenbrock.c'
source_filename = "/home/carl/AnghaBench/ccv/test/unit/extr_numeric.tests.c_rosenbrock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, double*, %struct.TYPE_7__*, i8*)* @rosenbrock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rosenbrock(%struct.TYPE_7__* %0, double* %1, %struct.TYPE_7__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store double* %1, double** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  store double 0.000000e+00, double* %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load double*, double** %21, align 8
  store double* %22, double** %12, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %81, %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %84

26:                                               ; preds = %23
  %27 = load double*, double** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %27, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load double*, double** %12, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double*, double** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fmul double %37, %42
  %44 = fsub double %32, %43
  %45 = fmul double 1.000000e+02, %44
  %46 = load double*, double** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %46, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load double*, double** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fmul double %56, %61
  %63 = fsub double %51, %62
  %64 = fmul double %45, %63
  %65 = load double*, double** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fsub double 1.000000e+00, %69
  %71 = load double*, double** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fsub double 1.000000e+00, %75
  %77 = fmul double %70, %76
  %78 = fadd double %64, %77
  %79 = load double, double* %11, align 8
  %80 = fadd double %79, %78
  store double %80, double* %11, align 8
  br label %81

81:                                               ; preds = %26
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %23

84:                                               ; preds = %23
  %85 = load double, double* %11, align 8
  %86 = load double*, double** %6, align 8
  store double %85, double* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load double*, double** %89, align 8
  store double* %90, double** %13, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = call i32 @ccv_zero(%struct.TYPE_7__* %91)
  %93 = load double*, double** %13, align 8
  %94 = getelementptr inbounds double, double* %93, i64 1
  store double 0.000000e+00, double* %94, align 8
  %95 = load double*, double** %13, align 8
  %96 = getelementptr inbounds double, double* %95, i64 0
  store double 0.000000e+00, double* %96, align 8
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %138, %84
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %141

100:                                              ; preds = %97
  %101 = load double*, double** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fmul double -4.000000e+02, %105
  %107 = load double*, double** %12, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %107, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %12, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double*, double** %12, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %118, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fmul double %117, %122
  %124 = fsub double %112, %123
  %125 = fmul double %106, %124
  %126 = load double*, double** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %126, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fsub double 1.000000e+00, %130
  %132 = fmul double 2.000000e+00, %131
  %133 = fsub double %125, %132
  %134 = load double*, double** %13, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, double* %134, i64 %136
  store double %133, double* %137, align 8
  br label %138

138:                                              ; preds = %100
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %97

141:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  br label %142

142:                                              ; preds = %172, %141
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  %146 = load double*, double** %12, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %12, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %151, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load double*, double** %12, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %157, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fmul double %156, %162
  %164 = fsub double %150, %163
  %165 = fmul double 2.000000e+02, %164
  %166 = load double*, double** %13, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, double* %166, i64 %168
  %170 = load double, double* %169, align 8
  %171 = fadd double %170, %165
  store double %171, double* %169, align 8
  br label %172

172:                                              ; preds = %145
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %142

175:                                              ; preds = %142
  ret i32 0
}

declare dso_local i32 @ccv_zero(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
