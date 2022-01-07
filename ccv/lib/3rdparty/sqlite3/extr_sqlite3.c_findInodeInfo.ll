; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_findInodeInfo.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_findInodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFileId = type { i32, %struct.unixFileId*, %struct.unixFileId*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.stat = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@SQLITE_IOERR = common dso_local global i32 0, align 4
@inodeList = common dso_local global %struct.unixFileId* null, align 8
@nUnusedFd = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@SQLITE_FSFLAGS_IS_MSDOS = common dso_local global i32 0, align 4
@SQLITE_NOLFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.unixFileId**)* @findInodeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findInodeInfo(%struct.TYPE_4__* %0, %struct.unixFileId** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.unixFileId**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.unixFileId, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.unixFileId*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.unixFileId** %1, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* null, %struct.unixFileId** %10, align 8
  %11 = call i32 (...) @unixMutexHeld()
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @osFstat(i32 %16, %struct.stat* %9)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @storeLastErrno(%struct.TYPE_4__* %21, i64 %22)
  %24 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.unixFileId* %8, i32 0, i32 48)
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 6
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 4
  store i64 %31, i64* %32, align 8
  %33 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %34 = icmp ne %struct.unixFileId* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i64, i64* @nUnusedFd, align 8
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i1 [ true, %25 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  store %struct.unixFileId* %42, %struct.unixFileId** %10, align 8
  br label %43

43:                                               ; preds = %53, %38
  %44 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %45 = icmp ne %struct.unixFileId* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %48 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %47, i32 0, i32 3
  %49 = call i64 @memcmp(%struct.unixFileId* %8, i32* %48, i32 48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %55 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %54, i32 0, i32 2
  %56 = load %struct.unixFileId*, %struct.unixFileId** %55, align 8
  store %struct.unixFileId* %56, %struct.unixFileId** %10, align 8
  br label %43

57:                                               ; preds = %51
  %58 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %59 = icmp eq %struct.unixFileId* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = call %struct.unixFileId* @sqlite3_malloc64(i32 48)
  store %struct.unixFileId* %61, %struct.unixFileId** %10, align 8
  %62 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %63 = icmp eq %struct.unixFileId* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %65, i32* %3, align 4
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %68 = call i32 @memset(%struct.unixFileId* %67, i32 0, i32 48)
  %69 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %70 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %69, i32 0, i32 3
  %71 = call i32 @memcpy(i32* %70, %struct.unixFileId* %8, i32 48)
  %72 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %73 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %75 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %76 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %75, i32 0, i32 2
  store %struct.unixFileId* %74, %struct.unixFileId** %76, align 8
  %77 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %78 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %77, i32 0, i32 1
  store %struct.unixFileId* null, %struct.unixFileId** %78, align 8
  %79 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %80 = icmp ne %struct.unixFileId* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %83 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %84 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %83, i32 0, i32 1
  store %struct.unixFileId* %82, %struct.unixFileId** %84, align 8
  br label %85

85:                                               ; preds = %81, %66
  %86 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  store %struct.unixFileId* %86, %struct.unixFileId** @inodeList, align 8
  br label %92

87:                                               ; preds = %57
  %88 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %89 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %85
  %93 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %94 = load %struct.unixFileId**, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* %93, %struct.unixFileId** %94, align 8
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %64, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @osFstat(i32, %struct.stat*) #1

declare dso_local i32 @storeLastErrno(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memset(%struct.unixFileId*, i32, i32) #1

declare dso_local i64 @memcmp(%struct.unixFileId*, i32*, i32) #1

declare dso_local %struct.unixFileId* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.unixFileId*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
