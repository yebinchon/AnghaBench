; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixShmSystemLock.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_unixShmSystemLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }
%struct.flock = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@SQLITE_SHM_NLOCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32)* @unixShmSystemLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixShmSystemLock(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.flock, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @sqlite3_mutex_held(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %22, %4
  %29 = phi i1 [ true, %4 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @F_RDLCK, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ true, %28 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SQLITE_SHM_NLOCK, align 4
  %47 = icmp sle i32 %45, %46
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = call i32 @osSetPosixAdvisoryLock(i64 %67, %struct.flock* %10, %struct.TYPE_8__* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @SQLITE_OK, align 4
  br label %76

74:                                               ; preds = %56
  %75 = load i32, i32* @SQLITE_BUSY, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %48
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @osSetPosixAdvisoryLock(i64, %struct.flock*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
