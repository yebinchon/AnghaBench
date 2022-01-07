; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_deparse_shard_reindex_statement.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_deparse_shard_reindex_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"REINDEX \00", align 1
@REINDEXOPT_VERBOSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"(VERBOSE) \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"INDEX %s%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TABLE %s%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"SCHEMA %s%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SYSTEM %s%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DATABASE %s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deparse_shard_reindex_statement(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call %struct.TYPE_7__* @copyObject(%struct.TYPE_7__* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 131
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AppendShardIdToName(i8** %10, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @appendStringInfoString(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REINDEXOPT_VERBOSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @appendStringInfoString(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %92 [
    i32 131, label %46
    i32 128, label %57
    i32 130, label %68
    i32 129, label %76
    i32 132, label %84
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @quote_qualified_identifier(i32 %53, i8* %54)
  %56 = call i32 @appendStringInfo(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %55)
  br label %92

57:                                               ; preds = %42
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @quote_qualified_identifier(i32 %64, i8* %65)
  %67 = call i32 @appendStringInfo(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 %66)
  br label %92

68:                                               ; preds = %42
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @quote_identifier(i32 %73)
  %75 = call i32 @appendStringInfo(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %70, i32 %74)
  br label %92

76:                                               ; preds = %42
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @quote_identifier(i32 %81)
  %83 = call i32 @appendStringInfo(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %78, i32 %82)
  br label %92

84:                                               ; preds = %42
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @quote_identifier(i32 %89)
  %91 = call i32 @appendStringInfo(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %86, i32 %90)
  br label %92

92:                                               ; preds = %42, %84, %76, %68, %57, %46
  ret void
}

declare dso_local %struct.TYPE_7__* @copyObject(%struct.TYPE_7__*) #1

declare dso_local i32 @AppendShardIdToName(i8**, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*, i32) #1

declare dso_local i32 @quote_qualified_identifier(i32, i8*) #1

declare dso_local i32 @quote_identifier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
