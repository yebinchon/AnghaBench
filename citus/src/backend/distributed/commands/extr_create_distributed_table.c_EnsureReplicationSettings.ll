; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureReplicationSettings.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureReplicationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"the streaming replication model\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c" or setting \22citus.replication_model\22 to \22statement\22\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"tables which use the streaming replication model\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REPLICATION_MODEL_STREAMING = common dso_local global i8 0, align 1
@ShardReplicationFactor = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"replication factors above one are incompatible with %s\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Try again after reducing \22citus.shard_replication_factor\22 to one%s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnsureReplicationSettings(i64 %0, i8 signext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8 %1, i8* %4, align 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @InvalidOid, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @REPLICATION_MODEL_STREAMING, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* @ShardReplicationFactor, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @errhint(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %20, %17, %11
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
