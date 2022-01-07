; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeProcessImportTimer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeImport.c_vnodeProcessImportTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_17__*, %struct.TYPE_15__*, i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"import timer is messed up, signature:%p\00", align 1
@vnodeList = common dso_local global %struct.TYPE_14__* null, align 8
@TSDB_METER_STATE_IMPORTING = common dso_local global i32 0, align 4
@TSDB_METER_STATE_DELETING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"vid:%d sid:%d id:%s, meter is deleted, failed to import, state:%d\00", align 1
@TSDB_METER_STATE_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [144 x i8] c"vid:%d sid:%d id:%s, import failed, retry later. commit in process or queries on it, or not ready.commitInProcess:%d, numOfQueries:%d, state:%d\00", align 1
@vnodeTmrCtrl = common dso_local global i32 0, align 4
@TSDB_CODE_TOO_SLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeProcessImportTimer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = icmp eq %struct.TYPE_17__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %25)
  br label %187

27:                                               ; preds = %18
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %6, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vnodeList, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 %34
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %7, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %8, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %9, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = load i32, i32* @TSDB_METER_STATE_IMPORTING, align 4
  %49 = call i64 @vnodeSetMeterState(%struct.TYPE_16__* %47, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @TSDB_METER_STATE_DELETING, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %27
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i8*, ...) @dError(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59, i32 %62, i64 %63)
  br label %187

65:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = call i32 @pthread_mutex_lock(i32* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = call i32 @pthread_mutex_unlock(i32* %73)
  store i64 0, i64* %12, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = call i32 @pthread_mutex_lock(i32* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %89, label %82

82:                                               ; preds = %65
  %83 = load i64, i64* %11, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @TSDB_METER_STATE_READY, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %85, %82, %65
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = call i32 @pthread_mutex_unlock(i32* %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = load i32, i32* @TSDB_METER_STATE_IMPORTING, align 4
  %95 = call i32 @vnodeClearMeterState(%struct.TYPE_16__* %93, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %98, 1000
  br i1 %99, label %100, label %117

100:                                              ; preds = %89
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @dTrace(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.2, i64 0, i64 0), i64 %103, i32 %106, i32 %109, i64 %110, i64 %111, i64 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = load i32, i32* @vnodeTmrCtrl, align 4
  %116 = call i32 @taosTmrStart(void (i8*, i8*)* @vnodeProcessImportTimer, i32 10, %struct.TYPE_17__* %114, i32 %115)
  br label %187

117:                                              ; preds = %89
  %118 = load i32, i32* @TSDB_CODE_TOO_SLOW, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117
  br label %147

122:                                              ; preds = %85
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i64 1, i64* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = call i32 @pthread_mutex_unlock(i32* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = call i32 @vnodeImportData(%struct.TYPE_16__* %128, %struct.TYPE_17__* %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = icmp ne %struct.TYPE_15__* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %122
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  br label %146

146:                                              ; preds = %133, %122
  br label %147

147:                                              ; preds = %146, %121
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = load i32, i32* @TSDB_METER_STATE_IMPORTING, align 4
  %150 = call i32 @vnodeClearMeterState(%struct.TYPE_16__* %148, i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %156 = icmp ne %struct.TYPE_15__* %155, null
  br i1 %156, label %157, label %178

157:                                              ; preds = %147
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, -1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sle i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %157
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @vnodeSendShellSubmitRspMsg(%struct.TYPE_15__* %169, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %166, %157
  br label %178

178:                                              ; preds = %177, %147
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  store i8* null, i8** %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = call i32 @free(%struct.TYPE_17__* %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = call i32 @free(%struct.TYPE_17__* %185)
  br label %187

187:                                              ; preds = %178, %100, %53, %24
  ret void
}

declare dso_local i32 @dError(i8*, ...) #1

declare dso_local i64 @vnodeSetMeterState(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vnodeClearMeterState(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @dTrace(i8*, i64, i32, i32, i64, i64, i64) #1

declare dso_local i32 @taosTmrStart(void (i8*, i8*)*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vnodeImportData(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @vnodeSendShellSubmitRspMsg(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
