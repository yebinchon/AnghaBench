; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_mgmtDnodeInt.spec.c_mgmtProcessDnodeStatus.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_mgmtDnodeInt.spec.c_mgmtProcessDnodeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@dnodeObj = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@tsOpenVnodes = common dso_local global i32 0, align 4
@TSDB_STATUS_READY = common dso_local global i32 0, align 4
@tsAvailDataDirGB = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_12__* null, align 8
@TSDB_VN_STATUS_DROPPING = common dso_local global i64 0, align 8
@TSDB_VN_STATUS_READY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"vid:%d, drop finished\00", align 1
@mgmtMonitorDbDrop = common dso_local global i32 0, align 4
@mgmtTmr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"vgroup:%d is not there, but associated with vnode %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"vgroup:%d not belongs to any database, vnode:%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"vid:%d, mgmt not exist, drop it\00", align 1
@tsStatusInterval = common dso_local global i32 0, align 4
@mgmtStatusTimer = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to start status timer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtProcessDnodeStatus(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_15__* @dnodeObj, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @tsOpenVnodes, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @TSDB_STATUS_READY, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  store float 0.000000e+00, float* %6, align 4
  %19 = call i32 @taosGetSysMemory(float* %6)
  %20 = load i32, i32* @tsAvailDataDirGB, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %150, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %153

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vnodeList, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %9, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %29
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vnodeList, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load i8*, i8** @TSDB_VN_STATUS_READY, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** @TSDB_VN_STATUS_READY, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @mPrint(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @mgmtMonitorDbDrop, align 4
  %68 = load i32, i32* @mgmtTmr, align 4
  %69 = call i32 @taosTmrStart(i32 %67, i32 10000, i32* null, i32 %68)
  br label %70

70:                                               ; preds = %54, %45
  br label %71

71:                                               ; preds = %70, %29
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vnodeList, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %150

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** @TSDB_VN_STATUS_READY, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call %struct.TYPE_14__* @mgmtGetVgroup(i32 %110)
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %11, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = icmp eq %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %81
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %150

121:                                              ; preds = %81
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32* @mgmtGetDb(i32 %124)
  store i32* %125, i32** %12, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130)
  br label %150

132:                                              ; preds = %121
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load i64, i64* @TSDB_VN_STATUS_DROPPING, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %143, %137
  br label %150

150:                                              ; preds = %149, %128, %114, %80
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %23

153:                                              ; preds = %23
  %154 = load i32, i32* @tsStatusInterval, align 4
  %155 = mul nsw i32 %154, 1000
  %156 = load i32, i32* @mgmtTmr, align 4
  %157 = call i32 @taosTmrReset(void (i8*, i8*)* @mgmtProcessDnodeStatus, i32 %155, i32* null, i32 %156, i32** @mgmtStatusTimer)
  %158 = load i32*, i32** @mgmtStatusTimer, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @mError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %153
  ret void
}

declare dso_local i32 @taosGetSysMemory(float*) #1

declare dso_local i32 @mPrint(i8*, i32, i32) #1

declare dso_local i32 @taosTmrStart(i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @mgmtGetVgroup(i32) #1

declare dso_local i32 @mError(i8*, ...) #1

declare dso_local i32* @mgmtGetDb(i32) #1

declare dso_local i32 @taosTmrReset(void (i8*, i8*)*, i32, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
