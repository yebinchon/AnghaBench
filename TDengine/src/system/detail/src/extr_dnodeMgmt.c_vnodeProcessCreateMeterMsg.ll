; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessCreateMeterMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessCreateMeterMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i8*, i32, i64, i32, i8*, %struct.TYPE_18__*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i8*, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i8*, i32, i32, i64, i8*, i8*, i32, i32, %struct.TYPE_13__*, i8*, i32, i8* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@TSDB_MAX_VNODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"vid:%d is out of range\00", align 1
@TSDB_CODE_INVALID_SESSION_ID = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"vid:%d is not activated yet\00", align 1
@TSDB_CODE_NOT_ACTIVE_SESSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"vid:%d sid:%d id:%s, sid is out of range\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"vid:%d sid:%d id:%s, numOfColumns is out of range\00", align 1
@TSDB_CODE_OTHERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"vid:%d sid:%d id:%s, no memory to allocate meterObj\00", align 1
@TSDB_CODE_NO_RESOURCE = common dso_local global i32 0, align 4
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"key length is not matched, required key length:%d\00", align 1
@TSDB_KEY_LEN = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"vid:%d sid:%d id:%s, failed to create meterObj\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessCreateMeterMsg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @htons(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @htonl(i64 %22)
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 13
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @htobe64(i8* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 13
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 11
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @htobe64(i8* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @TSDB_MAX_VNODES, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %55, i32* %5, align 4
  br label %390

56:                                               ; preds = %45
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vnodeList, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %61
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %9, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @vnodeSendVpeerCfgMsg(i32 %74)
  %76 = load i32, i32* @TSDB_CODE_NOT_ACTIVE_SESSION, align 4
  store i32 %76, i32* %5, align 4
  br label %390

77:                                               ; preds = %56
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %80, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %77
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86, %77
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %97, i8* %100)
  %102 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %102, i32* %5, align 4
  br label %390

103:                                              ; preds = %86
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @htons(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %103
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @dTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %118, i64 %121, i8* %124)
  %126 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %126, i32* %5, align 4
  br label %390

127:                                              ; preds = %103
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @htons(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 96, %138
  %140 = add i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i64 @calloc(i32 1, i32 %141)
  %143 = inttoptr i64 %142 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %6, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = icmp eq %struct.TYPE_15__* %144, null
  br i1 %145, label %146, label %158

146:                                              ; preds = %127
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %149, i64 %152, i8* %155)
  %157 = load i32, i32* @TSDB_CODE_NO_RESOURCE, align 4
  store i32 %157, i32* %5, align 4
  br label %390

158:                                              ; preds = %127
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 24
  %164 = trunc i64 %163 to i32
  %165 = call i64 @calloc(i32 1, i32 %164)
  %166 = inttoptr i64 %165 to %struct.TYPE_18__*
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 7
  store %struct.TYPE_18__* %166, %struct.TYPE_18__** %168, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 12
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %191 = call i32 @memcpy(i8* %186, i8* %189, i32 %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 11
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 11
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = call i8* @htonl(i64 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 10
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 4
  store i64 0, i64* %209, align 8
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %303, %158
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %306

216:                                              ; preds = %210
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 10
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 7
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i32 %224, i32* %231, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 10
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @htons(i32 %239)
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  store i32 %241, i32* %248, align 8
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 10
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @htons(i32 %256)
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 7
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  store i8* %257, i8** %264, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 7
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 7
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = icmp slt i64 %279, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %216
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 7
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 4
  store i64 %299, i64* %301, align 8
  br label %302

302:                                              ; preds = %290, %216
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  br label %210

306:                                              ; preds = %210
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %347

311:                                              ; preds = %306
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 5
  store i32 %314, i32* %316, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %318 = bitcast %struct.TYPE_15__* %317 to i8*
  %319 = getelementptr inbounds i8, i8* %318, i64 96
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 6
  store i8* %319, i8** %321, align 8
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 6
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 10
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = bitcast %struct.TYPE_13__* %327 to i8*
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = mul i64 %332, 4
  %334 = getelementptr inbounds i8, i8* %328, i64 %333
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @memcpy(i8* %324, i8* %334, i32 %337)
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 6
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %341, i64 %345
  store i8 0, i8* %346, align 1
  br label %347

347:                                              ; preds = %311, %306
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 8
  store i32 %351, i32* %353, align 8
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 7
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = icmp ne i64 4, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %347
  %363 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %364 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %364, i32* %5, align 4
  br label %390

365:                                              ; preds = %347
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 %368, i32* %369, align 4
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %372, i32* %373, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 6
  %378 = load i8*, i8** %377, align 8
  %379 = load i32, i32* @TSDB_KEY_LEN, align 4
  %380 = call i32 @memcpy(i8* %375, i8* %378, i32 %379)
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 7
  %385 = load i8*, i8** %384, align 8
  %386 = load i32, i32* @TSDB_KEY_LEN, align 4
  %387 = call i32 @memcpy(i8* %382, i8* %385, i32 %386)
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %389 = call i32 @vnodeCreateMeterObj(%struct.TYPE_15__* %388, %struct.TYPE_17__* %7)
  store i32 %389, i32* %5, align 4
  br label %390

390:                                              ; preds = %365, %362, %146, %115, %91, %67, %50
  %391 = load i32, i32* %5, align 4
  %392 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %407

394:                                              ; preds = %390
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 2
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @dTrace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %397, i64 %400, i8* %403)
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %406 = call i32 @tfree(%struct.TYPE_15__* %405)
  br label %407

407:                                              ; preds = %394, %390
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @htobe64(i8*) #1

declare dso_local i32 @dError(i8*, i32, ...) #1

declare dso_local i32 @vnodeSendVpeerCfgMsg(i32) #1

declare dso_local i32 @dTrace(i8*, i32, i64, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vnodeCreateMeterObj(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @tfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
