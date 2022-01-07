; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_ref_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_ref_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@P_LIST_INCREATE = common dso_local global i32 0, align 4
@SZOMB = common dso_local global i64 0, align 8
@P_LIST_EXITED = common dso_local global i32 0, align 4
@P_LIST_DEAD = common dso_local global i32 0, align 4
@P_LIST_DRAIN = common dso_local global i32 0, align 4
@P_LIST_DRAINWAIT = common dso_local global i32 0, align 4
@P_LIST_REFWAIT = common dso_local global i32 0, align 4
@proc_list_mlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"proc_refwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @proc_ref_locked(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i32 @proc_pid(%struct.TYPE_8__* %7)
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %72, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  %12 = icmp eq %struct.TYPE_8__* %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = icmp ne %struct.TYPE_8__* %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @P_LIST_INCREATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17, %13, %9
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %2, align 8
  br label %90

26:                                               ; preds = %17
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SZOMB, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @P_LIST_EXITED, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @P_LIST_DEAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %39
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @P_LIST_DRAIN, align 4
  %51 = load i32, i32* @P_LIST_DRAINWAIT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @P_LIST_REFWAIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %55, %46
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @P_LIST_REFWAIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = call i64 (...) @uthread_needs_to_wait_in_proc_refwait()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* @proc_list_mlock, align 4
  %76 = call i32 @msleep(i32* %74, i32 %75, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %77 = load i32, i32* %5, align 4
  %78 = call %struct.TYPE_8__* @pfind_locked(i32 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %3, align 8
  br label %9

79:                                               ; preds = %69, %62
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = call i32 @record_procref(%struct.TYPE_8__* %84, i32 1)
  br label %88

86:                                               ; preds = %55, %39, %32, %26
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %4, align 8
  br label %88

88:                                               ; preds = %86, %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %2, align 8
  br label %90

90:                                               ; preds = %88, %24
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %91
}

declare dso_local i32 @proc_pid(%struct.TYPE_8__*) #1

declare dso_local i64 @uthread_needs_to_wait_in_proc_refwait(...) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @pfind_locked(i32) #1

declare dso_local i32 @record_procref(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
