; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GenerateAttachShardPartitionCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GenerateAttachShardPartitionCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8* }

@InvalidOid = common dso_local global i64 0, align 8
@INVALID_SHARD_ID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot attach partition\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Referenced relation cannot be found.\00", align 1
@WORKER_APPLY_INTER_SHARD_DDL_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GenerateAttachShardPartitionCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @get_rel_namespace(i64 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i8* @get_namespace_name(i64 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @quote_literal_cstr(i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @GenerateAlterTableAttachPartitionCommand(i64 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @quote_literal_cstr(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = call i32 @ShardIndex(%struct.TYPE_8__* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* @InvalidOid, align 8
  store i64 %31, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %32 = load i32, i32* @INVALID_SHARD_ID, align 4
  store i32 %32, i32* %12, align 4
  %33 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %13, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @PartitionParentOid(i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @InvalidOid, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @errdetail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %1
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @get_rel_namespace(i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i8* @get_namespace_name(i64 %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i8* @quote_literal_cstr(i8* %53)
  store i8* %54, i8** %11, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ColocatedShardIdInRelation(i64 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = load i32, i32* @WORKER_APPLY_INTER_SHARD_DDL_COMMAND, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @appendStringInfo(%struct.TYPE_7__* %58, i32 %59, i32 %60, i8* %61, i32 %64, i8* %65, i8* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  ret i8* %70
}

declare dso_local i64 @get_rel_namespace(i64) #1

declare dso_local i8* @get_namespace_name(i64) #1

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i8* @GenerateAlterTableAttachPartitionCommand(i64) #1

declare dso_local i32 @ShardIndex(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @makeStringInfo(...) #1

declare dso_local i64 @PartitionParentOid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @ColocatedShardIdInRelation(i64, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i32, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
