; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setColumnFilterInfoForTimestamp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setColumnFilterInfoForTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid timestamp\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @setColumnFilterInfoForTimestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setColumnFilterInfoForTimestamp(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 0, i64* %6, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strdequote(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @strnchr(i32 %16, i8 signext 45, i32 %19, i32 0)
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_11__* @tscGetMeterMetaInfo(i32* %21, i32 0)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @taosParseTime(i32 %28, i64* %6, i32 %31, i32 %36)
  %38 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @setErrMsg(i32* %41, i8* %42)
  %44 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %25
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = bitcast i64* %6 to i8*
  %49 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %50 = call i64 @tVariantDump(%struct.TYPE_10__* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @setErrMsg(i32* %53, i8* %54)
  %56 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i32 @tVariantDestroy(%struct.TYPE_10__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = bitcast i64* %6 to i8*
  %63 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %64 = call i32 @tVariantCreateFromBinary(%struct.TYPE_10__* %61, i8* %62, i32 0, i32 %63)
  %65 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %52, %40
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @strdequote(i32) #1

declare dso_local i8* @strnchr(i32, i8 signext, i32, i32) #1

declare dso_local %struct.TYPE_11__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i64 @taosParseTime(i32, i64*, i32, i32) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local i64 @tVariantDump(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @tVariantDestroy(%struct.TYPE_10__*) #1

declare dso_local i32 @tVariantCreateFromBinary(%struct.TYPE_10__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
