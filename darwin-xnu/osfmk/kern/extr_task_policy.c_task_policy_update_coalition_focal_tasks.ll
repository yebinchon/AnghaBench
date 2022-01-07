; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_policy_update_coalition_focal_tasks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_policy_update_coalition_focal_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@TASK_FOREGROUND_APPLICATION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@TASK_BACKGROUND_APPLICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, %struct.TYPE_3__*)* @task_policy_update_coalition_focal_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @task_policy_update_coalition_focal_tasks(i32 %0, i32 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TASK_FOREGROUND_APPLICATION, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TASK_FOREGROUND_APPLICATION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @task_coalition_adjust_focal_count(i32 %20, i32 1, i32* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** @TRUE, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %23, %19
  br label %54

32:                                               ; preds = %15, %4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TASK_FOREGROUND_APPLICATION, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TASK_FOREGROUND_APPLICATION, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @task_coalition_adjust_focal_count(i32 %41, i32 -1, i32* %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %44, %40
  br label %53

53:                                               ; preds = %52, %36, %32
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @TASK_BACKGROUND_APPLICATION, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TASK_BACKGROUND_APPLICATION, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @task_coalition_adjust_nonfocal_count(i32 %63, i32 1, i32* %10)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i8*, i8** @TRUE, align 8
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %69, %66, %62
  br label %91

72:                                               ; preds = %58, %54
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @TASK_BACKGROUND_APPLICATION, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @TASK_BACKGROUND_APPLICATION, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @task_coalition_adjust_nonfocal_count(i32 %81, i32 -1, i32* %10)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i8*, i8** @TRUE, align 8
  store i8* %88, i8** %9, align 8
  br label %89

89:                                               ; preds = %87, %84, %80
  br label %90

90:                                               ; preds = %89, %76, %72
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i8*, i8** %9, align 8
  ret i8* %98
}

declare dso_local i64 @task_coalition_adjust_focal_count(i32, i32, i32*) #1

declare dso_local i64 @task_coalition_adjust_nonfocal_count(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
