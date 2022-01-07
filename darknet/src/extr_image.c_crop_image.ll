; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_crop_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_crop_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crop_image(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  store i32 %5, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  call void @make_image(%struct.TYPE_7__* sret %0, i32 %17, i32 %18, i32 %20)
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %70, %6
  %22 = load i32, i32* %13, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @constrain_int(i32 %43, i32 0, i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @constrain_int(i32 %48, i32 0, i64 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call float @get_pixel(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1, i32 %53, i32 %54, i32 %55)
  store float %56, float* %16, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load float, float* %16, align 4
  %61 = call i32 @set_pixel(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 %57, i32 %58, i32 %59, float %60)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %32

65:                                               ; preds = %32
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %27

69:                                               ; preds = %27
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %21

73:                                               ; preds = %21
  ret void
}

declare dso_local void @make_image(%struct.TYPE_7__* sret, i32, i32, i32) #1

declare dso_local i32 @constrain_int(i32, i32, i64) #1

declare dso_local float @get_pixel(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i32, i32) #1

declare dso_local i32 @set_pixel(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
