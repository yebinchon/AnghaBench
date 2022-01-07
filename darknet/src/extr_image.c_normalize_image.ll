; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_normalize_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_normalize_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_image(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float 0x416312CFE0000000, float* %3, align 4
  store float -9.999990e+05, float* %4, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %9, %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %12, %14
  %16 = icmp slt i32 %7, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %19 = load float*, float** %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  store float %23, float* %5, align 4
  %24 = load float, float* %5, align 4
  %25 = load float, float* %3, align 4
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load float, float* %5, align 4
  store float %28, float* %3, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = load float, float* %5, align 4
  %31 = load float, float* %4, align 4
  %32 = fcmp ogt float %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load float, float* %5, align 4
  store float %34, float* %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load float, float* %4, align 4
  %41 = load float, float* %3, align 4
  %42 = fsub float %40, %41
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 1.000000e-09
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  br label %46

46:                                               ; preds = %45, %39
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %2, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %53, %55
  %57 = icmp slt i32 %48, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load float, float* %3, align 4
  %66 = fsub float %64, %65
  %67 = load float, float* %4, align 4
  %68 = load float, float* %3, align 4
  %69 = fsub float %67, %68
  %70 = fdiv float %66, %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  store float %70, float* %75, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %47

79:                                               ; preds = %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
