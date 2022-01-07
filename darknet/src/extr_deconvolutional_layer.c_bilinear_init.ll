; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_bilinear_init.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_bilinear_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bilinear_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 2.000000e+00
  %14 = fptrunc double %13 to float
  store float %14, float* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %92, %1
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %95

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %88, %20
  %22 = load i32, i32* %3, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* %5, align 4
  %36 = fsub float %34, %35
  %37 = fptosi float %36 to i32
  %38 = call i32 @fabs(i32 %37)
  %39 = sub nsw i32 1, %38
  %40 = load i32, i32* %3, align 4
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %5, align 4
  %43 = fsub float %41, %42
  %44 = fptosi float %43 to i32
  %45 = call i32 @fabs(i32 %44)
  %46 = sub nsw i32 1, %45
  %47 = mul nsw i32 %39, %46
  %48 = sitofp i32 %47 to float
  store float %48, float* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %49, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %66, %68
  %70 = add nsw i32 %62, %69
  %71 = load i32, i32* %3, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %71, %73
  %75 = add nsw i32 %70, %74
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %8, align 4
  %78 = load float, float* %6, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %80 = load float*, float** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  store float %78, float* %83, align 4
  br label %84

84:                                               ; preds = %32
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %27

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %21

91:                                               ; preds = %21
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %15

95:                                               ; preds = %15
  ret void
}

declare dso_local i32 @fabs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
