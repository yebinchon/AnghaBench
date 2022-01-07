; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout_psp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout_psp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, double, i32, double, i32, i32, double, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @xmb_layout_psp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_layout_psp(%struct.TYPE_7__* %0, i32 %1) #0 {
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
  %18 = fmul float %17, 1.500000e+00
  store float %18, float* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store double 1.500000e+00, double* %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store double -1.000000e+00, double* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store double 2.000000e+00, double* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store double 3.000000e+00, double* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  store double 1.000000e+00, double* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store double 1.000000e+00, double* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  store double 1.000000e+00, double* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 7
  store double 1.000000e+00, double* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  store double 1.000000e+00, double* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 9
  store double 8.500000e-01, double* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 10
  store double 1.000000e+00, double* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 11
  store double 8.500000e-01, double* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 12
  store double 1.000000e+00, double* %44, align 8
  %45 = load float, float* %8, align 4
  %46 = fpext float %45 to double
  %47 = fmul double 3.200000e+01, %46
  %48 = fptoui double %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load float, float* %8, align 4
  %50 = fpext float %49 to double
  %51 = fmul double 2.400000e+01, %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 13
  store double %51, double* %53, align 8
  %54 = load float, float* %8, align 4
  %55 = fpext float %54 to double
  %56 = fmul double 1.280000e+02, %55
  %57 = fptoui double %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load float, float* %8, align 4
  %59 = fmul float 2.880000e+02, %58
  %60 = fptosi float %59 to i32
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 14
  store i32 %60, i32* %62, align 8
  %63 = load float, float* %8, align 4
  %64 = fpext float %63 to double
  %65 = fmul double 4.600000e+02, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 15
  store double %65, double* %67, align 8
  %68 = load float, float* %8, align 4
  %69 = fpext float %68 to double
  %70 = fmul double 4.000000e+02, %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 16
  store double %70, double* %72, align 8
  %73 = load float, float* %8, align 4
  %74 = fpext float %73 to double
  %75 = fmul double 4.600000e+02, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 17
  store double %75, double* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 18
  store double 6.400000e+01, double* %79, align 8
  %80 = load float, float* %8, align 4
  %81 = fpext float %80 to double
  %82 = fmul double 2.500000e+02, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 19
  store double %82, double* %84, align 8
  %85 = load float, float* %8, align 4
  %86 = fpext float %85 to double
  %87 = fmul double 1.080000e+02, %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 20
  store double %87, double* %89, align 8
  %90 = load float, float* %8, align 4
  %91 = fpext float %90 to double
  %92 = fmul double 1.360000e+02, %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 21
  store double %92, double* %94, align 8
  %95 = load float, float* %8, align 4
  %96 = fmul float 6.000000e+01, %95
  %97 = fptosi float %96 to i32
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 22
  store i32 %97, i32* %99, align 8
  %100 = load float, float* %8, align 4
  %101 = fmul float 6.000000e+01, %100
  %102 = load i32, i32* %5, align 4
  %103 = udiv i32 %102, 3
  %104 = uitofp i32 %103 to float
  %105 = fadd float %101, %104
  %106 = fptosi float %105 to i32
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 23
  store i32 %106, i32* %108, align 4
  %109 = load float, float* %8, align 4
  %110 = fmul float 6.000000e+01, %109
  %111 = load i32, i32* %5, align 4
  %112 = udiv i32 %111, 3
  %113 = uitofp i32 %112 to float
  %114 = fsub float %110, %113
  %115 = fptosi float %114 to i32
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 24
  store i32 %115, i32* %117, align 8
  %118 = load float, float* %8, align 4
  %119 = fpext float %118 to double
  %120 = fmul double 8.500000e+01, %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 25
  store double %120, double* %122, align 8
  %123 = load i32, i32* %5, align 4
  %124 = uitofp i32 %123 to double
  %125 = fdiv double %124, 3.000000e+00
  %126 = fptoui double %125 to i32
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 26
  store i32 %126, i32* %128, align 8
  %129 = load float, float* %8, align 4
  %130 = fpext float %129 to double
  %131 = fmul double 6.000000e+02, %130
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 27
  store double %131, double* %133, align 8
  %134 = load float, float* %8, align 4
  %135 = fmul float 4.800000e+01, %134
  %136 = fptosi float %135 to i32
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 28
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 29
  store i32 16, i32* %140, align 4
  %141 = load float, float* %8, align 4
  %142 = fpext float %141 to double
  %143 = fmul double 1.280000e+02, %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 30
  store double %143, double* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 31
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @menu_display_set_header_height(i32 %149)
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
