; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout_ps3.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout_ps3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, i32, i32, i32, double, i32, double, i32, i32, double, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }

@scale_mod = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @xmb_layout_ps3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_layout_ps3(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sitofp i32 %14 to float
  %16 = fmul float %13, %15
  %17 = fdiv float %16, 1.920000e+03
  store float %17, float* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store double 1.500000e+00, double* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store double -1.000000e+00, double* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store double 3.000000e+00, double* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store double 5.000000e+00, double* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  store double 1.000000e+00, double* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 5
  store double 5.000000e-01, double* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  store double 1.000000e+00, double* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 7
  store double 5.000000e-01, double* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  store double 1.000000e+00, double* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  store double 8.500000e-01, double* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 10
  store double 1.000000e+00, double* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 11
  store double 8.500000e-01, double* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 12
  store double 2.000000e+00, double* %43, align 8
  %44 = load float, float* %8, align 4
  %45 = fpext float %44 to double
  %46 = fmul double 3.200000e+01, %45
  %47 = fptoui double %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load float, float* %8, align 4
  %49 = fpext float %48 to double
  %50 = fmul double 2.400000e+01, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 13
  store double %50, double* %52, align 8
  %53 = load float, float* %8, align 4
  %54 = fpext float %53 to double
  %55 = fmul double 1.280000e+02, %54
  %56 = fptoui double %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load float, float* %8, align 4
  %58 = fpext float %57 to double
  %59 = fmul double 1.024000e+03, %58
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 14
  store double %59, double* %61, align 8
  %62 = load float, float* %8, align 4
  %63 = fpext float %62 to double
  %64 = fmul double 1.024000e+03, %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 15
  store double %64, double* %66, align 8
  %67 = load float, float* %8, align 4
  %68 = fpext float %67 to double
  %69 = fmul double 4.600000e+02, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 16
  store double %69, double* %71, align 8
  %72 = load float, float* %8, align 4
  %73 = fpext float %72 to double
  %74 = fmul double 6.400000e+01, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 17
  store double %74, double* %76, align 8
  %77 = load float, float* %8, align 4
  %78 = fpext float %77 to double
  %79 = fmul double 2.000000e+02, %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 18
  store double %79, double* %81, align 8
  %82 = load float, float* %8, align 4
  %83 = fpext float %82 to double
  %84 = fmul double 6.400000e+01, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 19
  store double %84, double* %86, align 8
  %87 = load float, float* %8, align 4
  %88 = fmul float 2.880000e+02, %87
  %89 = fptosi float %88 to i32
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 20
  store i32 %89, i32* %91, align 8
  %92 = load float, float* %8, align 4
  %93 = fpext float %92 to double
  %94 = fmul double 3.360000e+02, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 21
  store double %94, double* %96, align 8
  %97 = load float, float* %8, align 4
  %98 = fmul float 6.000000e+01, %97
  %99 = fptosi float %98 to i32
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 22
  store i32 %99, i32* %101, align 8
  %102 = load float, float* %8, align 4
  %103 = fmul float 6.000000e+01, %102
  %104 = load i32, i32* %5, align 4
  %105 = udiv i32 %104, 3
  %106 = uitofp i32 %105 to float
  %107 = fadd float %103, %106
  %108 = fptosi float %107 to i32
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 23
  store i32 %108, i32* %110, align 4
  %111 = load float, float* %8, align 4
  %112 = fmul float 6.000000e+01, %111
  %113 = load i32, i32* %5, align 4
  %114 = udiv i32 %113, 3
  %115 = uitofp i32 %114 to float
  %116 = fsub float %112, %115
  %117 = fptosi float %116 to i32
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 24
  store i32 %117, i32* %119, align 8
  %120 = load float, float* %8, align 4
  %121 = fpext float %120 to double
  %122 = fmul double 8.500000e+01, %121
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 25
  store double %122, double* %124, align 8
  %125 = load i32, i32* %5, align 4
  %126 = uitofp i32 %125 to double
  %127 = fdiv double %126, 3.000000e+00
  %128 = fptoui double %127 to i32
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 26
  store i32 %128, i32* %130, align 8
  %131 = load float, float* %8, align 4
  %132 = fpext float %131 to double
  %133 = fmul double 6.000000e+02, %132
  %134 = load double*, double** @scale_mod, align 8
  %135 = getelementptr inbounds double, double* %134, i64 6
  %136 = load double, double* %135, align 8
  %137 = fmul double %133, %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 27
  store double %137, double* %139, align 8
  %140 = load float, float* %8, align 4
  %141 = fmul float 4.800000e+01, %140
  %142 = fptosi float %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 28
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 29
  store i32 16, i32* %146, align 4
  %147 = load float, float* %8, align 4
  %148 = fpext float %147 to double
  %149 = fmul double 1.280000e+02, %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 30
  store double %149, double* %151, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 31
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @menu_display_set_header_height(i32 %155)
  ret void
}

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_set_header_height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
