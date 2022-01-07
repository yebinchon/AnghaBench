; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_server_executor.c_JobExecutorType.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_server_executor.c_JobExecutorType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@TaskExecutorType = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Plan is router executable\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"distribution column value: %s\00", align 1
@MULTI_EXECUTOR_ADAPTIVE = common dso_local global i64 0, align 8
@MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT = common dso_local global i64 0, align 8
@ROW_MODIFY_READONLY = common dso_local global i64 0, align 8
@EnableRepartitionJoins = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"the query contains a join that requires repartitioning\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Set citus.enable_repartition_joins to on to enable repartitioning\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"cannot use adaptive executor with repartition jobs\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"Since you enabled citus.enable_repartition_joins Citus chose to use task-tracker.\00", align 1
@MULTI_EXECUTOR_TASK_TRACKER = common dso_local global i64 0, align 8
@MaxTrackedTasksPerNode = common dso_local global double 0.000000e+00, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [92 x i8] c"this query assigns more tasks per node than the configured max_tracked_tasks_per_node limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @JobExecutorType(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %4, align 8
  %19 = load i64, i64* @TaskExecutorType, align 8
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %1
  %26 = load i32, i32* @DEBUG2, align 4
  %27 = call i64 @IsLoggableLevel(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @DatumToString(i32 %47, i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* @DEBUG2, align 4
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @ApplyLogRedaction(i8* %52)
  %54 = call i32 @errdetail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @ereport(i32 %50, i32 %54)
  br label %60

56:                                               ; preds = %35, %29
  %57 = load i32, i32* @DEBUG2, align 4
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %40
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i64, i64* @MULTI_EXECUTOR_ADAPTIVE, align 8
  store i64 %62, i64* %2, align 8
  br label %126

63:                                               ; preds = %1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT, align 8
  store i64 %69, i64* %2, align 8
  br label %126

70:                                               ; preds = %63
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ROW_MODIFY_READONLY, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @MULTI_EXECUTOR_ADAPTIVE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %70
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @list_length(i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load i32, i32* @EnableRepartitionJoins, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @errhint(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 @ereport(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* @DEBUG1, align 4
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %99 = call i32 @errhint(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %97, i32 %99)
  %101 = load i64, i64* @MULTI_EXECUTOR_TASK_TRACKER, align 8
  store i64 %101, i64* %2, align 8
  br label %126

102:                                              ; preds = %81
  br label %124

103:                                              ; preds = %70
  %104 = call i32* (...) @ActiveReadableWorkerNodeList()
  store i32* %104, i32** %12, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @list_length(i32* %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @list_length(i32* %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sitofp i32 %111 to double
  %113 = load i32, i32* %13, align 4
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %112, %114
  store double %115, double* %15, align 8
  %116 = load double, double* %15, align 8
  %117 = load double, double* @MaxTrackedTasksPerNode, align 8
  %118 = fcmp oge double %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load i32, i32* @WARNING, align 4
  %121 = call i32 @errmsg(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 @ereport(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %103
  br label %124

124:                                              ; preds = %123, %102
  %125 = load i64, i64* %5, align 8
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %124, %96, %68, %61
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local i64 @IsLoggableLevel(i32) #1

declare dso_local i8* @DatumToString(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @ApplyLogRedaction(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32* @ActiveReadableWorkerNodeList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
