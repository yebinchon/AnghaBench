; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessMeterMetaRsp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscProcessMeterMetaRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_16__ = type { i64, i32, i64, i32, i8, i32, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 }

@TSDB_IE_TYPE_META = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"invalid ie type:%d\00", align 1
@TSDB_CODE_INVALID_IE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid meter vgid:%d, sid%d\00", align 1
@TSDB_CODE_INVALID_VALUE = common dso_local global i32 0, align 4
@TSDB_MAX_TAGS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid tag value count:%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid numOfTags:%d\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid numOfColumns:%d\00", align 1
@TSDB_VNODES_SUPPORT = common dso_local global i32 0, align 4
@TSDB_METER_MTABLE = common dso_local global i64 0, align 8
@tscCacheHandle = common dso_local global i32 0, align 4
@tsMeterMetaKeepTimer = common dso_local global i32 0, align 4
@TSDB_CODE_OTHERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscProcessMeterMetaRsp(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @TSDB_IE_TYPE_META, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i8, i8* %6, align 1
  %29 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 signext %28)
  %30 = load i32, i32* @TSDB_CODE_INVALID_IE, align 4
  store i32 %30, i32* %2, align 4
  br label %301

31:                                               ; preds = %1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %4, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @htonl(i64 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @htons(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @htonl(i64 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @htobe64(i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %31
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67, %31
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 signext %76, i64 %79)
  %81 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %81, i32* %2, align 4
  br label %301

82:                                               ; preds = %67
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @htons(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load i8, i8* %91, align 4
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @TSDB_MAX_TAGS, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %82
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load i8, i8* %99, align 4
  %101 = sext i8 %100 to i32
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97, %82
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i8, i8* %105, align 4
  %107 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8 signext %106)
  %108 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %108, i32* %2, align 4
  br label %301

109:                                              ; preds = %97
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 4
  %112 = load i8, i8* %111, align 4
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @TSDB_MAX_TAGS, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i8, i8* %119, align 4
  %121 = sext i8 %120 to i32
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117, %109
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  %126 = load i8, i8* %125, align 4
  %127 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8 signext %126)
  %128 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %128, i32* %2, align 4
  br label %301

129:                                              ; preds = %117
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135, %129
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = trunc i32 %143 to i8
  %145 = call i32 (i8*, i8, ...) @tscError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8 signext %144)
  %146 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %146, i32* %2, align 4
  br label %301

147:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @TSDB_VNODES_SUPPORT, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @htonl(i64 %160)
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i64 %162, i64* %169, align 8
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  store i32 0, i32* %175, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 72
  store i8* %177, i8** %7, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = bitcast i8* %178 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %5, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load i8, i8* %184, align 4
  %186 = sext i8 %185 to i32
  %187 = add nsw i32 %182, %186
  store i32 %187, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %223, %173
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %226

192:                                              ; preds = %188
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @htons(i32 %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @htons(i32 %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %192
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %212, %192
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 1
  store %struct.TYPE_14__* %222, %struct.TYPE_14__** %5, align 8
  br label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  br label %188

226:                                              ; preds = %188
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 8
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 %229
  store i8* %231, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = call %struct.TYPE_14__* @tsGetTagSchema(%struct.TYPE_16__* %232)
  store %struct.TYPE_14__* %233, %struct.TYPE_14__** %12, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @TSDB_METER_MTABLE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %226
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %256, %239
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 4
  %244 = load i8, i8* %243, align 4
  %245 = sext i8 %244 to i32
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %240
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %240

259:                                              ; preds = %240
  br label %260

260:                                              ; preds = %259, %226
  %261 = load i32, i32* %11, align 4
  %262 = load i8*, i8** %7, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %7, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %267 = bitcast %struct.TYPE_16__* %266 to i8*
  %268 = ptrtoint i8* %265 to i64
  %269 = ptrtoint i8* %267 to i64
  %270 = sub i64 %268, %269
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %14, align 4
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 7
  store i64 0, i64* %273, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = call %struct.TYPE_15__* @tscGetMeterMetaInfo(i32* %275, i32 0)
  store %struct.TYPE_15__* %276, %struct.TYPE_15__** %15, align 8
  %277 = load i32, i32* @tscCacheHandle, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = bitcast %struct.TYPE_16__** %279 to i8**
  %281 = call i32 @taosRemoveDataFromCache(i32 %277, i8** %280, i32 0)
  %282 = load i32, i32* @tscCacheHandle, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %287 = bitcast %struct.TYPE_16__* %286 to i8*
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* @tsMeterMetaKeepTimer, align 4
  %290 = call i64 @taosAddDataIntoCache(i32 %282, i32 %285, i8* %287, i32 %288, i32 %289)
  %291 = inttoptr i64 %290 to %struct.TYPE_16__*
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  store %struct.TYPE_16__* %291, %struct.TYPE_16__** %293, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = icmp eq %struct.TYPE_16__* %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %260
  store i32 0, i32* %2, align 4
  br label %301

299:                                              ; preds = %260
  %300 = load i32, i32* @TSDB_CODE_OTHERS, align 4
  store i32 %300, i32* %2, align 4
  br label %301

301:                                              ; preds = %299, %298, %140, %123, %103, %72, %27
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @tscError(i8*, i8 signext, ...) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local %struct.TYPE_14__* @tsGetTagSchema(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i32 @taosRemoveDataFromCache(i32, i8**, i32) #1

declare dso_local i64 @taosAddDataIntoCache(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
