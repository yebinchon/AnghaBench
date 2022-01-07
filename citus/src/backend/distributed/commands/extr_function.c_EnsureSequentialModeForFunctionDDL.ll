; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_EnsureSequentialModeForFunctionDDL.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_EnsureSequentialModeForFunctionDDL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"cannot create function because there was a parallel operation on a distributed table in the transaction\00", align 1
@.str.1 = private unnamed_addr constant [133 x i8] c"When creating a distributed function, Citus needs to perform all operations over a single connection per node to ensure consistency.\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"Try re-running the transaction with \22SET LOCAL citus.multi_shard_modify_mode TO 'sequential';\22\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"switching to sequential query execution mode\00", align 1
@.str.4 = private unnamed_addr constant [163 x i8] c"A distributed function is created. To make sure subsequent commands see the type correctly we need to make sure to use only one connection for all future commands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @EnsureSequentialModeForFunctionDDL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnsureSequentialModeForFunctionDDL() #0 {
  %1 = call i64 (...) @ParallelQueryExecutedInTransaction()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @ERROR, align 4
  %5 = call i32 @errmsg(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @errdetail(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @errhint(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @ereport(i32 %4, i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load i32, i32* @DEBUG1, align 4
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @errdetail(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %10, i32 %12)
  %14 = call i32 (...) @SetLocalMultiShardModifyModeToSequential()
  ret void
}

declare dso_local i64 @ParallelQueryExecutedInTransaction(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SetLocalMultiShardModifyModeToSequential(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
