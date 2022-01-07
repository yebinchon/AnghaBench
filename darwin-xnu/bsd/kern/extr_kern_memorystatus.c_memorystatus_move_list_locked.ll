; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_move_list_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_move_list_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@MEMSTAT_BUCKET_COUNT = common dso_local global i32 0, align 4
@memstat_bucket = common dso_local global %struct.TYPE_10__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@p_memstat_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @memorystatus_move_list_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_move_list_locked(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %87

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MEMSTAT_BUCKET_COUNT, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %87

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @memstat_bucket, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 %30
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %82, %27
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %11, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %14, align 8
  %47 = load i32, i32* @FALSE, align 4
  %48 = call %struct.TYPE_9__* @memorystatus_get_first_proc_locked(i32* %11, i32 %47)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %12, align 8
  br label %49

49:                                               ; preds = %60, %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %13, align 8
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call %struct.TYPE_9__* @memorystatus_get_next_proc_locked(i32* %11, %struct.TYPE_9__* %61, i32 %62)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %12, align 8
  br label %49

64:                                               ; preds = %58, %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = icmp eq %struct.TYPE_9__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %82

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = load i32, i32* @p_memstat_list, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %70, %struct.TYPE_9__* %71, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %77 = load i32, i32* @p_memstat_list, align 4
  %78 = call i32 @TAILQ_INSERT_HEAD(i32* %75, %struct.TYPE_9__* %76, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %32

85:                                               ; preds = %32
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %26, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_9__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
