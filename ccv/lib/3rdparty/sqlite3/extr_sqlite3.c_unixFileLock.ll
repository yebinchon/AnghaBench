; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixFileLock.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixFileLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.flock = type { i32, i32, i32, i32 }

@UNIXFILE_EXCL = common dso_local global i32 0, align 4
@UNIXFILE_RDONLY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SHARED_FIRST = common dso_local global i32 0, align 4
@SHARED_SIZE = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.flock*)* @unixFileLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixFileLock(%struct.TYPE_6__* %0, %struct.flock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.flock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.flock, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.flock* %1, %struct.flock** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = call i32 (...) @unixMutexHeld()
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UNIXFILE_EXCL, align 4
  %22 = load i32, i32* @UNIXFILE_RDONLY, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @UNIXFILE_EXCL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SHARED_FIRST, align 4
  %42 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SHARED_SIZE, align 4
  %44 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @F_WRLCK, align 4
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = call i32 @osSetPosixAdvisoryLock(i32 %49, %struct.flock* %8, %struct.TYPE_6__* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %64

63:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %72

65:                                               ; preds = %2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.flock*, %struct.flock** %5, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = call i32 @osSetPosixAdvisoryLock(i32 %68, %struct.flock* %69, %struct.TYPE_6__* %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %54
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @osSetPosixAdvisoryLock(i32, %struct.flock*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
