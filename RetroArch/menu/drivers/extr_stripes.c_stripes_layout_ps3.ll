; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout_ps3.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout_ps3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, i32, i32, i32, double, i32, double, i32, i32, double, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@stripes_scale_mod = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @stripes_layout_ps3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_layout_ps3(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 1.920000e+03
  store float %19, float* %10, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store double 1.500000e+00, double* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store double -1.000000e+00, double* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store double 3.000000e+00, double* %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store double 5.000000e+00, double* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store double 1.000000e+00, double* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  store double 2.500000e-01, double* %31, align 8
  %32 = load float, float* %10, align 4
  %33 = fmul float 4.000000e+02, %32
  %34 = fptosi float %33 to i32
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load float, float* %10, align 4
  %42 = fmul float 6.400000e+01, %41
  %43 = fptosi float %42 to i32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sitofp i32 %46 to float
  %48 = load float, float* %10, align 4
  %49 = fmul float 6.400000e+01, %48
  %50 = fsub float %47, %49
  %51 = fptosi float %50 to i32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %10, align 4
  %65 = fmul float 2.200000e+01, %64
  %66 = fsub float %63, %65
  %67 = fptosi float %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load float, float* %10, align 4
  %71 = fmul float 2.200000e+01, %70
  %72 = fptosi float %71 to i32
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load float, float* %10, align 4
  %76 = fmul float 1.280000e+02, %75
  %77 = fptosi float %76 to i32
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 13
  store i32 %77, i32* %79, align 4
  %80 = load float, float* %10, align 4
  %81 = fmul float 1.200000e+03, %80
  %82 = fptosi float %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 15
  store double 1.000000e+00, double* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 16
  store double 5.000000e-01, double* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 17
  store double 1.000000e+00, double* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 18
  store double 1.000000e+00, double* %92, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 19
  store double 1.000000e+00, double* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 20
  store double 8.500000e-01, double* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 21
  store double 2.000000e+00, double* %98, align 8
  %99 = load float, float* %10, align 4
  %100 = fpext float %99 to double
  %101 = fmul double 3.200000e+01, %100
  %102 = fptoui double %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load float, float* %10, align 4
  %104 = fpext float %103 to double
  %105 = fmul double 2.400000e+01, %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 22
  store double %105, double* %107, align 8
  %108 = load float, float* %10, align 4
  %109 = fpext float %108 to double
  %110 = fmul double 1.280000e+02, %109
  %111 = fptoui double %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load float, float* %10, align 4
  %113 = fpext float %112 to double
  %114 = fmul double 1.024000e+03, %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 23
  store double %114, double* %116, align 8
  %117 = load float, float* %10, align 4
  %118 = fpext float %117 to double
  %119 = fmul double 1.024000e+03, %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 24
  store double %119, double* %121, align 8
  %122 = load float, float* %10, align 4
  %123 = fpext float %122 to double
  %124 = fmul double 4.600000e+02, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 25
  store double %124, double* %126, align 8
  %127 = load float, float* %10, align 4
  %128 = fpext float %127 to double
  %129 = fmul double 6.400000e+01, %128
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 26
  store double %129, double* %131, align 8
  %132 = load float, float* %10, align 4
  %133 = fpext float %132 to double
  %134 = fmul double 2.000000e+02, %133
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 27
  store double %134, double* %136, align 8
  %137 = load float, float* %10, align 4
  %138 = fpext float %137 to double
  %139 = fmul double 6.400000e+01, %138
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 28
  store double %139, double* %141, align 8
  %142 = load float, float* %10, align 4
  %143 = fmul float 2.880000e+02, %142
  %144 = fptosi float %143 to i32
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 29
  store i32 %144, i32* %146, align 8
  %147 = load float, float* %10, align 4
  %148 = fpext float %147 to double
  %149 = fmul double 3.360000e+02, %148
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 30
  store double %149, double* %151, align 8
  %152 = load float, float* %10, align 4
  %153 = fmul float 6.000000e+01, %152
  %154 = fptosi float %153 to i32
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 31
  store i32 %154, i32* %156, align 8
  %157 = load float, float* %10, align 4
  %158 = fmul float 6.000000e+01, %157
  %159 = load i32, i32* %7, align 4
  %160 = udiv i32 %159, 3
  %161 = uitofp i32 %160 to float
  %162 = fadd float %158, %161
  %163 = fptosi float %162 to i32
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 32
  store i32 %163, i32* %165, align 4
  %166 = load float, float* %10, align 4
  %167 = fmul float 6.000000e+01, %166
  %168 = load i32, i32* %7, align 4
  %169 = udiv i32 %168, 3
  %170 = uitofp i32 %169 to float
  %171 = fsub float %167, %170
  %172 = fptosi float %171 to i32
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 33
  store i32 %172, i32* %174, align 8
  %175 = load float, float* %10, align 4
  %176 = fpext float %175 to double
  %177 = fmul double 8.500000e+01, %176
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 34
  store double %177, double* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = uitofp i32 %180 to double
  %182 = fdiv double %181, 3.000000e+00
  %183 = fptoui double %182 to i32
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 35
  store i32 %183, i32* %185, align 8
  %186 = load float, float* %10, align 4
  %187 = fpext float %186 to double
  %188 = fmul double 6.000000e+02, %187
  %189 = load double*, double** @stripes_scale_mod, align 8
  %190 = getelementptr inbounds double, double* %189, i64 6
  %191 = load double, double* %190, align 8
  %192 = fmul double %188, %191
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 36
  store double %192, double* %194, align 8
  %195 = load float, float* %10, align 4
  %196 = fmul float 4.800000e+01, %195
  %197 = fptosi float %196 to i32
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 37
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 38
  store i32 16, i32* %201, align 4
  %202 = load float, float* %10, align 4
  %203 = fpext float %202 to double
  %204 = fmul double 2.560000e+02, %203
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 39
  store double %204, double* %206, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 40
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @menu_display_set_header_height(i32 %210)
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
