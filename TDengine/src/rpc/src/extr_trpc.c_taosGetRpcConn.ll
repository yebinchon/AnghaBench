; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosGetRpcConn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosGetRpcConn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 (i8*, i32*, i32*, i32, i32)*, i64, i32, i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_9__* }

@TAOS_ID_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"%s cid:%d, maximum number of sessions:%d is reached\00", align 1
@TSDB_CODE_MAX_SESSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s cid:%d sid:%d, ID allocated, used:%d, old id:%d\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s cid:%d sid:%d id:%s, session is already there\00", align 1
@TSDB_CODE_UNEXPECTED_RESPONSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"%s cid:%d, sid:%d session is already released\00", align 1
@TSDB_CODE_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"%s cid:%d sid:%d, connlist is null, received:%s\00", align 1
@TSDB_CODE_MISMATCHED_METER_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"%s cid:%d sid:%d id:%s, meterId not there pConn:%p\00", align 1
@TAOS_CONN_UDPC = common dso_local global i64 0, align 8
@TAOS_CONN_UDPS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"%s cid:%d sid:%d id:%s, TAOS connection is allocated, localPort:%d pConn:%p\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"%s cid:%d sid:%d id:%s, meterId is not matched, received:%s\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosGetRpcConn(i32 %0, i32 %1, i8* %2, %struct.TYPE_8__* %3, %struct.TYPE_9__** %4, i8 signext %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__**, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %13, align 8
  store i8 %5, i8* %14, align 1
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %342

24:                                               ; preds = %7
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %17, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TAOS_ID_FREE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %113

39:                                               ; preds = %36
  %40 = load i8, i8* %14, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %110

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = call i64 @taosGetStrHashData(i32 %46, i8* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %49, %struct.TYPE_9__*** %19, align 8
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %51 = icmp ne %struct.TYPE_9__** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %16, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @taosAllocateId(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @tError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %72)
  %74 = load i32, i32* @TSDB_CODE_MAX_SESSIONS, align 4
  store i32 %74, i32* %8, align 4
  br label %342

75:                                               ; preds = %58
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @taosIdPoolNumOfUsed(i32 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load i32, i32* %18, align 4
  %88 = call i32 (i8*, i32, i32, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %80, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %75
  br label %109

90:                                               ; preds = %55
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 (i8*, i32, i32, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i8* %107)
  br label %109

109:                                              ; preds = %90, %89
  br label %112

110:                                              ; preds = %39
  %111 = load i32, i32* @TSDB_CODE_UNEXPECTED_RESPONSE, align 4
  store i32 %111, i32* %8, align 4
  br label %342

112:                                              ; preds = %109
  br label %132

113:                                              ; preds = %36
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 11
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = icmp eq %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @tError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @TSDB_CODE_INVALID_VALUE, align 4
  store i32 %130, i32* %8, align 4
  br label %342

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %24
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %16, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %141 = icmp eq %struct.TYPE_10__* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %133
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = icmp eq %struct.TYPE_9__* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %142, %133
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 (i8*, i32, i32, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i8* %153)
  %155 = load i32, i32* @TSDB_CODE_MISMATCHED_METER_ID, align 4
  store i32 %155, i32* %8, align 4
  br label %342

156:                                              ; preds = %142
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 11
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = icmp eq %struct.TYPE_9__* %159, null
  br i1 %160, label %161, label %312

161:                                              ; preds = %156
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %163 = call i32 @memset(%struct.TYPE_9__* %162, i32 0, i32 64)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 11
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @tListLen(i32 %173)
  %175 = call i32 @memcpy(i32 %169, i8* %170, i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 10
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %178, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = call i32 (...) @rand()
  %186 = and i32 %185, 65535
  %187 = sext i32 %186 to i64
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 9
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = shl i32 %192, %195
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %196, %199
  %201 = call i32 @htonl(i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 8
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32 (i8*, i32*, i32*, i32, i32)*, i32 (i8*, i32*, i32*, i32, i32)** %205, align 8
  %207 = icmp ne i32 (i8*, i32*, i32*, i32, i32)* %206, null
  br i1 %207, label %208, label %246

208:                                              ; preds = %161
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32 (i8*, i32*, i32*, i32, i32)*, i32 (i8*, i32*, i32*, i32, i32)** %210, align 8
  %212 = load i8*, i8** %11, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 %211(i8* %212, i32* %214, i32* %216, i32 %219, i32 %222)
  store i32 %223, i32* %20, align 4
  %224 = load i32, i32* %20, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %208
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %236 = call i32 @tWarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %229, i32 %230, i32 %231, i32 %234, %struct.TYPE_9__* %235)
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @taosFreeId(i32 %239, i32 %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %243 = call i32 @memset(%struct.TYPE_9__* %242, i32 0, i32 64)
  %244 = load i32, i32* %20, align 4
  store i32 %244, i32* %8, align 4
  br label %342

245:                                              ; preds = %208
  br label %246

246:                                              ; preds = %245, %161
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TAOS_CONN_UDPC, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @TAOS_CONN_UDPS, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %290

258:                                              ; preds = %252, %246
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %290

263:                                              ; preds = %258
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 7
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %263
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = srem i32 %272, %275
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %281, %285
  %287 = trunc i64 %286 to i32
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 4
  br label %290

290:                                              ; preds = %268, %263, %258, %252
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i8*, i8** %15, align 8
  %295 = bitcast %struct.TYPE_9__** %16 to i8*
  %296 = call i32 @taosAddStrHash(i32 %293, i8* %294, i8* %295)
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %10, align 4
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %311 = call i32 (i8*, i32, i32, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %299, i32 %300, i32 %301, i8* %306, i32 %309, %struct.TYPE_9__* %310)
  br label %338

312:                                              ; preds = %156
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @tListLen(i32 %319)
  %321 = call i64 @memcmp(i32 %315, i8* %316, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %337

323:                                              ; preds = %312
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %10, align 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to i8*
  %334 = load i8*, i8** %11, align 8
  %335 = call i32 (i8*, i32, i32, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %326, i32 %327, i32 %328, i8* %333, i8* %334)
  %336 = load i32, i32* @TSDB_CODE_MISMATCHED_METER_ID, align 4
  store i32 %336, i32* %8, align 4
  br label %342

337:                                              ; preds = %312
  br label %338

338:                                              ; preds = %337, %290
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %340 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %339, %struct.TYPE_9__** %340, align 8
  %341 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %341, i32* %8, align 4
  br label %342

342:                                              ; preds = %338, %323, %226, %147, %123, %110, %65, %23
  %343 = load i32, i32* %8, align 4
  ret i32 %343
}

declare dso_local i64 @taosGetStrHashData(i32, i8*) #1

declare dso_local i32 @taosAllocateId(i32) #1

declare dso_local i32 @tError(i8*, i32, i32, i32) #1

declare dso_local i32 @tTrace(i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @taosIdPoolNumOfUsed(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @tListLen(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @tWarn(i8*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @taosFreeId(i32, i32) #1

declare dso_local i32 @taosAddStrHash(i32, i8*, i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
