; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_set_identity_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_set_identity_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rgbvec* }
%struct.rgbvec = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @set_identity_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_identity_matrix(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.rgbvec*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sitofp i32 %21 to double
  %23 = fdiv double 1.000000e+00, %22
  %24 = fptrunc double %23 to float
  store float %24, float* %12, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @allocate_3dlut(%struct.TYPE_6__* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %91, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %87, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.rgbvec*, %struct.rgbvec** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %50, i64 %60
  store %struct.rgbvec* %61, %struct.rgbvec** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %12, align 4
  %65 = fmul float %63, %64
  %66 = fptosi float %65 to i32
  %67 = load %struct.rgbvec*, %struct.rgbvec** %13, align 8
  %68 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float, float* %12, align 4
  %72 = fmul float %70, %71
  %73 = fptosi float %72 to i32
  %74 = load %struct.rgbvec*, %struct.rgbvec** %13, align 8
  %75 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sitofp i32 %76 to float
  %78 = load float, float* %12, align 4
  %79 = fmul float %77, %78
  %80 = fptosi float %79 to i32
  %81 = load %struct.rgbvec*, %struct.rgbvec** %13, align 8
  %82 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %47
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %43

86:                                               ; preds = %43
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %38

90:                                               ; preds = %38
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %33

94:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %30
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @allocate_3dlut(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
