; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessVPeerCfg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessVPeerCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__, i8* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__, i8*, i8* }
%struct.TYPE_11__ = type { i8* }

@TSDB_MAX_VNODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vid:%d, vnode is out of range\00", align 1
@vnodeList = common dso_local global %struct.TYPE_16__* null, align 8
@TSDB_STATUS_CREATING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"vid:%d, vnode is still under creating\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"vid:%d, vpeer cfg received, replica:%d session:%d, vnodeList replica:%d session:%d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"vid:%d, vpeer:%d ip:0x%x vid:%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessVPeerCfg(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @htonl(i8* %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @TSDB_MAX_VNODES, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %4, align 4
  br label %295

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TSDB_STATUS_CREATING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %4, align 4
  br label %295

37:                                               ; preds = %25
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %11, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 11
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @htonl(i8* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @htonl(i8* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 10
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @htonl(i8* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @htonl(i8* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @htonl(i8* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 7
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @htonl(i8* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 6
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @htonl(i8* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @htonl(i8* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @htonl(i8* %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @htons(i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @htonl(i8* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %197

112:                                              ; preds = %37
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116, i8* %119, i32 %126, i8* %133)
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %193, %112
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %196

141:                                              ; preds = %135
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @htonl(i8* %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store i8* %150, i8** %157, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @htonl(i8* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  store i8* %166, i8** %173, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %175, i8* %183, i8* %191)
  br label %193

193:                                              ; preds = %141
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %135

196:                                              ; preds = %135
  br label %197

197:                                              ; preds = %196, %37
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %219

206:                                              ; preds = %197
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ugt i8* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = call i32 @vnodeCreateVnode(i32 %212, %struct.TYPE_13__* %213, %struct.TYPE_15__* %216)
  store i32 %217, i32* %4, align 4
  br label %295

218:                                              ; preds = %206
  br label %294

219:                                              ; preds = %197
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ugt i8* %222, null
  br i1 %223, label %224, label %290

224:                                              ; preds = %219
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %227, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %224
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @vnodeCleanUpOneVnode(i32 %237)
  br label %239

239:                                              ; preds = %236, %224
  %240 = load i32, i32* %10, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = call i32 @vnodeConfigVPeers(i32 %240, i32 %243, %struct.TYPE_15__* %246)
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %251, align 8
  %253 = call i32 @vnodeSaveVnodeCfg(i32 %248, %struct.TYPE_13__* %249, %struct.TYPE_15__* %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %256, %263
  br i1 %264, label %265, label %289

265:                                              ; preds = %239
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @vnodeUpdateHeadFile(i32 %266, i8* %273, i8* %276)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  store i8* %280, i8** %286, align 8
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @vnodeOpenVnode(i32 %287)
  br label %289

289:                                              ; preds = %265, %239
  br label %293

290:                                              ; preds = %219
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @vnodeRemoveVnode(i32 %291)
  br label %293

293:                                              ; preds = %290, %289
  br label %294

294:                                              ; preds = %293, %218
  store i32 0, i32* %4, align 4
  br label %295

295:                                              ; preds = %294, %211, %34, %22
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local i8* @htonl(i8*) #1

declare dso_local i32 @dError(i8*, i32) #1

declare dso_local i32 @dTrace(i8*, i32, ...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @vnodeCreateVnode(i32, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @vnodeCleanUpOneVnode(i32) #1

declare dso_local i32 @vnodeConfigVPeers(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @vnodeSaveVnodeCfg(i32, %struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @vnodeUpdateHeadFile(i32, i8*, i8*) #1

declare dso_local i32 @vnodeOpenVnode(i32) #1

declare dso_local i32 @vnodeRemoveVnode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
