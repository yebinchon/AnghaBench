; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_dopcontrol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_dopcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"low swap: throttling pid %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"low swap: suspending pid %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"low swap: killing pid %d (%s)\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@PROC_RETURNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_dopcontrol(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = call i32 @proc_lock(%struct.TYPE_9__* %4)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @PROC_CONTROL_STATE(%struct.TYPE_9__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i64 @PROC_ACTION_STATE(%struct.TYPE_9__* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %56 [
    i32 128, label %13
    i32 129, label %25
    i32 130, label %41
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @PROC_SETACTION_STATE(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call i32 @proc_unlock(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %23)
  br label %59

25:                                               ; preds = %11
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = call i32 @PROC_SETACTION_STATE(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @proc_unlock(%struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @task_suspend(i32 %39)
  br label %59

41:                                               ; preds = %11
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = call i32 @PROC_SETACTION_STATE(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i32 @proc_unlock(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = load i32, i32* @SIGKILL, align 4
  %55 = call i32 @psignal(%struct.TYPE_9__* %53, i32 %54)
  br label %59

56:                                               ; preds = %11
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = call i32 @proc_unlock(%struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %56, %41, %25, %13
  br label %63

60:                                               ; preds = %1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = call i32 @proc_unlock(%struct.TYPE_9__* %61)
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* @PROC_RETURNED, align 4
  ret i32 %64
}

declare dso_local i32 @proc_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @PROC_CONTROL_STATE(%struct.TYPE_9__*) #1

declare dso_local i64 @PROC_ACTION_STATE(%struct.TYPE_9__*) #1

declare dso_local i32 @PROC_SETACTION_STATE(%struct.TYPE_9__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @task_suspend(i32) #1

declare dso_local i32 @psignal(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
