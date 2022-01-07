; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_HashPartitionId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_HashPartitionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32*, i32**, i32* }

@HASH_TOKEN_COUNT = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @HashPartitionId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HashPartitionId(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %6, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %9, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @FunctionCall1Coll(i32* %29, i32 %32, i64 %33)
  store i64 %34, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* @HASH_TOKEN_COUNT, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @DatumGetInt32(i64 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @INT32_MIN, align 8
  %52 = sub nsw i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %13, align 4
  br label %62

56:                                               ; preds = %39
  %57 = load i64, i64* %11, align 8
  %58 = load i32**, i32*** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @SearchCachedShardInterval(i64 %57, i32** %58, i32 %59, i32* %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %56, %44
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %37
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @FunctionCall1Coll(i32*, i32, i64) #1

declare dso_local i64 @DatumGetInt32(i64) #1

declare dso_local i32 @SearchCachedShardInterval(i64, i32**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
