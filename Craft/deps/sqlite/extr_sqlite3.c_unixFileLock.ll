; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_unixFileLock.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_unixFileLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.flock = type { i32, i32, i32, i32 }

@UNIXFILE_EXCL = common dso_local global i32 0, align 4
@UNIXFILE_RDONLY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SHARED_FIRST = common dso_local global i32 0, align 4
@SHARED_SIZE = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.flock*)* @unixFileLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixFileLock(%struct.TYPE_5__* %0, %struct.flock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.flock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.flock, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.flock* %1, %struct.flock** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = call i32 (...) @unixMutexHeld()
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UNIXFILE_EXCL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %24, %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UNIXFILE_RDONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @SHARED_FIRST, align 4
  %51 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @SHARED_SIZE, align 4
  %53 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @F_WRLCK, align 4
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @F_SETLK, align 4
  %60 = call i32 @osFcntl(i32 %58, i32 %59, %struct.flock* %8)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %83

65:                                               ; preds = %41
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %73

72:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %65
  br label %81

74:                                               ; preds = %29, %24
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @F_SETLK, align 4
  %79 = load %struct.flock*, %struct.flock** %5, align 8
  %80 = call i32 @osFcntl(i32 %77, i32 %78, %struct.flock* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %74, %73
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %63
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @osFcntl(i32, i32, %struct.flock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
