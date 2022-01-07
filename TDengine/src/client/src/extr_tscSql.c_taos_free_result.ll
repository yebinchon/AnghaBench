; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_free_result.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_taos_free_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"%p start to free result\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%p qhandle is null, abort free, fp:%p\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%p Async SqlObj is freed by app\00", align 1
@TSDB_QUERY_TYPE_FREE_RESOURCE = common dso_local global i32 0, align 4
@TSDB_CODE_QUERY_CANCELLED = common dso_local global i64 0, align 8
@TSDB_SQL_LOCAL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_SQL_SELECT = common dso_local global i64 0, align 8
@TSDB_SQL_MGMT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"%p sql result is freed by app\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%p Async sql result is freed by app\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%p sql result is freed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taos_free_result(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %172

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 5
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = icmp ne %struct.TYPE_12__* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %172

26:                                               ; preds = %11
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = icmp eq %struct.TYPE_11__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %35, i32* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i32 @tscFreeSqlObj(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %49)
  br label %54

51:                                               ; preds = %34
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @tscFreeSqlObjPartial(%struct.TYPE_12__* %52)
  br label %54

54:                                               ; preds = %51, %44
  br label %172

55:                                               ; preds = %29
  %56 = load i32, i32* @TSDB_QUERY_TYPE_FREE_RESOURCE, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call %struct.TYPE_14__* @tscGetMeterMetaInfo(%struct.TYPE_13__* %59, i32 0)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TSDB_CODE_QUERY_CANCELLED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %140

66:                                               ; preds = %55
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TSDB_SQL_LOCAL, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %104, label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %140

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %83
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %140

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %140

99:                                               ; preds = %94
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %140

104:                                              ; preds = %99, %71
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TSDB_SQL_MGMT, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  br label %114

112:                                              ; preds = %104
  %113 = load i64, i64* @TSDB_SQL_FETCH, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i64 [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to i8*
  store i8* %121, i8** %7, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %114
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = call i32 @tscProcessSql(%struct.TYPE_12__* %128)
  %130 = load i8*, i8** %7, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = call i32 @tscFreeSqlObjPartial(%struct.TYPE_12__* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %137)
  br label %139

139:                                              ; preds = %132, %127
  br label %172

140:                                              ; preds = %99, %94, %88, %83, %77, %55
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %140
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TSDB_SQL_LOCAL, align 8
  %157 = icmp sgt i64 %155, %156
  br label %158

158:                                              ; preds = %152, %147
  %159 = phi i1 [ true, %147 ], [ %157, %152 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %163 = call i32 @tscFreeSqlObj(%struct.TYPE_12__* %162)
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %165 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %164)
  br label %171

166:                                              ; preds = %140
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = call i32 @tscFreeSqlObjPartial(%struct.TYPE_12__* %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = call i32 (i8*, %struct.TYPE_12__*, ...) @tscTrace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %169)
  br label %171

171:                                              ; preds = %166, %158
  br label %172

172:                                              ; preds = %10, %25, %54, %171, %139
  ret void
}

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_12__*, ...) #1

declare dso_local i32 @tscFreeSqlObj(%struct.TYPE_12__*) #1

declare dso_local i32 @tscFreeSqlObjPartial(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @tscGetMeterMetaInfo(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
