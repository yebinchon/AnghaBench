; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_deparse_shard_index_statement.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_deparse_shard_index_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i64, i32*, i32, i32, %struct.TYPE_8__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"CREATE %s INDEX %s %s %s ON %s USING %s \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CONCURRENTLY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IF NOT EXISTS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c") \00", align 1
@NIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"INCLUDE (\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"WHERE %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deparse_shard_index_statement(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call %struct.TYPE_9__* @copyObject(%struct.TYPE_9__* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @AppendShardIdToName(i8** %10, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @AppendShardIdToName(i8** %11, i32 %25)
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @deparse_context_for(i8* %27, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = call %struct.TYPE_9__* @transformIndexStmt(i32 %30, %struct.TYPE_9__* %31, i32* null)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @quote_identifier(i8* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @quote_qualified_identifier(i32 %58, i8* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %45, i8* %51, i32 %53, i32 %60, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @appendStringInfoChar(i32 %65, i8 signext 40)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @deparse_index_columns(i32 %67, i64 %70, i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @appendStringInfoString(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NIL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @appendStringInfoString(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @deparse_index_columns(i32 %83, i64 %86, i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @appendStringInfoChar(i32 %89, i8 signext 41)
  br label %91

91:                                               ; preds = %80, %4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @AppendStorageParametersToString(i32 %92, i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @deparse_expression(i32* %105, i32* %106, i32 0, i32 0)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (i32, i8*, i8*, ...) @appendStringInfo(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %101, %91
  ret void
}

declare dso_local %struct.TYPE_9__* @copyObject(%struct.TYPE_9__*) #1

declare dso_local i32 @AppendShardIdToName(i8**, i32) #1

declare dso_local i32* @deparse_context_for(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @transformIndexStmt(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*, ...) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @quote_qualified_identifier(i32, i8*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @deparse_index_columns(i32, i64, i32*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @AppendStorageParametersToString(i32, i32) #1

declare dso_local i32 @deparse_expression(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
