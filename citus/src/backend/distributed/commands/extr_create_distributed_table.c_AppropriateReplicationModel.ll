; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_AppropriateReplicationModel.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_AppropriateReplicationModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ReplicationModel = common dso_local global i64 0, align 8
@REPLICATION_MODEL_COORDINATOR = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"using statement-based replication\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"The current replication_model setting is 'streaming', which is not supported by master_create_distributed_table.\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Use create_distributed_table to use the streaming replication model.\00", align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@REPLICATION_MODEL_2PC = common dso_local global i8 0, align 1
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Streaming replication is supported only for hash-distributed tables.\00", align 1
@REPLICATION_MODEL_INVALID = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, i32)* @AppropriateReplicationModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @AppropriateReplicationModel(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i64, i64* @ReplicationModel, align 8
  %10 = load i64, i64* @REPLICATION_MODEL_COORDINATOR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @NOTICE, align 4
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @errdetail(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @errhint(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i64, i64* @REPLICATION_MODEL_COORDINATOR, align 8
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %3, align 1
  br label %50

21:                                               ; preds = %2
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8, i8* @REPLICATION_MODEL_2PC, align 1
  store i8 %28, i8* %3, align 1
  br label %50

29:                                               ; preds = %21
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @ReplicationModel, align 8
  %37 = trunc i64 %36 to i8
  store i8 %37, i8* %3, align 1
  br label %50

38:                                               ; preds = %29
  %39 = load i64, i64* @ReplicationModel, align 8
  %40 = load i64, i64* @REPLICATION_MODEL_COORDINATOR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @NOTICE, align 4
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @errdetail(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* @REPLICATION_MODEL_COORDINATOR, align 8
  %49 = trunc i64 %48 to i8
  store i8 %49, i8* %3, align 1
  br label %50

50:                                               ; preds = %47, %35, %27, %18
  %51 = load i8, i8* %3, align 1
  ret i8 %51
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
