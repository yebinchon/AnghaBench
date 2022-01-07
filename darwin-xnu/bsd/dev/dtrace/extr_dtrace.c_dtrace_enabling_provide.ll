; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_provide.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i8*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (i8*, i32*)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_provider = common dso_local global %struct.TYPE_11__* null, align 8
@dtrace_retained_gen = common dso_local global i64 0, align 8
@dtrace_retained = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @dtrace_enabling_provide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_enabling_provide(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %9)
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_provider_lock, i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dtrace_provider, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %2, align 8
  br label %17

17:                                               ; preds = %15, %1
  br label %18

18:                                               ; preds = %75, %17
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %56, %18
  %23 = load i64, i64* @dtrace_retained_gen, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtrace_retained, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %7, align 8
  br label %25

25:                                               ; preds = %62, %22
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %38, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 %49(i8* %50, i32* %5)
  %52 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @dtrace_retained_gen, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %22

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %29

61:                                               ; preds = %29
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %7, align 8
  br label %25

66:                                               ; preds = %25
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %2, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  br i1 %76, label %18, label %77

77:                                               ; preds = %75
  %78 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %84

82:                                               ; preds = %77
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi %struct.TYPE_11__* [ null, %81 ], [ %83, %82 ]
  %86 = call i32 @dtrace_probe_provide(i32* null, %struct.TYPE_11__* %85)
  %87 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @dtrace_probe_provide(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
