; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_reloadTableSchema.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_reloadTableSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__* }

@OP_DropTrigger = common dso_local global i32 0, align 4
@OP_DropTable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tbl_name=%Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*)* @reloadTableSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reloadTableSchema(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i32* @sqlite3GetVdbe(%struct.TYPE_14__* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @NEVER(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %101

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3BtreeHoldsAllMutexes(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sqlite3SchemaToIndex(i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = call %struct.TYPE_12__* @sqlite3TriggerList(%struct.TYPE_14__* %37, %struct.TYPE_13__* %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %10, align 8
  br label %40

40:                                               ; preds = %68, %20
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sqlite3SchemaToIndex(i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  br label %57

57:                                               ; preds = %54, %43
  %58 = phi i1 [ true, %43 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @OP_DropTrigger, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sqlite3VdbeAddOp4(i32* %61, i32 %62, i32 %63, i32 0, i32 0, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %10, align 8
  br label %40

72:                                               ; preds = %40
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @OP_DropTable, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sqlite3VdbeAddOp4(i32* %73, i32 %74, i32 %75, i32 0, i32 0, i32 %78, i32 0)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i8* @sqlite3MPrintf(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %72
  br label %101

88:                                               ; preds = %72
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @sqlite3VdbeAddParseSchemaOp(i32* %89, i32 %90, i8* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = call i8* @whereTempTriggers(%struct.TYPE_14__* %93, %struct.TYPE_13__* %94)
  store i8* %95, i8** %8, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @sqlite3VdbeAddParseSchemaOp(i32* %98, i32 1, i8* %99)
  br label %101

101:                                              ; preds = %19, %87, %97, %88
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_14__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsAllMutexes(i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(i32, i32) #1

declare dso_local %struct.TYPE_12__* @sqlite3TriggerList(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @sqlite3MPrintf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3VdbeAddParseSchemaOp(i32*, i32, i8*) #1

declare dso_local i8* @whereTempTriggers(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
