; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GenerateAlterTableAttachPartitionCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_multi_partitioning_utils.c_GenerateAlterTableAttachPartitionCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\22%s\22 is not a partition\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ALTER TABLE %s ATTACH PARTITION %s %s;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GenerateAlterTableAttachPartitionCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  store i8* null, i8** %4, align 8
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @PartitionTable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i8* @get_rel_name(i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @ereport(i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @get_partition_parent(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i8* @generate_qualified_relation_name(i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @generate_qualified_relation_name(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call i8* @PartitionBound(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @appendStringInfo(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32, i8* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  ret i8* %37
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i32 @PartitionTable(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @get_partition_parent(i32) #1

declare dso_local i8* @generate_qualified_relation_name(i32) #1

declare dso_local i8* @PartitionBound(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
