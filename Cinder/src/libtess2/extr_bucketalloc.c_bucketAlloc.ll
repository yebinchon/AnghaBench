; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_bucketAlloc.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_bucketAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BucketAlloc = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bucketAlloc(%struct.BucketAlloc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.BucketAlloc*, align 8
  %4 = alloca i8*, align 8
  store %struct.BucketAlloc* %0, %struct.BucketAlloc** %3, align 8
  %5 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %6 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %11 = call i8* @NextFreeItem(%struct.BucketAlloc* %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %15 = call i32 @CreateBucket(%struct.BucketAlloc* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %28

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %9
  %20 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %21 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %24 = call i8* @NextFreeItem(%struct.BucketAlloc* %23)
  %25 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %26 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local i8* @NextFreeItem(%struct.BucketAlloc*) #1

declare dso_local i32 @CreateBucket(%struct.BucketAlloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
