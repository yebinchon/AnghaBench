; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_GetDistributedTableDDLEvents.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_GetDistributedTableDDLEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetDistributedTableDDLEvents(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32* @DistributedTableCacheEntry(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** @NIL, align 8
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** @NIL, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** @NIL, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** @NIL, align 8
  store i32* %22, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 1, i32* %13, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32* @SequenceDDLCommandsForTable(i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @list_concat(i32* %25, i32* %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32* @GetTableDDLEvents(i32 %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @list_concat(i32* %31, i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i8* @TableOwnerResetCommand(i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32* @lappend(i32* %36, i8* %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i8* @DistributionCreateCommand(i32* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32* @lappend(i32* %41, i8* %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @TruncateTriggerCreateCommand(i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32* @lappend(i32* %46, i8* %47)
  store i32* %48, i32** %5, align 8
  %49 = load i32, i32* %2, align 4
  %50 = call i32* @LoadShardIntervalList(i32 %49)
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @ShardListInsertCommand(i32* %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @list_concat(i32* %53, i32* %54)
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call i32* @GetTableForeignConstraintCommands(i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @list_concat(i32* %58, i32* %59)
  store i32* %60, i32** %5, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @PartitionTable(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %1
  %65 = load i32, i32* %2, align 4
  %66 = call i8* @GenerateAlterTableAttachPartitionCommand(i32 %65)
  store i8* %66, i8** %14, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i32* @lappend(i32* %67, i8* %68)
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %64, %1
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i32* @DistributedTableCacheEntry(i32) #1

declare dso_local i32* @SequenceDDLCommandsForTable(i32) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32* @GetTableDDLEvents(i32, i32) #1

declare dso_local i8* @TableOwnerResetCommand(i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i8* @DistributionCreateCommand(i32*) #1

declare dso_local i8* @TruncateTriggerCreateCommand(i32) #1

declare dso_local i32* @LoadShardIntervalList(i32) #1

declare dso_local i32* @ShardListInsertCommand(i32*) #1

declare dso_local i32* @GetTableForeignConstraintCommands(i32) #1

declare dso_local i64 @PartitionTable(i32) #1

declare dso_local i8* @GenerateAlterTableAttachPartitionCommand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
