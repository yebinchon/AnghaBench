; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_CreateBucket.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_bucketalloc.c_CreateBucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BucketAlloc = type { i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BucketAlloc*)* @CreateBucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateBucket(%struct.BucketAlloc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BucketAlloc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.BucketAlloc* %0, %struct.BucketAlloc** %3, align 8
  %9 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %10 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %13 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 8, %16
  store i64 %17, i64* %4, align 8
  %18 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %19 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64 (i32, i64)*, i64 (i32, i64)** %21, align 8
  %23 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %24 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 %22(i32 %27, i64 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

34:                                               ; preds = %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %38 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %44 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %43, i32 0, i32 3
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %46 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = bitcast %struct.TYPE_4__* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %53 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %56 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %51, i64 %59
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %73, %34
  %62 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %63 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = bitcast i8* %70 to i8**
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %61, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.BucketAlloc*, %struct.BucketAlloc** %3, align 8
  %80 = getelementptr inbounds %struct.BucketAlloc, %struct.BucketAlloc* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %33
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
