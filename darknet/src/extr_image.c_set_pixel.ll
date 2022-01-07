; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_set_pixel.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_set_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, float)* @set_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pixel(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i32 %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float %4, float* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %18, %15, %12, %5
  br label %72

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %45, %47
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = phi i1 [ false, %39 ], [ false, %34 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load float, float* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %63, %65
  %67 = add nsw i32 %62, %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %55, i64 %70
  store float %53, float* %71, align 4
  br label %72

72:                                               ; preds = %49, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
