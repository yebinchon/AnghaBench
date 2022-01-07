; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_set_highshelf_rbj.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aemphasis.c_set_highshelf_rbj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, double, i32, double }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double, double, double, double)* @set_highshelf_rbj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_highshelf_rbj(%struct.TYPE_3__* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %18 = load double, double* %9, align 8
  %19 = call i32 @sqrt(double %18)
  %20 = sitofp i32 %19 to double
  store double %20, double* %11, align 8
  %21 = load double, double* %7, align 8
  %22 = fmul double %21, 2.000000e+00
  %23 = load double, double* @M_PI, align 8
  %24 = fmul double %22, %23
  %25 = load double, double* %10, align 8
  %26 = fdiv double %24, %25
  store double %26, double* %12, align 8
  %27 = load double, double* %12, align 8
  %28 = call i32 @sin(double %27)
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %8, align 8
  %31 = fmul double 2.000000e+00, %30
  %32 = fdiv double %29, %31
  store double %32, double* %13, align 8
  %33 = load double, double* %12, align 8
  %34 = call double @cos(double %33) #3
  store double %34, double* %14, align 8
  %35 = load double, double* %11, align 8
  %36 = call i32 @sqrt(double %35)
  %37 = mul nsw i32 2, %36
  %38 = sitofp i32 %37 to double
  %39 = load double, double* %13, align 8
  %40 = fmul double %38, %39
  store double %40, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %41 = load double, double* %11, align 8
  %42 = load double, double* %11, align 8
  %43 = fadd double %42, 1.000000e+00
  %44 = load double, double* %11, align 8
  %45 = fsub double %44, 1.000000e+00
  %46 = load double, double* %14, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %43, %47
  %49 = load double, double* %15, align 8
  %50 = fadd double %48, %49
  %51 = fmul double %41, %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store double %51, double* %53, align 8
  %54 = load double, double* %11, align 8
  %55 = fmul double -2.000000e+00, %54
  %56 = load double, double* %11, align 8
  %57 = fsub double %56, 1.000000e+00
  %58 = load double, double* %11, align 8
  %59 = fadd double %58, 1.000000e+00
  %60 = load double, double* %14, align 8
  %61 = fmul double %59, %60
  %62 = fadd double %57, %61
  %63 = fmul double %55, %62
  %64 = fptosi double %63 to i32
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load double, double* %11, align 8
  %68 = load double, double* %11, align 8
  %69 = fadd double %68, 1.000000e+00
  %70 = load double, double* %11, align 8
  %71 = fsub double %70, 1.000000e+00
  %72 = load double, double* %14, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %69, %73
  %75 = load double, double* %15, align 8
  %76 = fsub double %74, %75
  %77 = fmul double %67, %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store double %77, double* %79, align 8
  %80 = load double, double* %11, align 8
  %81 = fadd double %80, 1.000000e+00
  %82 = load double, double* %11, align 8
  %83 = fsub double %82, 1.000000e+00
  %84 = load double, double* %14, align 8
  %85 = fmul double %83, %84
  %86 = fsub double %81, %85
  %87 = load double, double* %15, align 8
  %88 = fadd double %86, %87
  store double %88, double* %16, align 8
  %89 = load double, double* %11, align 8
  %90 = fsub double %89, 1.000000e+00
  %91 = load double, double* %11, align 8
  %92 = fadd double %91, 1.000000e+00
  %93 = load double, double* %14, align 8
  %94 = fmul double %92, %93
  %95 = fsub double %90, %94
  %96 = fmul double 2.000000e+00, %95
  %97 = fptosi double %96 to i32
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load double, double* %11, align 8
  %101 = fadd double %100, 1.000000e+00
  %102 = load double, double* %11, align 8
  %103 = fsub double %102, 1.000000e+00
  %104 = load double, double* %14, align 8
  %105 = fmul double %103, %104
  %106 = fsub double %101, %105
  %107 = load double, double* %15, align 8
  %108 = fsub double %106, %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  store double %108, double* %110, align 8
  %111 = load double, double* %16, align 8
  %112 = fdiv double 1.000000e+00, %111
  store double %112, double* %17, align 8
  %113 = load double, double* %17, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = sitofp i32 %116 to double
  %118 = fmul double %117, %113
  %119 = fptosi double %118 to i32
  store i32 %119, i32* %115, align 8
  %120 = load double, double* %17, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load double, double* %122, align 8
  %124 = fmul double %123, %120
  store double %124, double* %122, align 8
  %125 = load double, double* %17, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load double, double* %127, align 8
  %129 = fmul double %128, %125
  store double %129, double* %127, align 8
  %130 = load double, double* %17, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sitofp i32 %133 to double
  %135 = fmul double %134, %130
  %136 = fptosi double %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load double, double* %17, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load double, double* %139, align 8
  %141 = fmul double %140, %137
  store double %141, double* %139, align 8
  ret void
}

declare dso_local i32 @sqrt(double) #1

declare dso_local i32 @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
