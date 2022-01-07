; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixLockSharedMemory.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixLockSharedMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.flock = type { i32, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UNIX_SHM_DMS = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8
@F_GETLK = common dso_local global i32 0, align 4
@SQLITE_IOERR_LOCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@SQLITE_READONLY_CANTINIT = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHMOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@SQLITE_BUSY = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @unixLockSharedMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixLockSharedMemory(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.flock, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @UNIX_SHM_DMS, align 4
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i64, i64* @F_WRLCK, align 8
  %14 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @F_GETLK, align 4
  %19 = call i64 @osFcntl(i32 %17, i32 %18, %struct.flock* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SQLITE_IOERR_LOCK, align 4
  store i32 %22, i32* %6, align 4
  br label %68

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @F_UNLCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @SQLITE_READONLY_CANTINIT, align 4
  store i32 %36, i32* %6, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* @F_WRLCK, align 8
  %40 = load i32, i32* @UNIX_SHM_DMS, align 4
  %41 = call i32 @unixShmSystemLock(i32* %38, i64 %39, i32 %40, i32 1)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @robust_ftruncate(i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @SQLITE_IOERR_SHMOPEN, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @unixLogError(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %45, %37
  br label %58

58:                                               ; preds = %57, %33
  br label %67

59:                                               ; preds = %23
  %60 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @F_WRLCK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @F_UNLCK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @F_RDLCK, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ true, %72 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i64, i64* @F_RDLCK, align 8
  %88 = load i32, i32* @UNIX_SHM_DMS, align 4
  %89 = call i32 @unixShmSystemLock(i32* %86, i64 %87, i32 %88, i32 1)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %82, %68
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @osFcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @unixShmSystemLock(i32*, i64, i32, i32) #1

declare dso_local i64 @robust_ftruncate(i32, i32) #1

declare dso_local i32 @unixLogError(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
