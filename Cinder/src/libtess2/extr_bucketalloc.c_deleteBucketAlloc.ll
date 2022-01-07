; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_deleteBucketAlloc.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_deleteBucketAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BucketAlloc = type { %struct.BucketAlloc*, i64, %struct.BucketAlloc*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.BucketAlloc*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteBucketAlloc(%struct.BucketAlloc* %0) #0 {
  %2 = alloca %struct.BucketAlloc*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.BucketAlloc*, align 8
  %5 = alloca %struct.BucketAlloc*, align 8
  store %struct.BucketAlloc* %0, %struct.BucketAlloc** %2, align 8
  %6 = load %struct.BucketAlloc*, %struct.BucketAlloc** %2, align 8
  %7 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load %struct.BucketAlloc*, %struct.BucketAlloc** %2, align 8
  %10 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %9, i32 0, i32 0
  %11 = load %struct.BucketAlloc*, %struct.BucketAlloc** %10, align 8
  store %struct.BucketAlloc* %11, %struct.BucketAlloc** %4, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.BucketAlloc*, %struct.BucketAlloc** %4, align 8
  %14 = icmp ne %struct.BucketAlloc* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.BucketAlloc*, %struct.BucketAlloc** %4, align 8
  %17 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %16, i32 0, i32 2
  %18 = load %struct.BucketAlloc*, %struct.BucketAlloc** %17, align 8
  store %struct.BucketAlloc* %18, %struct.BucketAlloc** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i32, %struct.BucketAlloc*)*, i32 (i32, %struct.BucketAlloc*)** %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.BucketAlloc*, %struct.BucketAlloc** %4, align 8
  %26 = call i32 %21(i32 %24, %struct.BucketAlloc* %25)
  %27 = load %struct.BucketAlloc*, %struct.BucketAlloc** %5, align 8
  store %struct.BucketAlloc* %27, %struct.BucketAlloc** %4, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.BucketAlloc*, %struct.BucketAlloc** %2, align 8
  %30 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.BucketAlloc*, %struct.BucketAlloc** %2, align 8
  %32 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %31, i32 0, i32 0
  store %struct.BucketAlloc* null, %struct.BucketAlloc** %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32, %struct.BucketAlloc*)*, i32 (i32, %struct.BucketAlloc*)** %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.BucketAlloc*, %struct.BucketAlloc** %2, align 8
  %40 = call i32 %35(i32 %38, %struct.BucketAlloc* %39)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
