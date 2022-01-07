; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ProcessCreateTableStmtPartitionOf.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_table.c_ProcessCreateTableStmtPartitionOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32* }

@NIL = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessCreateTableStmtPartitionOf(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NIL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @linitial(i64 %25)
  store i32* %26, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @NoLock, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @RangeVarGetRelid(i32* %27, i32 %28, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @list_length(i64 %33)
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @InvalidOid, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @IsDistributedTable(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @NoLock, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @RangeVarGetRelid(i32* %49, i32 %50, i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32* @DistPartitionKey(i64 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  store i8 %55, i8* %9, align 1
  %56 = load i64, i64* %5, align 8
  %57 = call i8* @generate_qualified_relation_name(i64 %56)
  store i8* %57, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i8, i8* %9, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @CreateDistributedTable(i64 %58, i32* %59, i8 signext %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %46, %22
  br label %65

65:                                               ; preds = %64, %17, %1
  ret void
}

declare dso_local i32* @linitial(i64) #1

declare dso_local i64 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i64 @IsDistributedTable(i64) #1

declare dso_local i32* @DistPartitionKey(i64) #1

declare dso_local i8* @generate_qualified_relation_name(i64) #1

declare dso_local i32 @CreateDistributedTable(i64, i32*, i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
