; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_set_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_set_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_matrix = type { i32 }
%struct.TYPE_4__ = type { double, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, float, float }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @d3d8_set_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d8_set_viewport(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d_matrix, align 4
  %12 = alloca %struct.d3d_matrix, align 4
  %13 = alloca %struct.d3d_matrix, align 4
  %14 = alloca %struct.d3d_matrix, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %17, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @d3d8_calculate_rect(i8* %20, i32* %7, i32* %8, i32* %15, i32* %16, i32 %21, i32 %22)
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store float 0.000000e+00, float* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store float 0.000000e+00, float* %53, align 4
  %54 = call i32 @d3d_matrix_ortho_off_center_lh(%struct.d3d_matrix* %12, i32 0, i32 1, i32 0, i32 1, float 0.000000e+00, float 1.000000e+00)
  %55 = call i32 @d3d_matrix_identity(%struct.d3d_matrix* %13)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = load double, double* @M_PI, align 8
  %60 = fdiv double %59, 2.000000e+00
  %61 = fmul double %58, %60
  %62 = call i32 @d3d_matrix_rotation_z(%struct.d3d_matrix* %13, double %61)
  %63 = call i32 @d3d_matrix_multiply(%struct.d3d_matrix* %11, %struct.d3d_matrix* %12, %struct.d3d_matrix* %13)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @d3d_matrix_transpose(i32* %65, %struct.d3d_matrix* %12)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = call i32 @d3d_matrix_transpose(i32* %68, %struct.d3d_matrix* %14)
  ret void
}

declare dso_local i32 @d3d8_calculate_rect(i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @d3d_matrix_ortho_off_center_lh(%struct.d3d_matrix*, i32, i32, i32, i32, float, float) #1

declare dso_local i32 @d3d_matrix_identity(%struct.d3d_matrix*) #1

declare dso_local i32 @d3d_matrix_rotation_z(%struct.d3d_matrix*, double) #1

declare dso_local i32 @d3d_matrix_multiply(%struct.d3d_matrix*, %struct.d3d_matrix*, %struct.d3d_matrix*) #1

declare dso_local i32 @d3d_matrix_transpose(i32*, %struct.d3d_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
