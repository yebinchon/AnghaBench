; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_UI_DrawProportionalString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_drawtools.c_UI_DrawProportionalString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@UI_FORMATMASK = common dso_local global i32 0, align 4
@UI_DROPSHADOW = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@UI_INVERSE = common dso_local global i32 0, align 4
@UI_PULSE = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawProportionalString(i32 %0, i32 %1, i8* %2, i32 %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store double* %4, double** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call float @UI_ProportionalSizeScale(i32 %14)
  store float %15, float* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @UI_FORMATMASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %39 [
    i32 130, label %19
    i32 128, label %29
    i32 129, label %38
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = call float @UI_ProportionalStringWidth(i8* %20)
  %22 = load float, float* %13, align 4
  %23 = fmul float %21, %22
  %24 = fptosi float %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = call float @UI_ProportionalStringWidth(i8* %30)
  %32 = load float, float* %13, align 4
  %33 = fmul float %31, %32
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %5, %38
  br label %40

40:                                               ; preds = %39, %29, %19
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @UI_DROPSHADOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load double*, double** %11, align 8
  %47 = getelementptr inbounds double, double* %46, i64 2
  store double 0.000000e+00, double* %47, align 8
  %48 = load double*, double** %11, align 8
  %49 = getelementptr inbounds double, double* %48, i64 1
  store double 0.000000e+00, double* %49, align 8
  %50 = load double*, double** %11, align 8
  %51 = getelementptr inbounds double, double* %50, i64 0
  store double 0.000000e+00, double* %51, align 8
  %52 = load double*, double** %10, align 8
  %53 = getelementptr inbounds double, double* %52, i64 3
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %11, align 8
  %56 = getelementptr inbounds double, double* %55, i64 3
  store double %54, double* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i8*, i8** %8, align 8
  %62 = load double*, double** %11, align 8
  %63 = load float, float* %13, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %65 = call i32 @UI_DrawProportionalString2(i32 %58, i32 %60, i8* %61, double* %62, float %63, i32 %64)
  br label %66

66:                                               ; preds = %45, %40
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @UI_INVERSE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  %72 = load double*, double** %10, align 8
  %73 = getelementptr inbounds double, double* %72, i64 0
  %74 = load double, double* %73, align 8
  %75 = fmul double %74, 8.000000e-01
  %76 = load double*, double** %11, align 8
  %77 = getelementptr inbounds double, double* %76, i64 0
  store double %75, double* %77, align 8
  %78 = load double*, double** %10, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  %80 = load double, double* %79, align 8
  %81 = fmul double %80, 8.000000e-01
  %82 = load double*, double** %11, align 8
  %83 = getelementptr inbounds double, double* %82, i64 1
  store double %81, double* %83, align 8
  %84 = load double*, double** %10, align 8
  %85 = getelementptr inbounds double, double* %84, i64 2
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, 8.000000e-01
  %88 = load double*, double** %11, align 8
  %89 = getelementptr inbounds double, double* %88, i64 2
  store double %87, double* %89, align 8
  %90 = load double*, double** %10, align 8
  %91 = getelementptr inbounds double, double* %90, i64 3
  %92 = load double, double* %91, align 8
  %93 = load double*, double** %11, align 8
  %94 = getelementptr inbounds double, double* %93, i64 3
  store double %92, double* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load double*, double** %11, align 8
  %99 = load float, float* %13, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %101 = call i32 @UI_DrawProportionalString2(i32 %95, i32 %96, i8* %97, double* %98, float %99, i32 %100)
  br label %176

102:                                              ; preds = %66
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @UI_PULSE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %168

107:                                              ; preds = %102
  %108 = load double*, double** %10, align 8
  %109 = getelementptr inbounds double, double* %108, i64 0
  %110 = load double, double* %109, align 8
  %111 = fmul double %110, 8.000000e-01
  %112 = load double*, double** %11, align 8
  %113 = getelementptr inbounds double, double* %112, i64 0
  store double %111, double* %113, align 8
  %114 = load double*, double** %10, align 8
  %115 = getelementptr inbounds double, double* %114, i64 1
  %116 = load double, double* %115, align 8
  %117 = fmul double %116, 8.000000e-01
  %118 = load double*, double** %11, align 8
  %119 = getelementptr inbounds double, double* %118, i64 1
  store double %117, double* %119, align 8
  %120 = load double*, double** %10, align 8
  %121 = getelementptr inbounds double, double* %120, i64 2
  %122 = load double, double* %121, align 8
  %123 = fmul double %122, 8.000000e-01
  %124 = load double*, double** %11, align 8
  %125 = getelementptr inbounds double, double* %124, i64 2
  store double %123, double* %125, align 8
  %126 = load double*, double** %10, align 8
  %127 = getelementptr inbounds double, double* %126, i64 3
  %128 = load double, double* %127, align 8
  %129 = load double*, double** %11, align 8
  %130 = getelementptr inbounds double, double* %129, i64 3
  store double %128, double* %130, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = load double*, double** %10, align 8
  %135 = load float, float* %13, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %137 = call i32 @UI_DrawProportionalString2(i32 %131, i32 %132, i8* %133, double* %134, float %135, i32 %136)
  %138 = load double*, double** %10, align 8
  %139 = getelementptr inbounds double, double* %138, i64 0
  %140 = load double, double* %139, align 8
  %141 = load double*, double** %11, align 8
  %142 = getelementptr inbounds double, double* %141, i64 0
  store double %140, double* %142, align 8
  %143 = load double*, double** %10, align 8
  %144 = getelementptr inbounds double, double* %143, i64 1
  %145 = load double, double* %144, align 8
  %146 = load double*, double** %11, align 8
  %147 = getelementptr inbounds double, double* %146, i64 1
  store double %145, double* %147, align 8
  %148 = load double*, double** %10, align 8
  %149 = getelementptr inbounds double, double* %148, i64 2
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %11, align 8
  %152 = getelementptr inbounds double, double* %151, i64 2
  store double %150, double* %152, align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 4
  %154 = load i32, i32* @PULSE_DIVISOR, align 4
  %155 = sdiv i32 %153, %154
  %156 = call double @sin(i32 %155)
  %157 = fmul double 5.000000e-01, %156
  %158 = fadd double 5.000000e-01, %157
  %159 = load double*, double** %11, align 8
  %160 = getelementptr inbounds double, double* %159, i64 3
  store double %158, double* %160, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load double*, double** %11, align 8
  %165 = load float, float* %13, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 1), align 4
  %167 = call i32 @UI_DrawProportionalString2(i32 %161, i32 %162, i8* %163, double* %164, float %165, i32 %166)
  br label %176

168:                                              ; preds = %102
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = load double*, double** %10, align 8
  %173 = load float, float* %13, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cgs, i32 0, i32 0, i32 0), align 4
  %175 = call i32 @UI_DrawProportionalString2(i32 %169, i32 %170, i8* %171, double* %172, float %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %107, %71
  ret void
}

declare dso_local float @UI_ProportionalSizeScale(i32) #1

declare dso_local float @UI_ProportionalStringWidth(i8*) #1

declare dso_local i32 @UI_DrawProportionalString2(i32, i32, i8*, double*, float, i32) #1

declare dso_local double @sin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
