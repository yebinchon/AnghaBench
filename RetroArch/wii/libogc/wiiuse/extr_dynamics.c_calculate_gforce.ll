; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calculate_gforce.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_dynamics.c_calculate_gforce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accel_t = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.vec3w_t = type { i64, i64, i64 }
%struct.gforce_t = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_gforce(%struct.accel_t* %0, %struct.vec3w_t* %1, %struct.gforce_t* %2) #0 {
  %4 = alloca %struct.accel_t*, align 8
  %5 = alloca %struct.vec3w_t*, align 8
  %6 = alloca %struct.gforce_t*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.accel_t* %0, %struct.accel_t** %4, align 8
  store %struct.vec3w_t* %1, %struct.vec3w_t** %5, align 8
  store %struct.gforce_t* %2, %struct.gforce_t** %6, align 8
  %10 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %11 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to float
  store float %14, float* %7, align 4
  %15 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %16 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to float
  store float %19, float* %8, align 4
  %20 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %21 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to float
  store float %24, float* %9, align 4
  %25 = load %struct.vec3w_t*, %struct.vec3w_t** %5, align 8
  %26 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to float
  %29 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %30 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to float
  %34 = fsub float %28, %33
  %35 = load float, float* %7, align 4
  %36 = fdiv float %34, %35
  %37 = load %struct.gforce_t*, %struct.gforce_t** %6, align 8
  %38 = getelementptr inbounds %struct.gforce_t, %struct.gforce_t* %37, i32 0, i32 0
  store float %36, float* %38, align 4
  %39 = load %struct.vec3w_t*, %struct.vec3w_t** %5, align 8
  %40 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to float
  %43 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %44 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to float
  %48 = fsub float %42, %47
  %49 = load float, float* %8, align 4
  %50 = fdiv float %48, %49
  %51 = load %struct.gforce_t*, %struct.gforce_t** %6, align 8
  %52 = getelementptr inbounds %struct.gforce_t, %struct.gforce_t* %51, i32 0, i32 1
  store float %50, float* %52, align 4
  %53 = load %struct.vec3w_t*, %struct.vec3w_t** %5, align 8
  %54 = getelementptr inbounds %struct.vec3w_t, %struct.vec3w_t* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = load %struct.accel_t*, %struct.accel_t** %4, align 8
  %58 = getelementptr inbounds %struct.accel_t, %struct.accel_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to float
  %62 = fsub float %56, %61
  %63 = load float, float* %9, align 4
  %64 = fdiv float %62, %63
  %65 = load %struct.gforce_t*, %struct.gforce_t** %6, align 8
  %66 = getelementptr inbounds %struct.gforce_t, %struct.gforce_t* %65, i32 0, i32 2
  store float %64, float* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
