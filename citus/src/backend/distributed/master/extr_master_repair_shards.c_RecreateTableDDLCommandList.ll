; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_RecreateTableDDLCommandList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_RecreateTableDDLCommandList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@DROP_REGULAR_TABLE_COMMAND = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@DROP_FOREIGN_TABLE_COMMAND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"repair target is not a regular, foreign or partitioned table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @RecreateTableDDLCommandList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RecreateTableDDLCommandList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i8* @get_rel_name(i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @get_rel_namespace(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @get_namespace_name(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @quote_qualified_identifier(i8* %19, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %7, align 8
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** @NIL, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** @NIL, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call signext i8 @get_rel_relkind(i32 %26)
  store i8 %27, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @RegularTable(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = load i32, i32* @DROP_REGULAR_TABLE_COMMAND, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @appendStringInfo(%struct.TYPE_4__* %32, i32 %33, i8* %34)
  br label %54

36:                                               ; preds = %1
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = load i32, i32* @DROP_FOREIGN_TABLE_COMMAND, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @appendStringInfo(%struct.TYPE_4__* %43, i32 %44, i8* %45)
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @ereport(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @list_make1(i32 %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32* @GetTableCreationCommands(i32 %59, i32 %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @list_concat(i32* %62, i32* %63)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  ret i32* %65
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i8* @quote_qualified_identifier(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i64 @RegularTable(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @list_make1(i32) #1

declare dso_local i32* @GetTableCreationCommands(i32, i32) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
