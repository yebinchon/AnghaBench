; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_tessellate_floor.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_tessellate_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float, i32)* @tessellate_floor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tessellate_floor(float %0, float %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sge i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store float 9.999990e+05, float* %11, align 4
  br label %53

17:                                               ; preds = %5
  %18 = load float, float* %6, align 4
  %19 = call i64 @fabs(float %18)
  %20 = load float, float* %8, align 4
  %21 = call i64 @fabs(float %20)
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load float, float* %6, align 4
  %25 = call i64 @fabs(float %24)
  br label %29

26:                                               ; preds = %17
  %27 = load float, float* %8, align 4
  %28 = call i64 @fabs(float %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i64 [ %25, %23 ], [ %28, %26 ]
  %31 = sitofp i64 %30 to float
  store float %31, float* %12, align 4
  %32 = load float, float* %7, align 4
  %33 = call i64 @fabs(float %32)
  %34 = load float, float* %9, align 4
  %35 = call i64 @fabs(float %34)
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load float, float* %7, align 4
  %39 = call i64 @fabs(float %38)
  br label %43

40:                                               ; preds = %29
  %41 = load float, float* %9, align 4
  %42 = call i64 @fabs(float %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i64 [ %39, %37 ], [ %42, %40 ]
  %45 = sitofp i64 %44 to float
  store float %45, float* %13, align 4
  %46 = load float, float* %12, align 4
  %47 = load float, float* %12, align 4
  %48 = fmul float %46, %47
  %49 = load float, float* %13, align 4
  %50 = load float, float* %13, align 4
  %51 = fmul float %49, %50
  %52 = fadd float %48, %51
  store float %52, float* %11, align 4
  br label %53

53:                                               ; preds = %43, %16
  %54 = load float, float* %11, align 4
  %55 = fcmp olt float %54, 0x3FB99999A0000000
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load float, float* %6, align 4
  %58 = load float, float* %8, align 4
  %59 = fadd float %57, %58
  %60 = fmul float %59, 5.000000e-01
  store float %60, float* %12, align 4
  %61 = load float, float* %7, align 4
  %62 = load float, float* %9, align 4
  %63 = fadd float %61, %62
  %64 = fmul float %63, 5.000000e-01
  store float %64, float* %13, align 4
  %65 = load float, float* %6, align 4
  %66 = load float, float* %7, align 4
  %67 = load float, float* %12, align 4
  %68 = load float, float* %13, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  call void @tessellate_floor(float %65, float %66, float %67, float %68, i32 %70)
  %71 = load float, float* %12, align 4
  %72 = load float, float* %7, align 4
  %73 = load float, float* %8, align 4
  %74 = load float, float* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  call void @tessellate_floor(float %71, float %72, float %73, float %74, i32 %76)
  %77 = load float, float* %6, align 4
  %78 = load float, float* %13, align 4
  %79 = load float, float* %12, align 4
  %80 = load float, float* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  call void @tessellate_floor(float %77, float %78, float %79, float %80, i32 %82)
  %83 = load float, float* %12, align 4
  %84 = load float, float* %13, align 4
  %85 = load float, float* %8, align 4
  %86 = load float, float* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  call void @tessellate_floor(float %83, float %84, float %85, float %86, i32 %88)
  br label %130

89:                                               ; preds = %53
  %90 = load float, float* %6, align 4
  %91 = fmul float %90, 3.000000e+01
  %92 = load float, float* %7, align 4
  %93 = fmul float %92, 3.000000e+01
  %94 = call i32 @glTexCoord2f(float %91, float %93)
  %95 = load float, float* %6, align 4
  %96 = fmul float %95, 8.000000e+01
  %97 = load float, float* %7, align 4
  %98 = fmul float %97, 8.000000e+01
  %99 = call i32 @glVertex3f(float %96, float %98, float 0.000000e+00)
  %100 = load float, float* %8, align 4
  %101 = fmul float %100, 3.000000e+01
  %102 = load float, float* %7, align 4
  %103 = fmul float %102, 3.000000e+01
  %104 = call i32 @glTexCoord2f(float %101, float %103)
  %105 = load float, float* %8, align 4
  %106 = fmul float %105, 8.000000e+01
  %107 = load float, float* %7, align 4
  %108 = fmul float %107, 8.000000e+01
  %109 = call i32 @glVertex3f(float %106, float %108, float 0.000000e+00)
  %110 = load float, float* %8, align 4
  %111 = fmul float %110, 3.000000e+01
  %112 = load float, float* %9, align 4
  %113 = fmul float %112, 3.000000e+01
  %114 = call i32 @glTexCoord2f(float %111, float %113)
  %115 = load float, float* %8, align 4
  %116 = fmul float %115, 8.000000e+01
  %117 = load float, float* %9, align 4
  %118 = fmul float %117, 8.000000e+01
  %119 = call i32 @glVertex3f(float %116, float %118, float 0.000000e+00)
  %120 = load float, float* %6, align 4
  %121 = fmul float %120, 3.000000e+01
  %122 = load float, float* %9, align 4
  %123 = fmul float %122, 3.000000e+01
  %124 = call i32 @glTexCoord2f(float %121, float %123)
  %125 = load float, float* %6, align 4
  %126 = fmul float %125, 8.000000e+01
  %127 = load float, float* %9, align 4
  %128 = fmul float %127, 8.000000e+01
  %129 = call i32 @glVertex3f(float %126, float %128, float 0.000000e+00)
  br label %130

130:                                              ; preds = %89, %56
  ret void
}

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
