; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_resetpcontrol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_resetpcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i8*, i32 }

@P_LVMRSRCOWNER = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"low swap: unthrottling pid %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"low swap: resuming pid %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"low swap: attempt to unkill pid %d (%s) ignored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_resetpcontrol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call %struct.TYPE_12__* (...) @current_proc()
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @P_LVMRSRCOWNER, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 (...) @kauth_cred_get()
  %17 = call i32 @suser(i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.TYPE_12__* @proc_find(i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PROC_NULL, align 8
  %26 = icmp eq %struct.TYPE_12__* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 @proc_lock(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = call i32 @PROC_CONTROL_STATE(%struct.TYPE_12__* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i64 @PROC_ACTION_STATE(%struct.TYPE_12__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %79 [
    i32 128, label %39
    i32 129, label %51
    i32 130, label %67
  ]

39:                                               ; preds = %37
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @PROC_RESETACTION_STATE(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @proc_unlock(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %49)
  br label %82

51:                                               ; preds = %37
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = call i32 @PROC_RESETACTION_STATE(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = call i32 @proc_unlock(%struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @task_resume(i32 %65)
  br label %82

67:                                               ; preds = %37
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i32 @PROC_SETACTION_STATE(%struct.TYPE_12__* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = call i32 @proc_unlock(%struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %77)
  br label %82

79:                                               ; preds = %37
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = call i32 @proc_unlock(%struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %79, %67, %51, %39
  br label %86

83:                                               ; preds = %29
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = call i32 @proc_unlock(%struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %83, %82
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call i32 @proc_rele(%struct.TYPE_12__* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %27, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_12__* @current_proc(...) #1

declare dso_local i32 @suser(i32, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local %struct.TYPE_12__* @proc_find(i32) #1

declare dso_local i32 @proc_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @PROC_CONTROL_STATE(%struct.TYPE_12__*) #1

declare dso_local i64 @PROC_ACTION_STATE(%struct.TYPE_12__*) #1

declare dso_local i32 @PROC_RESETACTION_STATE(%struct.TYPE_12__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @task_resume(i32) #1

declare dso_local i32 @PROC_SETACTION_STATE(%struct.TYPE_12__*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
