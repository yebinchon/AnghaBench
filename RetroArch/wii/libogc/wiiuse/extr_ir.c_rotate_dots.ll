; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_rotate_dots.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_rotate_dots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdot_t = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdot_t*, %struct.fdot_t*, i32, float)* @rotate_dots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_dots(%struct.fdot_t* %0, %struct.fdot_t* %1, i32 %2, float %3) #0 {
  %5 = alloca %struct.fdot_t*, align 8
  %6 = alloca %struct.fdot_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %struct.fdot_t* %0, %struct.fdot_t** %5, align 8
  store %struct.fdot_t* %1, %struct.fdot_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %12 = load float, float* %8, align 4
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %20, i64 %22
  %24 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.fdot_t*, %struct.fdot_t** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %26, i64 %28
  %30 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %29, i32 0, i32 0
  store float %25, float* %30, align 4
  %31 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = load %struct.fdot_t*, %struct.fdot_t** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %37, i64 %39
  %41 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %40, i32 0, i32 1
  store float %36, float* %41, align 4
  br label %42

42:                                               ; preds = %19
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %15

45:                                               ; preds = %15
  br label %106

46:                                               ; preds = %4
  %47 = load float, float* %8, align 4
  %48 = call i32 @DEGREE_TO_RAD(float %47)
  %49 = call float @sin(i32 %48)
  store float %49, float* %9, align 4
  %50 = load float, float* %8, align 4
  %51 = call i32 @DEGREE_TO_RAD(float %50)
  %52 = call float @cos(i32 %51)
  store float %52, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %103, %46
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %53
  %58 = load float, float* %10, align 4
  %59 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %59, i64 %61
  %63 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fmul float %58, %64
  %66 = load float, float* %9, align 4
  %67 = fneg float %66
  %68 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %68, i64 %70
  %72 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %71, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = fmul float %67, %73
  %75 = fadd float %65, %74
  %76 = load %struct.fdot_t*, %struct.fdot_t** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %76, i64 %78
  %80 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %79, i32 0, i32 0
  store float %75, float* %80, align 4
  %81 = load float, float* %9, align 4
  %82 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %82, i64 %84
  %86 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fmul float %81, %87
  %89 = load float, float* %10, align 4
  %90 = load %struct.fdot_t*, %struct.fdot_t** %5, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %90, i64 %92
  %94 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %93, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = fmul float %89, %95
  %97 = fadd float %88, %96
  %98 = load %struct.fdot_t*, %struct.fdot_t** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %98, i64 %100
  %102 = getelementptr inbounds %struct.fdot_t, %struct.fdot_t* %101, i32 0, i32 1
  store float %97, float* %102, align 4
  br label %103

103:                                              ; preds = %57
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %53

106:                                              ; preds = %45, %53
  ret void
}

declare dso_local float @sin(i32) #1

declare dso_local i32 @DEGREE_TO_RAD(float) #1

declare dso_local float @cos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
