; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessMultiMeterMetaRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessMultiMeterMetaRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32, i64 }
%struct.TYPE_15__ = type { i8, i8 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i8, i64, i8, i8, i8, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }

@TSDB_IE_TYPE_META = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"invalid ie type:%d\00", align 1
@TSDB_CODE_INVALID_IE = common dso_local global i32 0, align 4
@TSDB_CODE_OTHERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid meter vgid:%d, sid%d\00", align 1
@TSDB_CODE_INVALID_VALUE = common dso_local global i8* null, align 8
@TSDB_MAX_TAGS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid tag value count:%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid numOfTags:%d\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid numOfColumns:%d\00", align 1
@TSDB_VNODES_SUPPORT = common dso_local global i32 0, align 4
@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@tscCacheHandle = common dso_local global i32 0, align 4
@tsMeterMetaKeepTimer = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"%p load multi-metermeta resp complete num:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscProcessMultiMeterMetaRsp(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %5, align 1
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @TSDB_IE_TYPE_META, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load i8, i8* %5, align 1
  %32 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  %33 = load i32, i32* @TSDB_CODE_INVALID_IE, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %40, i32* %2, align 4
  br label %370

41:                                               ; preds = %1
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %9, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @htonl(i64 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  store i8* %52, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %351, %41
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %354

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %10, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %11, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @htonl(i64 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 8
  %72 = call i8* @htons(i8 signext %71)
  %73 = ptrtoint i8* %72 to i8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i8 %73, i8* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @htonl(i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @htobe64(i32 %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %57
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93, %57
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 signext %102, i64 %105)
  %107 = load i8*, i8** @TSDB_CODE_INVALID_VALUE, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i64 %112, i64* %115, align 8
  %116 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %116, i32* %2, align 4
  br label %370

117:                                              ; preds = %93
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load i8, i8* %119, align 8
  %121 = call i8* @htons(i8 signext %120)
  %122 = ptrtoint i8* %121 to i8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i8 %122, i8* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 4
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @TSDB_MAX_TAGS, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sgt i32 %128, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %117
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %132, %117
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i8, i8* %140, align 1
  %142 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8 signext %141)
  %143 = load i8*, i8** @TSDB_CODE_INVALID_VALUE, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i64 %148, i64* %151, align 8
  %152 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %152, i32* %2, align 4
  br label %370

153:                                              ; preds = %132
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 4
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* @TSDB_MAX_TAGS, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 4
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %161, %153
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load i8, i8* %169, align 1
  %171 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 signext %170)
  %172 = load i8*, i8** @TSDB_CODE_INVALID_VALUE, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  store i64 %177, i64* %180, align 8
  %181 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %181, i32* %2, align 4
  br label %370

182:                                              ; preds = %161
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load i8, i8* %184, align 8
  %186 = sext i8 %185 to i32
  %187 = load i8, i8* @TSDB_MAX_COLUMNS, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp sgt i32 %186, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %182
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  %193 = load i8, i8* %192, align 8
  %194 = sext i8 %193 to i32
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %190, %182
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 3
  %199 = load i8, i8* %198, align 8
  %200 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8 signext %199)
  %201 = load i8*, i8** @TSDB_CODE_INVALID_VALUE, align 8
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  store i64 %206, i64* %209, align 8
  %210 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %210, i32* %2, align 4
  br label %370

211:                                              ; preds = %190
  store i32 0, i32* %12, align 4
  br label %212

212:                                              ; preds = %234, %211
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @TSDB_VNODES_SUPPORT, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %212
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @htonl(i64 %224)
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  store i64 %226, i64* %233, align 8
  br label %234

234:                                              ; preds = %216
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %212

237:                                              ; preds = %212
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  store i8 0, i8* %239, align 2
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 72
  store i8* %241, i8** %8, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = bitcast i8* %242 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %243, %struct.TYPE_15__** %4, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 3
  %246 = load i8, i8* %245, align 8
  %247 = sext i8 %246 to i32
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 4
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = add nsw i32 %247, %251
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %254

