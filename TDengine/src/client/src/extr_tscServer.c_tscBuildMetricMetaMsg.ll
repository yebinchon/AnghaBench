; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildMetricMetaMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildMetricMetaMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i8*, i64, i32, i32, %struct.TYPE_26__, %struct.TYPE_41__ }
%struct.TYPE_26__ = type { i64, i32, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i64, i64 }
%struct.TYPE_41__ = type { i64, i32, %struct.TYPE_39__, %struct.TYPE_36__ }
%struct.TYPE_39__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__, %struct.TYPE_34__ }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_29__ = type { i8**, i8*, i8*, i8* }
%struct.TYPE_31__ = type { i64, i32*, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i8*, i8*, i32, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_32__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%p failed to malloc for metric meter msg\00", align 1
@tsRpcHeadSize = common dso_local global i32 0, align 4
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@TSDB_NCHAR_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%p mbs to ucs4 failed:%s\00", align 1
@TSDB_MSG_TYPE_METRIC_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscBuildMetricMetaMsg(%struct.TYPE_42__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %26, i32 0, i32 0
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %9, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 5
  store %struct.TYPE_41__* %29, %struct.TYPE_41__** %10, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = call %struct.TYPE_31__* @tscGetMeterMetaInfo(%struct.TYPE_27__* %30, i64 %32)
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %11, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %35 = call i64 @tscEstimateMetricMetaMsgSize(%struct.TYPE_27__* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @tscAllocPayload(%struct.TYPE_27__* %37, i64 %38)
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %43 = call i32 (i8*, %struct.TYPE_42__*, ...) @tscError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_42__* %42)
  store i32 -1, i32* %2, align 4
  br label %451

44:                                               ; preds = %1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @tsRpcHeadSize, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %53, %struct.TYPE_28__** %13, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tscGetDBInfoFromMeterId(i32 %56, i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %64, %struct.TYPE_29__** %4, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @htonl(i64 %67)
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 32
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %75 = bitcast %struct.TYPE_29__* %74 to i8*
  %76 = ptrtoint i8* %73 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i8* @htonl(i64 %79)
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = mul i64 %85, 2
  %87 = call i8* @htonl(i64 %86)
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %97 = call i32 @memcpy(i8* %90, i32 %95, i32 %96)
  %98 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %5, align 8
  %102 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %110, i8** %5, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %118 = call i32 @memcpy(i8* %111, i32 %116, i32 %117)
  %119 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %5, align 8
  %123 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = bitcast i8* %128 to i32*
  store i32 %127, i32* %129, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  store i8* %131, i8** %5, align 8
  store i64 0, i64* %15, align 8
  br label %132

132:                                              ; preds = %426, %44
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %138, label %429

138:                                              ; preds = %132
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call %struct.TYPE_31__* @tscGetMeterMetaInfo(%struct.TYPE_27__* %139, i64 %140)
  store %struct.TYPE_31__* %141, %struct.TYPE_31__** %11, align 8
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %16, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %149 = bitcast %struct.TYPE_29__* %148 to i8*
  %150 = ptrtoint i8* %147 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  store i64 %152, i64* %14, align 8
  %153 = load i64, i64* %14, align 8
  %154 = call i8* @htonl(i64 %153)
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds i8*, i8** %157, i64 %158
  store i8* %154, i8** %159, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = bitcast i8* %160 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %161, %struct.TYPE_30__** %17, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 104
  store i8* %163, i8** %5, align 8
  store i64 0, i64* %18, align 8
  %164 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %208

168:                                              ; preds = %138
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %170 = load i64, i64* %16, align 8
  %171 = call %struct.TYPE_32__* @tsGetMetricQueryCondPos(%struct.TYPE_41__* %169, i64 %170)
  store %struct.TYPE_32__* %171, %struct.TYPE_32__** %19, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %173 = icmp ne %struct.TYPE_32__* %172, null
  br i1 %173, label %174, label %207

174:                                              ; preds = %168
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %18, align 8
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* @TSDB_NCHAR_SIZE, align 8
  %196 = mul i64 %194, %195
  %197 = call i32 @taosMbsToUcs4(i32 %184, i32 %188, i8* %189, i64 %196)
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %174
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %203 = load i64, i64* %16, align 8
  %204 = call %struct.TYPE_32__* @tsGetMetricQueryCondPos(%struct.TYPE_41__* %202, i64 %203)
  %205 = call i32 (i8*, %struct.TYPE_42__*, ...) @tscError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_42__* %201, %struct.TYPE_32__* %204)
  store i32 0, i32* %2, align 4
  br label %451

206:                                              ; preds = %174
  br label %207

207:                                              ; preds = %206, %168
  br label %208

208:                                              ; preds = %207, %138
  %209 = load i64, i64* %18, align 8
  %210 = call i8* @htonl(i64 %209)
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 12
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %215 = bitcast %struct.TYPE_29__* %214 to i8*
  %216 = ptrtoint i8* %213 to i64
  %217 = ptrtoint i8* %215 to i64
  %218 = sub i64 %216, %217
  store i64 %218, i64* %14, align 8
  %219 = load i64, i64* %14, align 8
  %220 = call i8* @htonl(i64 %219)
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 11
  store i8* %220, i8** %222, align 8
  %223 = load i64, i64* %18, align 8
  %224 = load i64, i64* @TSDB_NCHAR_SIZE, align 8
  %225 = mul i64 %223, %224
  %226 = load i8*, i8** %5, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 %225
  store i8* %227, i8** %5, align 8
  %228 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @htons(i32 %230)
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 10
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %16, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %279

240:                                              ; preds = %208
  %241 = load i8*, i8** %5, align 8
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %243 = bitcast %struct.TYPE_29__* %242 to i8*
  %244 = ptrtoint i8* %241 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  store i64 %246, i64* %14, align 8
  %247 = load i64, i64* %14, align 8
  %248 = call i8* @htonl(i64 %247)
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 9
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i8* @htonl(i64 %255)
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 8
  store i8* %256, i8** %258, align 8
  %259 = load i8*, i8** %5, align 8
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 @memcpy(i8* %259, i32 %264, i32 %270)
  %272 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 %276
  store i8* %278, i8** %5, align 8
  br label %279

279:                                              ; preds = %240, %208
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 4
  store %struct.TYPE_26__* %281, %struct.TYPE_26__** %21, align 8
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %15, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %279
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 4
  store i8* null, i8** %289, align 8
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 5
  store i8* null, i8** %291, align 8
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 7
  store i8* null, i8** %293, align 8
  br label %400

294:                                              ; preds = %279
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i8* @htons(i32 %297)
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 7
  store i8* %298, i8** %300, align 8
  store i64 0, i64* %22, align 8
  br label %301

301:                                              ; preds = %320, %294
  %302 = load i64, i64* %22, align 8
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ult i64 %302, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %301
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* %22, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i8* @htons(i32 %313)
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 6
  %317 = load i8**, i8*** %316, align 8
  %318 = load i64, i64* %22, align 8
  %319 = getelementptr inbounds i8*, i8** %317, i64 %318
  store i8* %314, i8** %319, align 8
  br label %320

320:                                              ; preds = %307
  %321 = load i64, i64* %22, align 8
  %322 = add i64 %321, 1
  store i64 %322, i64* %22, align 8
  br label %301

323:                                              ; preds = %301
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %399

328:                                              ; preds = %323
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i8* @htons(i32 %331)
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 5
  store i8* %332, i8** %334, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @htons(i32 %337)
  %339 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 4
  store i8* %338, i8** %340, align 8
  %341 = load i8*, i8** %5, align 8
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %343 = bitcast %struct.TYPE_29__* %342 to i8*
  %344 = ptrtoint i8* %341 to i64
  %345 = ptrtoint i8* %343 to i64
  %346 = sub i64 %344, %345
  store i64 %346, i64* %14, align 8
  %347 = load i64, i64* %14, align 8
  %348 = call i8* @htonl(i64 %347)
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  store i64 0, i64* %23, align 8
  br label %351

351:                                              ; preds = %395, %328
  %352 = load i64, i64* %23, align 8
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = sext i32 %356 to i64
  %358 = icmp ult i64 %352, %357
  br i1 %358, label %359, label %398

359:                                              ; preds = %351
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 4
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %362, align 8
  %364 = load i64, i64* %23, align 8
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %363, i64 %364
  store %struct.TYPE_33__* %365, %struct.TYPE_33__** %24, align 8
  %366 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %367 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i8*, i8** %5, align 8
  %370 = bitcast i8* %369 to i32*
  store i32 %368, i32* %370, align 4
  %371 = load i8*, i8** %5, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 4
  store i8* %372, i8** %5, align 8
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i8*, i8** %5, align 8
  %377 = bitcast i8* %376 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %375
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %377, align 4
  %382 = load i8*, i8** %5, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 8
  store i8* %383, i8** %5, align 8
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i8*, i8** %5, align 8
  %388 = bitcast i8* %387 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %386
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 4
  %393 = load i8*, i8** %5, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 8
  store i8* %394, i8** %5, align 8
  br label %395

395:                                              ; preds = %359
  %396 = load i64, i64* %23, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %23, align 8
  br label %351

398:                                              ; preds = %351
  br label %399

399:                                              ; preds = %398, %323
  br label %400

400:                                              ; preds = %399, %287
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @strcpy(i32 %403, i32 %406)
  %408 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %409 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = call i8* @htons(i32 %411)
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 1
  store i8* %412, i8** %414, align 8
  %415 = load i8*, i8** %5, align 8
  %416 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %417 = bitcast %struct.TYPE_30__* %416 to i8*
  %418 = ptrtoint i8* %415 to i64
  %419 = ptrtoint i8* %417 to i64
  %420 = sub i64 %418, %419
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %25, align 4
  %422 = load i32, i32* %25, align 4
  %423 = call i8* @htons(i32 %422)
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 0
  store i8* %423, i8** %425, align 8
  br label %426

426:                                              ; preds = %400
  %427 = load i64, i64* %15, align 8
  %428 = add i64 %427, 1
  store i64 %428, i64* %15, align 8
  br label %132

429:                                              ; preds = %132
  %430 = load i8*, i8** %5, align 8
  %431 = load i8*, i8** %6, align 8
  %432 = ptrtoint i8* %430 to i64
  %433 = ptrtoint i8* %431 to i64
  %434 = sub i64 %432, %433
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %7, align 4
  %436 = load i32, i32* %7, align 4
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 2
  store i32 %436, i32* %438, align 8
  %439 = load i32, i32* @TSDB_MSG_TYPE_METRIC_META, align 4
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %440, i32 0, i32 3
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = call i64 (...) @minMsgSize()
  %445 = add i64 %443, %444
  %446 = load i64, i64* %12, align 8
  %447 = icmp ule i64 %445, %446
  %448 = zext i1 %447 to i32
  %449 = call i32 @assert(i32 %448)
  %450 = load i32, i32* %7, align 4
  store i32 %450, i32* %2, align 4
  br label %451

451:                                              ; preds = %429, %200, %41
  %452 = load i32, i32* %2, align 4
  ret i32 %452
}

declare dso_local %struct.TYPE_31__* @tscGetMeterMetaInfo(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @tscEstimateMetricMetaMsgSize(%struct.TYPE_27__*) #1

declare dso_local i64 @tscAllocPayload(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_42__*, ...) #1

declare dso_local i32 @tscGetDBInfoFromMeterId(i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.TYPE_32__* @tsGetMetricQueryCondPos(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @taosMbsToUcs4(i32, i32, i8*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @minMsgSize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
