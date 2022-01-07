; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_calc_and_set_shader_mvp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_renderchain/extr_d3d9_hlsl_renderchain.c_hlsl_d3d9_renderchain_calc_and_set_shader_mvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_pass = type { i32 }
%struct.d3d_matrix = type { i32 }

@D3D_PI = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [14 x i8] c"modelViewProj\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.shader_pass*, i32, i32, i32)* @hlsl_d3d9_renderchain_calc_and_set_shader_mvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlsl_d3d9_renderchain_calc_and_set_shader_mvp(%struct.TYPE_5__* %0, %struct.shader_pass* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.shader_pass*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d_matrix, align 4
  %12 = alloca %struct.d3d_matrix, align 4
  %13 = alloca %struct.d3d_matrix, align 4
  %14 = alloca %struct.d3d_matrix, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.shader_pass* %1, %struct.shader_pass** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @d3d_matrix_ortho_off_center_lh(%struct.d3d_matrix* %12, i32 0, i32 %15, i32 0, i32 %16, i32 0, i32 1)
  %18 = call i32 @d3d_matrix_identity(%struct.d3d_matrix* %13)
  %19 = load i32, i32* %10, align 4
  %20 = uitofp i32 %19 to double
  %21 = load double, double* @D3D_PI, align 8
  %22 = fdiv double %21, 2.000000e+00
  %23 = fmul double %20, %22
  %24 = fptoui double %23 to i32
  %25 = call i32 @d3d_matrix_rotation_z(%struct.d3d_matrix* %13, i32 %24)
  %26 = call i32 @d3d_matrix_multiply(%struct.d3d_matrix* %11, %struct.d3d_matrix* %12, %struct.d3d_matrix* %13)
  %27 = call i32 @d3d_matrix_transpose(%struct.d3d_matrix* %14, %struct.d3d_matrix* %11)
  %28 = load %struct.shader_pass*, %struct.shader_pass** %7, align 8
  %29 = getelementptr inbounds %struct.shader_pass, %struct.shader_pass* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %struct.d3d_matrix* %14 to i8*
  %36 = call i32 @d3d9_hlsl_set_param_matrix(i32 %30, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %35)
  ret void
}

declare dso_local i32 @d3d_matrix_ortho_off_center_lh(%struct.d3d_matrix*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d_matrix_identity(%struct.d3d_matrix*) #1

declare dso_local i32 @d3d_matrix_rotation_z(%struct.d3d_matrix*, i32) #1

declare dso_local i32 @d3d_matrix_multiply(%struct.d3d_matrix*, %struct.d3d_matrix*, %struct.d3d_matrix*) #1

declare dso_local i32 @d3d_matrix_transpose(%struct.d3d_matrix*, %struct.d3d_matrix*) #1

declare dso_local i32 @d3d9_hlsl_set_param_matrix(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
