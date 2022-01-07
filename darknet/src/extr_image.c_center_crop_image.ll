; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_center_crop_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_center_crop_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @center_crop_image(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %0, i64* %10, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sdiv i32 %27, 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = bitcast %struct.TYPE_9__* %5 to i64*
  %37 = load i64, i64* %36, align 4
  %38 = call i64 @crop_image(i64 %37, i32 %28, i32 %33, i32 %34, i32 %35)
  %39 = bitcast %struct.TYPE_9__* %9 to i64*
  store i64 %38, i64* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = bitcast %struct.TYPE_9__* %9 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i64 @resize_image(i64 %43, i32 %40, i32 %41)
  %45 = bitcast %struct.TYPE_9__* %4 to i64*
  store i64 %44, i64* %45, align 4
  %46 = bitcast %struct.TYPE_9__* %9 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i32 @free_image(i64 %47)
  %49 = bitcast %struct.TYPE_9__* %4 to i64*
  %50 = load i64, i64* %49, align 4
  ret i64 %50
}

declare dso_local i64 @crop_image(i64, i32, i32, i32, i32) #1

declare dso_local i64 @resize_image(i64, i32, i32) #1

declare dso_local i32 @free_image(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
