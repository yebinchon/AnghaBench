; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosSendMsgToPeerH.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosSendMsgToPeerH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64*, i32, i8*, i64, i64 }
%struct.TYPE_16__ = type { i32, i8*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i8*, i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i64, i32, i64, i64, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }

@TSDB_AUTH_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"%s cid:%d sid:%d id:%s, msg:%s is put into queue pConn:%p\00", align 1
@taosMsg = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"%s cid:%d sid:%d id:%s, bug, there shall be no pengding req pConn:%p\00", align 1
@taosProcessTaosTimer = common dso_local global i32 0, align 4
@tsRpcTimer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosSendMsgToPeerH(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %14, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %290

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %29 = icmp ne %struct.TYPE_14__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %290

31:                                               ; preds = %24
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %15, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %41
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %16, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -48
  %45 = bitcast i8* %44 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %10, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = bitcast %struct.TYPE_12__* %46 to i8*
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* inttoptr (i64 48 to i8*), i64 %49
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %31
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 17
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 17
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57, %31
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 16
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 16
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = bitcast i8* %82 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %18, align 8
  %84 = call i32 (...) @taosGetTimestampSec()
  %85 = call i64 @htonl(i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 16
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @htonl(i32 %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = bitcast %struct.TYPE_12__* %97 to i32*
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @TSDB_AUTH_LEN, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 15
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @taosBuildAuthHeader(i32* %98, i64 %102, i32 %105, i32 %108)
  br label %116

110:                                              ; preds = %68
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @htonl(i32 %111)
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %110, %73
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = call i32 @pthread_mutex_lock(i32* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %116
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 14
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @tfree(i8* %131)
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TSDB_CODE_ACTION_IN_PROGRESS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %126
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %146, %126
  br label %262

152:                                              ; preds = %116
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 -48
  %155 = getelementptr inbounds i8, i8* %154, i64 -24
  %156 = bitcast i8* %155 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %156, %struct.TYPE_16__** %11, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %161, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %210

169:                                              ; preds = %152
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 12
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = icmp ne %struct.TYPE_16__* %172, null
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 12
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  store %struct.TYPE_16__* %175, %struct.TYPE_16__** %179, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 12
  store %struct.TYPE_16__* %180, %struct.TYPE_16__** %182, align 8
  br label %190

183:                                              ; preds = %169
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 12
  store %struct.TYPE_16__* %184, %struct.TYPE_16__** %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 11
  store %struct.TYPE_16__* %187, %struct.TYPE_16__** %189, align 8
  br label %190

190:                                              ; preds = %183, %174
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** @taosMsg, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %209 = call i32 @tTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %193, i32 %196, i32 %199, i32 %202, i32 %207, %struct.TYPE_14__* %208)
  store i32 0, i32* %13, align 4
  br label %261

210:                                              ; preds = %152
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = icmp eq %struct.TYPE_16__* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = icmp ne %struct.TYPE_16__* %219, null
  br i1 %220, label %221, label %236

221:                                              ; preds = %210
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %235 = call i32 @tError(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233, %struct.TYPE_14__* %234)
  br label %236

236:                                              ; preds = %221, %210
  %237 = load i32, i32* %17, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 7
  store %struct.TYPE_16__* %245, %struct.TYPE_16__** %247, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 6
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %236
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 5
  store i8* %257, i8** %259, align 8
  br label %260

260:                                              ; preds = %254, %236
  br label %261

261:                                              ; preds = %260, %190
  br label %262

262:                                              ; preds = %261, %151
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %285

265:                                              ; preds = %262
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %268 = bitcast %struct.TYPE_12__* %267 to i8*
  %269 = load i32, i32* %13, align 4
  %270 = call i32 @taosSendDataToPeer(%struct.TYPE_14__* %266, i8* %268, i32 %269)
  %271 = load i32, i32* %17, align 4
  %272 = and i32 %271, 1
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %265
  %275 = load i32, i32* @taosProcessTaosTimer, align 4
  %276 = load i32, i32* @tsRpcTimer, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 4
  %283 = call i32 @taosTmrReset(i32 %275, i32 %276, %struct.TYPE_14__* %277, i32 %280, i32* %282)
  br label %284

284:                                              ; preds = %274, %265
  br label %285

285:                                              ; preds = %284, %262
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = call i32 @pthread_mutex_unlock(i32* %287)
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %285, %30, %23
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @taosGetTimestampSec(...) #1

declare dso_local i32 @taosBuildAuthHeader(i32*, i64, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tfree(i8*) #1

declare dso_local i32 @tTrace(i8*, i32, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tError(i8*, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @taosSendDataToPeer(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
