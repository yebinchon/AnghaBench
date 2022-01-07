; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout_psp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout_psp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, double, i32, double, i32, i32, double, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @stripes_layout_psp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_layout_psp(%struct.TYPE_7__* %0, i32 %1) #0 {
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
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 1.920000e+03
  %18 = fmul double %17, 1.500000e+00
  %19 = fptrunc double %18 to float
  store float %19, float* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store double 1.500000e+00, double* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store double -1.000000e+00, double* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store double 2.000000e+00, double* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store double 3.000000e+00, double* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store double 1.000000e+00, double* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  store double 1.000000e+00, double* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store double 1.000000e+00, double* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 7
  store double 1.000000e+00, double* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 8
  store double 1.000000e+00, double* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 9
  store double 8.500000e-01, double* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 10
  store double 1.000000e+00, double* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 11
  store double 8.500000e-01, double* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 12
  store double 1.000000e+00, double* %45, align 8
  %46 = load float, float* %8, align 4
  %47 = fpext float %46 to double
  %48 = fmul double 3.200000e+01, %47
  %49 = fptoui double %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load float, float* %8, align 4
  %51 = fpext float %50 to double
  %52 = fmul double 2.400000e+01, %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 13
  store double %52, double* %54, align 8
  %55 = load float, float* %8, align 4
  %56 = fpext float %55 to double
  %57 = fmul double 1.280000e+02, %56
  %58 = fptoui double %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load float, float* %8, align 4
  %60 = fmul float 2.880000e+02, %59
  %61 = fptosi float %60 to i32
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 14
  store i32 %61, i32* %63, align 8
  %64 = load float, float* %8, align 4
  %65 = fpext float %64 to double
  %66 = fmul double 4.600000e+02, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 15
  store double %66, double* %68, align 8
  %69 = load float, float* %8, align 4
  %70 = fpext float %69 to double
  %71 = fmul double 4.000000e+02, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 16
  store double %71, double* %73, align 8
  %74 = load float, float* %8, align 4
  %75 = fpext float %74 to double
  %76 = fmul double 4.600000e+02, %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 17
  store double %76, double* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 18
  store double 6.400000e+01, double* %80, align 8
  %81 = load float, float* %8, align 4
  %82 = fpext float %81 to double
  %83 = fmul double 2.500000e+02, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 19
  store double %83, double* %85, align 8
  %86 = load float, float* %8, align 4
  %87 = fpext float %86 to double
  %88 = fmul double 1.080000e+02, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 20
  store double %88, double* %90, align 8
  %91 = load float, float* %8, align 4
  %92 = fpext float %91 to double
  %93 = fmul double 1.360000e+02, %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 21
  store double %93, double* %95, align 8
  %96 = load float, float* %8, align 4
  %97 = fmul float 6.000000e+01, %96
  %98 = fptosi float %97 to i32
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 22
  store i32 %98, i32* %100, align 8
  %101 = load float, float* %8, align 4
  %102 = fmul float 6.000000e+01, %101
  %103 = load i32, i32* %5, align 4
  %104 = udiv i32 %103, 3
  %105 = uitofp i32 %104 to float
  %106 = fadd float %102, %105
  %107 = fptosi float %106 to i32
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 23
  store i32 %107, i32* %109, align 4
  %110 = load float, float* %8, align 4
  %111 = fmul float 6.000000e+01, %110
  %112 = load i32, i32* %5, align 4
  %113 = udiv i32 %112, 3
  %114 = uitofp i32 %113 to float
  %115 = fsub float %111, %114
  %116 = fptosi float %115 to i32
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 24
  store i32 %116, i32* %118, align 8
  %119 = load float, float* %8, align 4
  %120 = fpext float %119 to double
  %121 = fmul double 8.500000e+01, %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 25
  store double %121, double* %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = uitofp i32 %124 to double
  %126 = fdiv double %125, 3.000000e+00
  %127 = fptoui double %126 to i32
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 26
  store i32 %127, i32* %129, align 8
  %130 = load float, float* %8, align 4
  %131 = fpext float %130 to double
  %132 = fmul double 6.000000e+02, %131
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 27
  store double %132, double* %134, align 8
  %135 = load float, float* %8, align 4
  %136 = fmul float 4.800000e+01, %135
  %137 = fptosi float %136 to i32
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 28
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 29
  store i32 16, i32* %141, align 4
  %142 = load float, float* %8, align 4
  %143 = fpext float %142 to double
  %144 = fmul double 1.280000e+02, %143
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 30
  store double %144, double* %146, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 31
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @menu_display_set_header_height(i32 %150)
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
