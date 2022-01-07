; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ReplicateSingleShardTableToAllNodes.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ReplicateSingleShardTableToAllNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot upgrade to reference table\00", align 1
@.str.1 = private unnamed_addr constant [116 x i8] c"Relation \22%s\22 is part of a foreign constraint. Foreign key constraints are not allowed from or to reference tables.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ReplicateSingleShardTableToAllNodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReplicateSingleShardTableToAllNodes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32* @LoadShardIntervalList(i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @linitial(i32* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i32* @CopyShardForeignConstraintCommandList(%struct.TYPE_4__* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** @NIL, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @TableReferenced(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %2, align 4
  %27 = call i8* @get_rel_name(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @errdetail(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call i32 @ereport(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %25, %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = call i32 @ReplicateShardToAllNodes(%struct.TYPE_4__* %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ConvertToReferenceTableMetadata(i32 %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @CreateTableMetadataOnWorkers(i32 %41)
  ret void
}

declare dso_local i32* @LoadShardIntervalList(i32) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32* @CopyShardForeignConstraintCommandList(%struct.TYPE_4__*) #1

declare dso_local i64 @TableReferenced(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @ReplicateShardToAllNodes(%struct.TYPE_4__*) #1

declare dso_local i32 @ConvertToReferenceTableMetadata(i32, i32) #1

declare dso_local i32 @CreateTableMetadataOnWorkers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
