; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crossfeed.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crossfeed.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, double, i32, double, double, i32, double }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, -30
  %18 = sdiv i32 %17, 40
  %19 = call double @ff_exp10(i32 %18)
  store double %19, double* %5, align 8
  %20 = load i32, i32* @M_PI, align 4
  %21 = mul nsw i32 2, %20
  %22 = sitofp i32 %21 to double
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = fsub double 1.000000e+00, %26
  %28 = fmul double %22, %27
  %29 = fmul double %28, 2.100000e+03
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %29, %33
  store double %34, double* %6, align 8
  %35 = load double, double* %6, align 8
  %36 = call i32 @sin(double %35)
  %37 = sdiv i32 %36, 2
  %38 = call i32 @sqrt(double 4.000000e+00)
  %39 = mul nsw i32 %37, %38
  %40 = sitofp i32 %39 to double
  store double %40, double* %7, align 8
  %41 = load double, double* %5, align 8
  %42 = fadd double %41, 1.000000e+00
  %43 = load double, double* %5, align 8
  %44 = fsub double %43, 1.000000e+00
  %45 = load double, double* %6, align 8
  %46 = call double @cos(double %45) #3
  %47 = fmul double %44, %46
  %48 = fadd double %42, %47
  %49 = load double, double* %5, align 8
  %50 = call i32 @sqrt(double %49)
  %51 = mul nsw i32 2, %50
  %52 = sitofp i32 %51 to double
  %53 = load double, double* %7, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %48, %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store double %55, double* %57, align 8
  %58 = load double, double* %5, align 8
  %59 = fsub double %58, 1.000000e+00
  %60 = load double, double* %5, align 8
  %61 = fadd double %60, 1.000000e+00
  %62 = load double, double* %6, align 8
  %63 = call double @cos(double %62) #3
  %64 = fmul double %61, %63
  %65 = fadd double %59, %64
  %66 = fmul double -2.000000e+00, %65
  %67 = fptosi double %66 to i32
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load double, double* %5, align 8
  %71 = fadd double %70, 1.000000e+00
  %72 = load double, double* %5, align 8
  %73 = fsub double %72, 1.000000e+00
  %74 = load double, double* %6, align 8
  %75 = call double @cos(double %74) #3
  %76 = fmul double %73, %75
  %77 = fadd double %71, %76
  %78 = load double, double* %5, align 8
  %79 = call i32 @sqrt(double %78)
  %80 = mul nsw i32 2, %79
  %81 = sitofp i32 %80 to double
  %82 = load double, double* %7, align 8
  %83 = fmul double %81, %82
  %84 = fsub double %77, %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store double %84, double* %86, align 8
  %87 = load double, double* %5, align 8
  %88 = load double, double* %5, align 8
  %89 = fadd double %88, 1.000000e+00
  %90 = load double, double* %5, align 8
  %91 = fsub double %90, 1.000000e+00
  %92 = load double, double* %6, align 8
  %93 = call double @cos(double %92) #3
  %94 = fmul double %91, %93
  %95 = fsub double %89, %94
  %96 = load double, double* %5, align 8
  %97 = call i32 @sqrt(double %96)
  %98 = mul nsw i32 2, %97
  %99 = sitofp i32 %98 to double
  %100 = load double, double* %7, align 8
  %101 = fmul double %99, %100
  %102 = fadd double %95, %101
  %103 = fmul double %87, %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  store double %103, double* %105, align 8
  %106 = load double, double* %5, align 8
  %107 = fmul double 2.000000e+00, %106
  %108 = load double, double* %5, align 8
  %109 = fsub double %108, 1.000000e+00
  %110 = load double, double* %5, align 8
  %111 = fadd double %110, 1.000000e+00
  %112 = load double, double* %6, align 8
  %113 = call double @cos(double %112) #3
  %114 = fmul double %111, %113
  %115 = fsub double %109, %114
  %116 = fmul double %107, %115
  %117 = fptosi double %116 to i32
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load double, double* %5, align 8
  %121 = load double, double* %5, align 8
  %122 = fadd double %121, 1.000000e+00
  %123 = load double, double* %5, align 8
  %124 = fsub double %123, 1.000000e+00
  %125 = load double, double* %6, align 8
  %126 = call double @cos(double %125) #3
  %127 = fmul double %124, %126
  %128 = fsub double %122, %127
  %129 = load double, double* %5, align 8
  %130 = call i32 @sqrt(double %129)
  %131 = mul nsw i32 2, %130
  %132 = sitofp i32 %131 to double
  %133 = load double, double* %7, align 8
  %134 = fmul double %132, %133
  %135 = fsub double %128, %134
  %136 = fmul double %120, %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 7
  store double %136, double* %138, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load double, double* %140, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = sitofp i32 %144 to double
  %146 = fdiv double %145, %141
  %147 = fptosi double %146 to i32
  store i32 %147, i32* %143, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load double, double* %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load double, double* %152, align 8
  %154 = fdiv double %153, %150
  store double %154, double* %152, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load double, double* %156, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 5
  %160 = load double, double* %159, align 8
  %161 = fdiv double %160, %157
  store double %161, double* %159, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load double, double* %163, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = sitofp i32 %167 to double
  %169 = fdiv double %168, %164
  %170 = fptosi double %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load double, double* %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 7
  %176 = load double, double* %175, align 8
  %177 = fdiv double %176, %173
  store double %177, double* %175, align 8
  ret i32 0
}

declare dso_local double @ff_exp10(i32) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @sqrt(double) #1

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
