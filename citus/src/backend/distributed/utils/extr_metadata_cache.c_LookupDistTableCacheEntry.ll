; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_LookupDistTableCacheEntry.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_LookupDistTableCacheEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@citusVersionKnownCompatible = common dso_local global i32 0, align 4
@EnableVersionChecks = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@DistTableCacheHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32)* @LookupDistTableCacheEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @LookupDistTableCacheEntry(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = bitcast i32* %3 to i8*
  store i8* %9, i8** %6, align 8
  %10 = call i32 (...) @CitusHasBeenLoaded()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

13:                                               ; preds = %1
  %14 = call i32 (...) @InitializeCaches()
  %15 = load i32, i32* @citusVersionKnownCompatible, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @EnableVersionChecks, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @IsDistributedTableViaCatalog(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @DEBUG1, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @ERROR, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @CheckCitusVersion(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %17, %13
  %35 = load i32, i32* @DistTableCacheHash, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @HASH_ENTER, align 4
  %38 = call %struct.TYPE_6__* @hash_search(i32 %35, i8* %36, i32 %37, i32* %5)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = call i32 (...) @AcceptInvalidationMessages()
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %2, align 8
  br label %64

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = call i32 @ResetDistTableCacheEntry(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i32 @memset(i8* %55, i32 0, i32 0)
  %57 = call i32 (...) @HOLD_INTERRUPTS()
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = call i32 @BuildDistTableCacheEntry(%struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = call i32 (...) @RESUME_INTERRUPTS()
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %2, align 8
  br label %64

64:                                               ; preds = %52, %47, %32, %12
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %65
}

declare dso_local i32 @CitusHasBeenLoaded(...) #1

declare dso_local i32 @InitializeCaches(...) #1

declare dso_local i32 @IsDistributedTableViaCatalog(i32) #1

declare dso_local i32 @CheckCitusVersion(i32) #1

declare dso_local %struct.TYPE_6__* @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @AcceptInvalidationMessages(...) #1

declare dso_local i32 @ResetDistTableCacheEntry(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @BuildDistTableCacheEntry(%struct.TYPE_6__*) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
