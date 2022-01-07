; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtAlterMeter.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtAlterMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@tsMonitorDbName = common dso_local global i32 0, align 4
@TSDB_CODE_MONITOR_DB_FORBEIDDEN = common dso_local global i32 0, align 4
@TSDB_ALTER_TABLE_UPDATE_TAG_VAL = common dso_local global i64 0, align 8
@TSDB_CODE_OPS_NOT_SUPPORT = common dso_local global i32 0, align 4
@TSDB_ALTER_TABLE_ADD_TAG_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"alter table %s to add tag column:%s, type:%d\00", align 1
@TSDB_ALTER_TABLE_DROP_TAG_COLUMN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"alter table %s to drop tag column:%s\00", align 1
@TSDB_ALTER_TABLE_CHANGE_TAG_COLUMN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"alter table %s to change tag column name, old: %s, new: %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"alter table %s to modify tag value, tag name:%s\00", align 1
@TSDB_ALTER_TABLE_ADD_COLUMN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"alter table %s to add column:%s, type:%d\00", align 1
@TSDB_ALTER_TABLE_DROP_COLUMN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"alter table %s to drop column:%s\00", align 1
@TSDB_CODE_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtAlterMeter(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_18__* @mgmtGetMeter(i32 %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = icmp eq %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  store i32 %14, i32* %3, align 4
  br label %214

15:                                               ; preds = %2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @tsMonitorDbName, align 4
  %20 = call i64 @mgmtCheckIsMonitorDB(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @TSDB_CODE_MONITOR_DB_FORBEIDDEN, align 4
  store i32 %23, i32* %3, align 4
  br label %214

24:                                               ; preds = %15
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSDB_ALTER_TABLE_UPDATE_TAG_VAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = call i32 @mgmtIsNormalMeter(%struct.TYPE_18__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = call i32 @mgmtMeterCreateFromMetric(%struct.TYPE_18__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @TSDB_CODE_OPS_NOT_SUPPORT, align 4
  store i32 %39, i32* %3, align 4
  br label %214

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TSDB_ALTER_TABLE_ADD_TAG_COLUMN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56, i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = call i32 @mgmtMeterAddTags(%struct.TYPE_18__* %64, %struct.TYPE_17__* %67, i32 1)
  store i32 %68, i32* %3, align 4
  br label %214

69:                                               ; preds = %41
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TSDB_ALTER_TABLE_DROP_TAG_COLUMN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mgmtMeterDropTagByName(%struct.TYPE_18__* %86, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %214

94:                                               ; preds = %69
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TSDB_ALTER_TABLE_CHANGE_TAG_COLUMN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %94
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %109, i32 %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @mgmtMeterModifyTagNameByName(%struct.TYPE_18__* %117, i32 %123, i32 %129)
  store i32 %130, i32* %3, align 4
  br label %214

131:                                              ; preds = %94
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TSDB_ALTER_TABLE_UPDATE_TAG_VAL, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %131
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @mgmtMeterModifyTagValueByName(%struct.TYPE_18__* %148, i32 %154, i32 %157)
  store i32 %158, i32* %3, align 4
  br label %214

159:                                              ; preds = %131
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TSDB_ALTER_TABLE_ADD_COLUMN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %174, i32 %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = call i32 @mgmtMeterAddColumn(%struct.TYPE_18__* %182, %struct.TYPE_17__* %185, i32 1)
  store i32 %186, i32* %3, align 4
  br label %214

187:                                              ; preds = %159
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TSDB_ALTER_TABLE_DROP_COLUMN, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %187
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %196, i32 %202)
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @mgmtMeterDropColumnByName(%struct.TYPE_18__* %204, i32 %210)
  store i32 %211, i32* %3, align 4
  br label %214

212:                                              ; preds = %187
  %213 = load i32, i32* @TSDB_CODE_INVALID_MSG_TYPE, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %193, %165, %137, %100, %75, %47, %38, %22, %13
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_18__* @mgmtGetMeter(i32) #1

declare dso_local i64 @mgmtCheckIsMonitorDB(i32, i32) #1

declare dso_local i32 @mgmtIsNormalMeter(%struct.TYPE_18__*) #1

declare dso_local i32 @mgmtMeterCreateFromMetric(%struct.TYPE_18__*) #1

declare dso_local i32 @mTrace(i8*, i32, i32, ...) #1

declare dso_local i32 @mgmtMeterAddTags(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mgmtMeterDropTagByName(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mgmtMeterModifyTagNameByName(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mgmtMeterModifyTagValueByName(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mgmtMeterAddColumn(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mgmtMeterDropColumnByName(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
