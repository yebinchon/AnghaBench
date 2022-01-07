; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_InvalidateDistRelationCacheCallback.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_InvalidateDistRelationCacheCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@DistTableCacheHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@MetadataCache = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @InvalidateDistRelationCacheCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InvalidateDistRelationCacheCallback(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @InvalidOid, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (...) @InvalidateDistTableCache()
  %13 = call i32 (...) @InvalidateDistObjectCache()
  br label %38

14:                                               ; preds = %2
  %15 = bitcast i64* %4 to i8*
  store i8* %15, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @DistTableCacheHash, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @HASH_FIND, align 4
  %19 = call %struct.TYPE_4__* @hash_search(i32 %16, i8* %17, i32 %18, i32* %6)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %14
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @MetadataCache, i32 0, i32 0), align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @InvalidateMetadataSystemCache()
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @MetadataCache, i32 0, i32 1), align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @InvalidateDistObjectCache()
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %11
  ret void
}

declare dso_local i32 @InvalidateDistTableCache(...) #1

declare dso_local i32 @InvalidateDistObjectCache(...) #1

declare dso_local %struct.TYPE_4__* @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @InvalidateMetadataSystemCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
