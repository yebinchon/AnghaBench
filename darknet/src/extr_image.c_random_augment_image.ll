; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_random_augment_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_random_augment_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_augment_image(i32 %0, float %1, float %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load float, float* %9, align 4
  %19 = load float, float* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  call void @random_augment_args(%struct.TYPE_3__* sret %15, i32 %17, float %18, float %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rotate_crop_image(i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  ret i32 %40
}

declare dso_local void @random_augment_args(%struct.TYPE_3__* sret, i32, float, float, i32, i32, i32, i32) #1

declare dso_local i32 @rotate_crop_image(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
