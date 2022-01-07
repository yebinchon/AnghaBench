; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_set_projection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_set_projection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32, i32 }
%struct.video_ortho = type { i32, i32, i32, i32, i32, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.video_ortho*, i32)* @vita2d_set_projection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_set_projection(%struct.TYPE_3__* %0, %struct.video_ortho* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.video_ortho*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.video_ortho* %1, %struct.video_ortho** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %12 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %15 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %18 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %21 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %24 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.video_ortho*, %struct.video_ortho** %5, align 8
  %27 = getelementptr inbounds %struct.video_ortho, %struct.video_ortho* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @matrix_4x4_ortho(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %55

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = load float, float* @M_PI, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %40, %43
  %45 = fdiv float %44, 1.800000e+02
  %46 = call i32 @matrix_4x4_rotate_z(i32 %39, float %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @matrix_4x4_multiply(i32 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @matrix_4x4_ortho(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @matrix_4x4_rotate_z(i32, float) #1

declare dso_local i32 @matrix_4x4_multiply(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
