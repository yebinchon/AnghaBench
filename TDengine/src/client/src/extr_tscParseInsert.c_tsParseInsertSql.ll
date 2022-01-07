; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseInsertSql.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseInsertSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i8* }

@TSDB_CODE_NO_RIGHTS = common dso_local global i32 0, align 4
@TK_IMPORT = common dso_local global i64 0, align 8
@TSQL_SO_ASC = common dso_local global i32 0, align 4
@TK_INSERT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid keyword:%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no any keywords\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TK_INTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"keyword INTO is expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsParseInsertSql(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @TSDB_CODE_NO_RIGHTS, align 4
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %11, align 8
  %25 = load i8*, i8** %7, align 8
  call void @tStrGetToken(%struct.TYPE_13__* sret %12, i8* %25, i32* %10, i32 0, i32 0, i32* null)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_IMPORT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @TSQL_SO_ASC, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %65

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TK_INSERT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sprintf(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %62

57:                                               ; preds = %40
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %44
  %63 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %63, i32* %5, align 4
  br label %88

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %64, %30
  %66 = load i8*, i8** %7, align 8
  call void @tStrGetToken(%struct.TYPE_13__* sret %13, i8* %66, i32* %10, i32 0, i32 0, i32* null)
  %67 = bitcast %struct.TYPE_13__* %12 to i8*
  %68 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TK_INTO, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %78, i32* %5, align 4
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @tsParseInsertStatement(%struct.TYPE_11__* %80, i8* %84, i8* %85, i8* %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %73, %62, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local void @tStrGetToken(%struct.TYPE_13__* sret, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tsParseInsertStatement(%struct.TYPE_11__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
