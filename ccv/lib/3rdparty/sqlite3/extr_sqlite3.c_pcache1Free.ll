; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pcache1Free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pcache1Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@pcache1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SQLITE_STATUS_PAGECACHE_USED = common dso_local global i32 0, align 4
@MEMTYPE_PCACHE = common dso_local global i32 0, align 4
@MEMTYPE_HEAP = common dso_local global i32 0, align 4
@SQLITE_STATUS_PAGECACHE_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pcache1Free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcache1Free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 7), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 6), align 8
  %12 = call i64 @SQLITE_WITHIN(i8* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  %16 = call i32 @sqlite3_mutex_enter(i32 %15)
  %17 = load i32, i32* @SQLITE_STATUS_PAGECACHE_USED, align 4
  %18 = call i32 @sqlite3StatusDown(i32 %17, i32 1)
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 5), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 2), align 8
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 1), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 0), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 3), align 8
  %33 = icmp sle i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  %37 = call i32 @sqlite3_mutex_leave(i32 %36)
  br label %57

38:                                               ; preds = %8
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* @MEMTYPE_PCACHE, align 4
  %41 = call i32 @sqlite3MemdebugHasType(i8* %39, i32 %40)
  %42 = call i32 @assert(i32 %41)
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @MEMTYPE_HEAP, align 4
  %45 = call i32 @sqlite3MemdebugSetType(i8* %43, i32 %44)
  store i32 0, i32* %4, align 4
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @sqlite3MallocSize(i8* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  %49 = call i32 @sqlite3_mutex_enter(i32 %48)
  %50 = load i32, i32* @SQLITE_STATUS_PAGECACHE_OVERFLOW, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @sqlite3StatusDown(i32 %50, i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcache1, i32 0, i32 4), align 8
  %54 = call i32 @sqlite3_mutex_leave(i32 %53)
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @sqlite3_free(i8* %55)
  br label %57

57:                                               ; preds = %7, %38, %14
  ret void
}

declare dso_local i64 @SQLITE_WITHIN(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3StatusDown(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3MemdebugHasType(i8*, i32) #1

declare dso_local i32 @sqlite3MemdebugSetType(i8*, i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
