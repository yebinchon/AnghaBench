; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosGetTableDes.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosGetTableDes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"describe %s\00", align 1
@taos = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to run command %s\0A\00", align 1
@result = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to use result\0A\00", align 1
@TSDB_DESCRIBE_METRIC_FIELD_INDEX = common dso_local global i64 0, align 8
@TSDB_DESCRIBE_METRIC_TYPE_INDEX = common dso_local global i64 0, align 8
@TSDB_DESCRIBE_METRIC_LENGTH_INDEX = common dso_local global i64 0, align 8
@TSDB_DESCRIBE_METRIC_NOTE_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosGetTableDes(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64* null, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** @command, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @taos, align 4
  %13 = load i8*, i8** @command, align 8
  %14 = call i64 @taos_query(i32 %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @command, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load i32, i32* @taos, align 4
  %22 = call i32* @taos_use_result(i32 %21)
  store i32* %22, i32** @result, align 8
  %23 = load i32*, i32** @result, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %117

28:                                               ; preds = %20
  %29 = load i32*, i32** @result, align 8
  %30 = call %struct.TYPE_7__* @taos_fetch_fields(i32* %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strcpy(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %40, %28
  %37 = load i32*, i32** @result, align 8
  %38 = call i64* @taos_fetch_row(i32* %37)
  store i64* %38, i64** %6, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %113

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* @TSDB_DESCRIBE_METRIC_FIELD_INDEX, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = load i64, i64* @TSDB_DESCRIBE_METRIC_FIELD_INDEX, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strncpy(i32 %48, i8* %53, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* @TSDB_DESCRIBE_METRIC_TYPE_INDEX, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = load i64, i64* @TSDB_DESCRIBE_METRIC_TYPE_INDEX, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strncpy(i32 %67, i8* %72, i32 %77)
  %79 = load i64*, i64** %6, align 8
  %80 = load i64, i64* @TSDB_DESCRIBE_METRIC_LENGTH_INDEX, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* @TSDB_DESCRIBE_METRIC_NOTE_INDEX, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = load i64, i64* @TSDB_DESCRIBE_METRIC_NOTE_INDEX, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strncpy(i32 %99, i8* %104, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %36

113:                                              ; preds = %36
  %114 = load i32*, i32** @result, align 8
  %115 = call i32 @taos_free_result(i32* %114)
  store i32* null, i32** @result, align 8
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %25, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @taos_query(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @taos_use_result(i32) #1

declare dso_local %struct.TYPE_7__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64* @taos_fetch_row(i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @taos_free_result(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
