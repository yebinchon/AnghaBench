; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_CopyShardCommandList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_CopyShardCommandList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@WORKER_APPEND_TABLE_TO_SHARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CopyShardCommandList(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i8* @ConstructQualifiedShardName(%struct.TYPE_8__* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** @NIL, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %13, align 8
  %24 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %14, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32* @RecreateTableDDLCommandList(i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32* @WorkerApplyShardDDLCommandList(i32* %30, i32 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32* @list_concat(i32* %33, i32* %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = load i32, i32* @WORKER_APPEND_TABLE_TO_SHARD, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @quote_literal_cstr(i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @quote_literal_cstr(i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @quote_literal_cstr(i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @appendStringInfo(%struct.TYPE_7__* %39, i32 %40, i32 %42, i32 %44, i32 %46, i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @lappend(i32* %49, i32 %52)
  store i32* %53, i32** %13, align 8
  br label %54

54:                                               ; preds = %38, %4
  %55 = load i32, i32* %15, align 4
  %56 = call i32* @GetTableIndexAndConstraintCommands(i32 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32* @WorkerApplyShardDDLCommandList(i32* %57, i32 %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @list_concat(i32* %60, i32* %61)
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  ret i32* %63
}

declare dso_local i8* @ConstructQualifiedShardName(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @makeStringInfo(...) #1

declare dso_local i32* @RecreateTableDDLCommandList(i32) #1

declare dso_local i32* @WorkerApplyShardDDLCommandList(i32*, i32) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32* @GetTableIndexAndConstraintCommands(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
