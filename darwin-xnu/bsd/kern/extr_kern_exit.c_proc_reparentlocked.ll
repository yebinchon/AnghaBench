; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_proc_reparentlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exit.c_proc_reparentlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, %struct.TYPE_9__*, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@p_sibling = common dso_local global i32 0, align 4
@initproc = common dso_local global %struct.TYPE_9__* null, align 8
@SZOMB = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_reparentlocked(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PROC_NULL, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = icmp eq %struct.TYPE_9__* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %72

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @proc_list_lock()
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @p_sibling, align 4
  %28 = call i32 @LIST_REMOVE(%struct.TYPE_9__* %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load i32, i32* @p_sibling, align 4
  %37 = call i32 @LIST_INSERT_HEAD(i32* %34, %struct.TYPE_9__* %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = call i32 (...) @proc_list_unlock()
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %22
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @initproc, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = icmp eq %struct.TYPE_9__* %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SZOMB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @initproc, align 8
  %65 = load i32, i32* @SIGCHLD, align 4
  %66 = call i32 @psignal(%struct.TYPE_9__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %57, %53, %22
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @proc_list_lock()
  br label %72

72:                                               ; preds = %16, %70, %67
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @psignal(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
