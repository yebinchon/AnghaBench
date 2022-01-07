; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_decompose_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_decompose_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8** }
%struct.TYPE_7__ = type { double* }
%struct.TYPE_6__ = type { double* }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, double*)* @decompose_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompose_transform(%struct.TYPE_9__* noalias sret %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double* %1, double** %3, align 8
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8
  store double %15, double* %4, align 8
  %16 = load double*, double** %3, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  %18 = load double, double* %17, align 8
  store double %18, double* %5, align 8
  %19 = load double*, double** %3, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  store double %21, double* %6, align 8
  %22 = load double*, double** %3, align 8
  %23 = getelementptr inbounds double, double* %22, i64 3
  %24 = load double, double* %23, align 8
  store double %24, double* %7, align 8
  %25 = load double*, double** %3, align 8
  %26 = getelementptr inbounds double, double* %25, i64 4
  %27 = load double, double* %26, align 8
  store double %27, double* %8, align 8
  %28 = load double*, double** %3, align 8
  %29 = getelementptr inbounds double, double* %28, i64 5
  %30 = load double, double* %29, align 8
  store double %30, double* %9, align 8
  %31 = load double, double* %4, align 8
  %32 = load double, double* %8, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* %7, align 8
  %35 = load double, double* %5, align 8
  %36 = fmul double %34, %35
  %37 = fsub double %33, %36
  store double %37, double* %10, align 8
  %38 = load double, double* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  store double %38, double* %42, align 8
  %43 = load double, double* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  store double %43, double* %47, align 8
  %48 = load double, double* %4, align 8
  %49 = fcmp une double %48, 0.000000e+00
  br i1 %49, label %53, label %50

50:                                               ; preds = %2
  %51 = load double, double* %7, align 8
  %52 = fcmp une double %51, 0.000000e+00
  br i1 %52, label %53, label %97

53:                                               ; preds = %50, %2
  %54 = load double, double* %4, align 8
  %55 = load double, double* %7, align 8
  %56 = call double @hypot(double %54, double %55) #3
  store double %56, double* %11, align 8
  %57 = load double, double* %7, align 8
  %58 = call i32 @FFSIGN(double %57)
  %59 = load double, double* %4, align 8
  %60 = load double, double* %11, align 8
  %61 = fdiv double %59, %60
  %62 = call i32 @acos(double %61)
  %63 = mul nsw i32 %58, %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load double, double* %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load double*, double** %67, align 8
  %69 = getelementptr inbounds double, double* %68, i64 0
  store double %65, double* %69, align 8
  %70 = load double, double* %10, align 8
  %71 = load double, double* %11, align 8
  %72 = fdiv double %70, %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  store double %72, double* %76, align 8
  %77 = load double, double* %4, align 8
  %78 = load double, double* %5, align 8
  %79 = fmul double %77, %78
  %80 = load double, double* %7, align 8
  %81 = load double, double* %8, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %79, %82
  %84 = load double, double* %11, align 8
  %85 = load double, double* %11, align 8
  %86 = fmul double %84, %85
  %87 = fdiv double %83, %86
  %88 = call i8* @atan(double %87)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  store i8* null, i8** %96, align 8
  br label %157

97:                                               ; preds = %50
  %98 = load double, double* %5, align 8
  %99 = fcmp une double %98, 0.000000e+00
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load double, double* %8, align 8
  %102 = fcmp une double %101, 0.000000e+00
  br i1 %102, label %103, label %156

103:                                              ; preds = %100, %97
  %104 = load double, double* %5, align 8
  %105 = load double, double* %5, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %8, align 8
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = fadd double %106, %109
  %111 = call double @sqrt(double %110) #3
  store double %111, double* %12, align 8
  %112 = load i32, i32* @M_PI, align 4
  %113 = sdiv i32 %112, 2
  %114 = load double, double* %8, align 8
  %115 = call i32 @FFSIGN(double %114)
  %116 = load double, double* %5, align 8
  %117 = fneg double %116
  %118 = load double, double* %12, align 8
  %119 = fdiv double %117, %118
  %120 = call i32 @acos(double %119)
  %121 = mul nsw i32 %115, %120
  %122 = sub nsw i32 %113, %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load double, double* %10, align 8
  %125 = load double, double* %12, align 8
  %126 = fdiv double %124, %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load double*, double** %128, align 8
  %130 = getelementptr inbounds double, double* %129, i64 0
  store double %126, double* %130, align 8
  %131 = load double, double* %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load double*, double** %133, align 8
  %135 = getelementptr inbounds double, double* %134, i64 1
  store double %131, double* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  store i8* null, i8** %139, align 8
  %140 = load double, double* %4, align 8
  %141 = load double, double* %5, align 8
  %142 = fmul double %140, %141
  %143 = load double, double* %7, align 8
  %144 = load double, double* %8, align 8
  %145 = fmul double %143, %144
  %146 = fadd double %142, %145
  %147 = load double, double* %12, align 8
  %148 = load double, double* %12, align 8
  %149 = fmul double %147, %148
  %150 = fdiv double %146, %149
  %151 = call i8* @atan(double %150)
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %0, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  store i8* %151, i8** %155, align 8
  br label %156

156:                                              ; preds = %103, %100
  br label %157

157:                                              ; preds = %156, %53
  ret void
}

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #1

declare dso_local i32 @FFSIGN(double) #2

declare dso_local i32 @acos(double) #2

declare dso_local i8* @atan(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
