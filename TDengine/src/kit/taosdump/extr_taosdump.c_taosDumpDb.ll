; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpDb.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.arguments = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@taos = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid database %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"USE %s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"show tables\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to run command %s\0A\00", align 1
@result = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to use result\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c".table.tmp\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to open temp file\0A\00", align 1
@TSDB_SHOW_TABLES_NAME_INDEX = common dso_local global i64 0, align 8
@TSDB_SHOW_TABLES_METRIC_INDEX = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosDumpDb(%struct.TYPE_12__* %0, %struct.arguments* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.arguments*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.arguments* %1, %struct.arguments** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.arguments*, %struct.arguments** %6, align 8
  %14 = getelementptr inbounds %struct.arguments, %struct.arguments* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @taosDumpCreateDbClause(%struct.TYPE_12__* %12, i32 %15, i32* %16)
  %18 = load i8*, i8** @command, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @taos, align 4
  %24 = load i8*, i8** @command, align 8
  %25 = call i64 @taos_query(i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %4, align 4
  br label %136

33:                                               ; preds = %3
  %34 = load i32*, i32** %7, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** @command, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @taos, align 4
  %43 = load i8*, i8** @command, align 8
  %44 = call i64 @taos_query(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @command, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %4, align 4
  br label %136

50:                                               ; preds = %33
  %51 = load i32, i32* @taos, align 4
  %52 = call i32* @taos_use_result(i32 %51)
  store i32* %52, i32** @result, align 8
  %53 = load i32*, i32** @result, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %136

58:                                               ; preds = %50
  %59 = load i32*, i32** @result, align 8
  %60 = call %struct.TYPE_10__* @taos_fetch_fields(i32* %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %11, align 8
  %61 = load i32, i32* @O_RDWR, align 4
  %62 = load i32, i32* @O_CREAT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @S_IRWXU, align 4
  %65 = load i32, i32* @S_IRGRP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IXGRP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IROTH, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32*, i32** @result, align 8
  %78 = call i32 @taos_free_result(i32* %77)
  store i32 -1, i32* %4, align 4
  br label %136

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %84, %79
  %81 = load i32*, i32** @result, align 8
  %82 = call i64* @taos_fetch_row(i32* %81)
  store i64* %82, i64** %8, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %114

84:                                               ; preds = %80
  %85 = call i32 @memset(%struct.TYPE_11__* %10, i32 0, i32 8)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* @TSDB_SHOW_TABLES_NAME_INDEX, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = load i64, i64* @TSDB_SHOW_TABLES_NAME_INDEX, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strncpy(i32 %87, i8* %92, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* @TSDB_SHOW_TABLES_METRIC_INDEX, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = load i64, i64* @TSDB_SHOW_TABLES_METRIC_INDEX, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strncpy(i32 %100, i8* %105, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @twrite(i32 %112, %struct.TYPE_11__* %10, i32 8)
  br label %80

114:                                              ; preds = %80
  %115 = load i32*, i32** @result, align 8
  %116 = call i32 @taos_free_result(i32* %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SEEK_SET, align 4
  %119 = call i32 @lseek(i32 %117, i32 0, i32 %118)
  br label %120

120:                                              ; preds = %124, %114
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @read(i32 %121, %struct.TYPE_11__* %10, i32 8)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.arguments*, %struct.arguments** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @taosDumpTable(i32 %126, i32 %128, %struct.arguments* %129, i32* %130)
  br label %120

132:                                              ; preds = %120
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @tclose(i32 %133)
  %135 = call i32 @remove(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %74, %55, %46, %27
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @taosDumpCreateDbClause(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @taos_query(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @taos_use_result(i32) #1

declare dso_local %struct.TYPE_10__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @taos_free_result(i32*) #1

declare dso_local i64* @taos_fetch_row(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @twrite(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @taosDumpTable(i32, i32, %struct.arguments*, i32*) #1

declare dso_local i32 @tclose(i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
