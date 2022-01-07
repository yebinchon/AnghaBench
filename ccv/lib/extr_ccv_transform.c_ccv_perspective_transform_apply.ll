; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_transform.c_ccv_perspective_transform_apply.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_transform.c_ccv_perspective_transform_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, double }
%struct.TYPE_7__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { double, double } @ccv_perspective_transform_apply(double %0, double %1, double %2, double %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11, float %12) #0 {
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = bitcast %struct.TYPE_8__* %15 to { double, double }*
  %30 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 0
  store double %0, double* %30, align 8
  %31 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 1
  store double %1, double* %31, align 8
  %32 = bitcast %struct.TYPE_7__* %16 to { double, double }*
  %33 = getelementptr inbounds { double, double }, { double, double }* %32, i32 0, i32 0
  store double %2, double* %33, align 8
  %34 = getelementptr inbounds { double, double }, { double, double }* %32, i32 0, i32 1
  store double %3, double* %34, align 8
  store float %4, float* %17, align 4
  store float %5, float* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store float %11, float* %24, align 4
  store float %12, float* %25, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = call double @ccv_max(double %36, double %38)
  %40 = fdiv double 1.000000e+00, %39
  %41 = load float, float* %17, align 4
  %42 = fpext float %41 to double
  %43 = fmul double %42, %40
  %44 = fptrunc double %43 to float
  store float %44, float* %17, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = call double @ccv_max(double %46, double %48)
  %50 = fdiv double 1.000000e+00, %49
  %51 = load float, float* %18, align 4
  %52 = fpext float %51 to double
  %53 = fmul double %52, %50
  %54 = fptrunc double %53 to float
  store float %54, float* %18, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = call double @ccv_max(double %56, double %58)
  %60 = fdiv double 1.000000e+00, %59
  %61 = load float, float* %19, align 4
  %62 = fpext float %61 to double
  %63 = fmul double %62, %60
  %64 = fptrunc double %63 to float
  store float %64, float* %19, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = call double @ccv_max(double %66, double %68)
  %70 = fdiv double 1.000000e+00, %69
  %71 = load float, float* %20, align 4
  %72 = fpext float %71 to double
  %73 = fmul double %72, %70
  %74 = fptrunc double %73 to float
  store float %74, float* %20, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = call double @ccv_max(double %76, double %78)
  %80 = fdiv double 1.000000e+00, %79
  %81 = load float, float* %21, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %82, %80
  %84 = fptrunc double %83 to float
  store float %84, float* %21, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %88 = load double, double* %87, align 8
  %89 = call double @ccv_max(double %86, double %88)
  %90 = fdiv double 1.000000e+00, %89
  %91 = load float, float* %22, align 4
  %92 = fpext float %91 to double
  %93 = fmul double %92, %90
  %94 = fptrunc double %93 to float
  store float %94, float* %22, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %98 = load double, double* %97, align 8
  %99 = call double @ccv_max(double %96, double %98)
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = call double @ccv_max(double %101, double %103)
  %105 = fmul double %99, %104
  %106 = fdiv double 1.000000e+00, %105
  %107 = load float, float* %23, align 4
  %108 = fpext float %107 to double
  %109 = fmul double %108, %106
  %110 = fptrunc double %109 to float
  store float %110, float* %23, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = call double @ccv_max(double %112, double %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %119 = load double, double* %118, align 8
  %120 = call double @ccv_max(double %117, double %119)
  %121 = fmul double %115, %120
  %122 = fdiv double 1.000000e+00, %121
  %123 = load float, float* %24, align 4
  %124 = fpext float %123 to double
  %125 = fmul double %124, %122
  %126 = fptrunc double %125 to float
  store float %126, float* %24, align 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %128 = load double, double* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %130 = load double, double* %129, align 8
  %131 = call double @ccv_max(double %128, double %130)
  %132 = fdiv double 1.000000e+00, %131
  %133 = load float, float* %25, align 4
  %134 = fpext float %133 to double
  %135 = fmul double %134, %132
  %136 = fptrunc double %135 to float
  store float %136, float* %25, align 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = fmul double %138, 5.000000e-01
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %141 = load double, double* %140, align 8
  %142 = fsub double %141, %139
  store double %142, double* %140, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %144 = load double, double* %143, align 8
  %145 = fmul double %144, 5.000000e-01
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %147 = load double, double* %146, align 8
  %148 = fsub double %147, %145
  store double %148, double* %146, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %150 = load double, double* %149, align 8
  %151 = load float, float* %23, align 4
  %152 = fpext float %151 to double
  %153 = fmul double %150, %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %155 = load double, double* %154, align 8
  %156 = load float, float* %24, align 4
  %157 = fpext float %156 to double
  %158 = fmul double %155, %157
  %159 = fadd double %153, %158
  %160 = load float, float* %25, align 4
  %161 = fpext float %160 to double
  %162 = fadd double %159, %161
  %163 = fdiv double 1.000000e+00, %162
  %164 = fptrunc double %163 to float
  store float %164, float* %26, align 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %166 = load double, double* %165, align 8
  %167 = fmul double %166, 5.000000e-01
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %169 = load double, double* %168, align 8
  %170 = load float, float* %17, align 4
  %171 = fpext float %170 to double
  %172 = fmul double %169, %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = load float, float* %18, align 4
  %176 = fpext float %175 to double
  %177 = fmul double %174, %176
  %178 = fadd double %172, %177
  %179 = load float, float* %19, align 4
  %180 = fpext float %179 to double
  %181 = fadd double %178, %180
  %182 = load float, float* %26, align 4
  %183 = fpext float %182 to double
  %184 = fmul double %181, %183
  %185 = fadd double %167, %184
  %186 = fptrunc double %185 to float
  store float %186, float* %27, align 4
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %188 = load double, double* %187, align 8
  %189 = fmul double %188, 5.000000e-01
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %191 = load double, double* %190, align 8
  %192 = load float, float* %20, align 4
  %193 = fpext float %192 to double
  %194 = fmul double %191, %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = load float, float* %21, align 4
  %198 = fpext float %197 to double
  %199 = fmul double %196, %198
  %200 = fadd double %194, %199
  %201 = load float, float* %22, align 4
  %202 = fpext float %201 to double
  %203 = fadd double %200, %202
  %204 = load float, float* %26, align 4
  %205 = fpext float %204 to double
  %206 = fmul double %203, %205
  %207 = fadd double %189, %206
  %208 = fptrunc double %207 to float
  store float %208, float* %28, align 4
  %209 = load float, float* %27, align 4
  %210 = load float, float* %28, align 4
  %211 = call { double, double } @ccv_decimal_point(float %209, float %210)
  %212 = bitcast %struct.TYPE_8__* %14 to { double, double }*
  %213 = getelementptr inbounds { double, double }, { double, double }* %212, i32 0, i32 0
  %214 = extractvalue { double, double } %211, 0
  store double %214, double* %213, align 8
  %215 = getelementptr inbounds { double, double }, { double, double }* %212, i32 0, i32 1
  %216 = extractvalue { double, double } %211, 1
  store double %216, double* %215, align 8
  %217 = bitcast %struct.TYPE_8__* %14 to { double, double }*
  %218 = load { double, double }, { double, double }* %217, align 8
  ret { double, double } %218
}

declare dso_local double @ccv_max(double, double) #1

declare dso_local { double, double } @ccv_decimal_point(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