254:                                              ; preds = %294, %237
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %13, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %297

259:                                              ; preds = %254
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i8, i8* %261, align 1
  %263 = call i8* @htons(i8 signext %262)
  %264 = ptrtoint i8* %263 to i8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  store i8 %264, i8* %266, align 1
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i8, i8* %268, align 1
  %270 = call i8* @htons(i8 signext %269)
  %271 = ptrtoint i8* %270 to i8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  store i8 %271, i8* %273, align 1
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 3
  %277 = load i8, i8* %276, align 8
  %278 = sext i8 %277 to i32
  %279 = icmp slt i32 %274, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %259
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 5
  %287 = load i8, i8* %286, align 2
  %288 = sext i8 %287 to i32
  %289 = add nsw i32 %288, %284
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %286, align 2
  br label %291

291:                                              ; preds = %280, %259
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 1
  store %struct.TYPE_15__* %293, %struct.TYPE_15__** %4, align 8
  br label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %254

297:                                              ; preds = %254
  %298 = load i64, i64* %13, align 8
  %299 = mul i64 %298, 2
  %300 = load i8*, i8** %8, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 %299
  store i8* %301, i8** %8, align 8
  store i64 0, i64* %15, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %303 = call %struct.TYPE_15__* @tsGetTagSchema(%struct.TYPE_18__* %302)
  store %struct.TYPE_15__* %303, %struct.TYPE_15__** %16, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %330

309:                                              ; preds = %297
  store i64 0, i64* %17, align 8
  br label %310

310:                                              ; preds = %326, %309
  %311 = load i64, i64* %17, align 8
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 4
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i64
  %316 = icmp slt i64 %311, %315
  br i1 %316, label %317, label %329

317:                                              ; preds = %310
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %319 = load i64, i64* %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i64
  %324 = load i64, i64* %15, align 8
  %325 = add nsw i64 %324, %323
  store i64 %325, i64* %15, align 8
  br label %326

326:                                              ; preds = %317
  %327 = load i64, i64* %17, align 8
  %328 = add nsw i64 %327, 1
  store i64 %328, i64* %17, align 8
  br label %310

329:                                              ; preds = %310
  br label %330

330:                                              ; preds = %329, %297
  %331 = load i64, i64* %15, align 8
  %332 = load i8*, i8** %8, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 %331
  store i8* %333, i8** %8, align 8
  %334 = load i8*, i8** %8, align 8
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %336 = bitcast %struct.TYPE_18__* %335 to i8*
  %337 = ptrtoint i8* %334 to i64
  %338 = ptrtoint i8* %336 to i64
  %339 = sub i64 %337, %338
  store i64 %339, i64* %18, align 8
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 7
  store i64 0, i64* %341, align 8
  %342 = load i32, i32* @tscCacheHandle, align 4
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %347 = bitcast %struct.TYPE_18__* %346 to i8*
  %348 = load i64, i64* %18, align 8
  %349 = load i32, i32* @tsMeterMetaKeepTimer, align 4
  %350 = call i32 @taosAddDataIntoCache(i32 %342, i32 %345, i8* %347, i64 %348, i32 %349)
  br label %351

351:                                              ; preds = %330
  %352 = load i64, i64* %7, align 8
  %353 = add nsw i64 %352, 1
  store i64 %353, i64* %7, align 8
  br label %53

354:                                              ; preds = %53
  %355 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 1
  store i32 %355, i32* %358, align 8
  %359 = load i64, i64* %7, align 8
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 2
  store i64 %359, i64* %362, align 8
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @tscTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_14__* %363, i64 %367)
  %369 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %369, i32* %2, align 4
  br label %370

370:                                              ; preds = %354, %196, %167, %138, %98, %30
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local i32 @tscError(i8*, i8 signext, ...) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @htons(i8 signext) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local %struct.TYPE_15__* @tsGetTagSchema(%struct.TYPE_18__*) #1

declare dso_local i32 @taosAddDataIntoCache(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
