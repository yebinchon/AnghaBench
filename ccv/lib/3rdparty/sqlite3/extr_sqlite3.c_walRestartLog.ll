; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walRestartLog.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_walRestartLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@WAL_RETRY = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @walRestartLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walRestartLog(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__* %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load volatile i64, i64* %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load volatile i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %14
  %32 = call i32 @sqlite3_randomness(i32 4, i32* %7)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @WAL_READ_LOCK(i32 1)
  %35 = load i64, i64* @WAL_NREADER, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @walLockExclusive(%struct.TYPE_14__* %33, i32 %34, i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @walRestartHdr(%struct.TYPE_14__* %42, i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = call i32 @WAL_READ_LOCK(i32 1)
  %47 = load i64, i64* @WAL_NREADER, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @walUnlockExclusive(%struct.TYPE_14__* %45, i32 %46, i64 %48)
  br label %57

50:                                               ; preds = %31
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SQLITE_BUSY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %98

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call i32 @WAL_READ_LOCK(i32 0)
  %61 = call i32 @walUnlockShared(%struct.TYPE_14__* %59, i32 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %69, %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = call i32 @walTryBeginRead(%struct.TYPE_14__* %65, i32* %8, i32 1, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @WAL_RETRY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %64, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 255
  %76 = load i32, i32* @SQLITE_BUSY, align 4
  %77 = icmp ne i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 255
  %82 = load i32, i32* @SQLITE_IOERR, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @testcase(i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SQLITE_PROTOCOL, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @testcase(i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @testcase(i32 %94)
  br label %96

96:                                               ; preds = %73, %1
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %54
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_13__* @walCkptInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i32 @walLockExclusive(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @WAL_READ_LOCK(i32) #1

declare dso_local i32 @walRestartHdr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @walUnlockShared(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @walTryBeginRead(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
