; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_update_map.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_update_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_NUM_TOTAL_VERTICES = common dso_local global i64 0, align 8
@map_vertices = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %78, %1
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = call i32 @generate_heightmap__circle(float* %3, float* %4, float* %5, float* %6)
  %21 = load float, float* %6, align 4
  %22 = fdiv float %21, 2.000000e+00
  store float %22, float* %6, align 4
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %75, %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MAP_NUM_TOTAL_VERTICES, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load float, float* %3, align 4
  %29 = load float**, float*** @map_vertices, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 0
  %31 = load float*, float** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds float, float* %31, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fsub float %28, %34
  store float %35, float* %8, align 4
  %36 = load float, float* %4, align 4
  %37 = load float**, float*** @map_vertices, align 8
  %38 = getelementptr inbounds float*, float** %37, i64 2
  %39 = load float*, float** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds float, float* %39, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fsub float %36, %42
  store float %43, float* %9, align 4
  %44 = load float, float* %8, align 4
  %45 = load float, float* %8, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %9, align 4
  %48 = load float, float* %9, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %46, %49
  %51 = call float @sqrtf(float %50) #3
  %52 = fmul float 2.000000e+00, %51
  %53 = load float, float* %5, align 4
  %54 = fdiv float %52, %53
  store float %54, float* %10, align 4
  %55 = load float, float* %10, align 4
  %56 = call float @fabs(float %55)
  %57 = fcmp ole float %56, 1.000000e+00
  br i1 %57, label %58, label %74

58:                                               ; preds = %27
  %59 = load float, float* %6, align 4
  %60 = load float, float* %10, align 4
  %61 = fmul float %60, 0x40091EB860000000
  %62 = call float @cos(float %61)
  %63 = load float, float* %6, align 4
  %64 = fmul float %62, %63
  %65 = fadd float %59, %64
  store float %65, float* %11, align 4
  %66 = load float, float* %11, align 4
  %67 = load float**, float*** @map_vertices, align 8
  %68 = getelementptr inbounds float*, float** %67, i64 1
  %69 = load float*, float** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds float, float* %69, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %66
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %58, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %23

78:                                               ; preds = %23
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %2, align 4
  br label %16

81:                                               ; preds = %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @generate_heightmap__circle(float*, float*, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @fabs(float) #1

declare dso_local float @cos(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
