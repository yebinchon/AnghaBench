; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_CanUseExclusiveConnections.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_CanUseExclusiveConnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MultiShardConnectionType = common dso_local global i64 0, align 8
@SEQUENTIAL_CONNECTION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"cannot distribute \22%s\22 in sequential mode because it is not empty\00", align 1
@.str.1 = private unnamed_addr constant [176 x i8] c"If you have manually set citus.multi_shard_modify_mode to 'sequential', try with 'parallel' option. If that is not the case, try distributing local tables when they are empty.\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"cannot distribute relation \22%s\22 in this transaction because it has a foreign key to a reference table\00", align 1
@.str.3 = private unnamed_addr constant [180 x i8] c"If a hash distributed table has a foreign key to a reference table, it has to be created in sequential mode before any parallel commands have been executed in the same transaction\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"Try re-running the transaction with \22SET LOCAL citus.multi_shard_modify_mode TO 'sequential';\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CanUseExclusiveConnections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CanUseExclusiveConnections(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @HasForeignKeyToReferenceTable(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* @MultiShardConnectionType, align 8
  %13 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ true, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @get_rel_name(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @errhint(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %63

34:                                               ; preds = %23, %18
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = call i64 (...) @ParallelQueryExecutedInTransaction()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i8* @get_rel_name(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = call i32 @errdetail(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 @errhint(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %62

49:                                               ; preds = %37, %34
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i64 (...) @IsMultiStatementTransaction()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  store i32 1, i32* %3, align 4
  br label %64

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %26
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %59, %52
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @HasForeignKeyToReferenceTable(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @ParallelQueryExecutedInTransaction(...) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @IsMultiStatementTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
