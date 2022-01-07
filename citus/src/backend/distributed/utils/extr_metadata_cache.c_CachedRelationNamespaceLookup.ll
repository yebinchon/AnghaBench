; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CachedRelationNamespaceLookup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CachedRelationNamespaceLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cache lookup failed for %s, called too early?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64*)* @CachedRelationNamespaceLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CachedRelationNamespaceLookup(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = call i32 (...) @InitializeCaches()
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @get_relname_relid(i8* %13, i64 %14)
  %16 = load i64*, i64** %6, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @InvalidOid, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %12
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @InitializeCaches(...) #1

declare dso_local i64 @get_relname_relid(i8*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
