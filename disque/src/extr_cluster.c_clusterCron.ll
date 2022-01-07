; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterCron.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterCron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@clusterCron.iteration = internal global i64 0, align 8
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_PORT_INCR = common dso_local global i64 0, align 8
@NET_FIRST_BIND_ADDR = common dso_local global i32 0, align 4
@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to connect to Cluster Node [%s]:%d -> %s\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@clusterReadHandler = common dso_local global i32 0, align 4
@CLUSTER_NODE_MEET = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_MEET = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_PING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Connecting with Node %.40s at %s:%d\00", align 1
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Pinging node %.40s\00", align 1
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"*** NODE %.40s possibly failing\00", align 1
@CLUSTER_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterCron() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = call i8* (...) @mstime()
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %18 = load i64, i64* @clusterCron.iteration, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @clusterCron.iteration, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 1000
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  store i32 1000, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @dictGetSafeIterator(i32 %27)
  store i32* %28, i32** %1, align 8
  br label %29

29:                                               ; preds = %165, %89, %57, %44, %24
  %30 = load i32*, i32** %1, align 8
  %31 = call i32* @dictNext(i32* %30)
  store i32* %31, i32** %2, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %166

33:                                               ; preds = %29
  %34 = load i32*, i32** %2, align 8
  %35 = call %struct.TYPE_14__* @dictGetVal(i32* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %40 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %29

45:                                               ; preds = %33
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = call i64 @nodeInHandshake(%struct.TYPE_14__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = call i32 @clusterDelNode(%struct.TYPE_14__* %58)
  br label %29

60:                                               ; preds = %49, %45
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = icmp eq %struct.TYPE_15__* %63, null
  br i1 %64, label %65, label %165

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 3), align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CLUSTER_PORT_INCR, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* @NET_FIRST_BIND_ADDR, align 4
  %76 = call i32 @anetTcpNonBlockBindConnect(i32 %66, i32 %69, i64 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %101

79:                                               ; preds = %65
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = call i8* (...) @mstime()
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @LL_DEBUG, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CLUSTER_PORT_INCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 3), align 4
  %100 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %93, i64 %98, i32 %99)
  br label %29

101:                                              ; preds = %65
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @anetEnableTcpNoDelay(i32* null, i32 %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = call %struct.TYPE_15__* @createClusterLink(%struct.TYPE_14__* %104)
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %11, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %111, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 2), align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AE_READABLE, align 4
  %117 = load i32, i32* @clusterReadHandler, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %119 = call i32 @aeCreateFileEvent(i32 %112, i32 %115, i32 %116, i32 %117, %struct.TYPE_15__* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %101
  %132 = load i32, i32* @CLUSTERMSG_TYPE_MEET, align 4
  br label %135

133:                                              ; preds = %101
  %134 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = call i32 @clusterSendPing(%struct.TYPE_15__* %124, i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i32, i32* @LL_DEBUG, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CLUSTER_PORT_INCR, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %152, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %158, i64 %163)
  br label %165

165:                                              ; preds = %145, %60
  br label %29

166:                                              ; preds = %29
  %167 = load i32*, i32** %1, align 8
  %168 = call i32 @dictReleaseIterator(i32* %167)
  %169 = load i64, i64* @clusterCron.iteration, align 8
  %170 = urem i64 %169, 10
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %236, label %172

172:                                              ; preds = %166
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %218, %172
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 5
  br i1 %175, label %176, label %221

176:                                              ; preds = %173
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32* @dictGetRandomKey(i32 %179)
  store i32* %180, i32** %2, align 8
  %181 = load i32*, i32** %2, align 8
  %182 = call %struct.TYPE_14__* @dictGetVal(i32* %181)
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %13, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = icmp eq %struct.TYPE_15__* %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %176
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %176
  br label %218

193:                                              ; preds = %187
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %198 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %196, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %218

203:                                              ; preds = %193
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = icmp eq %struct.TYPE_14__* %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %206, %203
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %213, %struct.TYPE_14__** %6, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %212, %206
  br label %218

218:                                              ; preds = %217, %202, %192
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %173

221:                                              ; preds = %173
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = icmp ne %struct.TYPE_14__* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %221
  %225 = load i32, i32* @LL_DEBUG, align 4
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 5
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %234 = call i32 @clusterSendPing(%struct.TYPE_15__* %232, i32 %233)
  br label %235

235:                                              ; preds = %224, %221
  br label %236

236:                                              ; preds = %235, %166
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = call i32* @dictGetSafeIterator(i32 %239)
  store i32* %240, i32** %1, align 8
  br label %241

241:                                              ; preds = %369, %336, %325, %260, %236
  %242 = load i32*, i32** %1, align 8
  %243 = call i32* @dictNext(i32* %242)
  store i32* %243, i32** %2, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %370

245:                                              ; preds = %241
  %246 = load i32*, i32** %2, align 8
  %247 = call %struct.TYPE_14__* @dictGetVal(i32* %246)
  store %struct.TYPE_14__* %247, %struct.TYPE_14__** %14, align 8
  %248 = call i8* (...) @mstime()
  %249 = ptrtoint i8* %248 to i32
  store i32 %249, i32* %5, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %254 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %252, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %245
  br label %241

261:                                              ; preds = %245
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = icmp ne %struct.TYPE_15__* %264, null
  br i1 %265, label %266, label %306

266:                                              ; preds = %261
  %267 = load i32, i32* %5, align 4
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %267, %272
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %276, label %306

276:                                              ; preds = %266
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %306

281:                                              ; preds = %276
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %285, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %281
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %292, %295
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %298 = sdiv i32 %297, 2
  %299 = sext i32 %298 to i64
  %300 = icmp sgt i64 %296, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %290
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 5
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = call i32 @freeClusterLink(%struct.TYPE_15__* %304)
  br label %306

306:                                              ; preds = %301, %290, %281, %276, %266, %261
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 5
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %308, align 8
  %310 = icmp ne %struct.TYPE_15__* %309, null
  br i1 %310, label %311, label %331

311:                                              ; preds = %306
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %311
  %317 = load i32, i32* %5, align 4
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = sub nsw i32 %317, %320
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %323 = sdiv i32 %322, 2
  %324 = icmp sgt i32 %321, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %316
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 5
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = load i32, i32* @CLUSTERMSG_TYPE_PING, align 4
  %330 = call i32 @clusterSendPing(%struct.TYPE_15__* %328, i32 %329)
  br label %241

331:                                              ; preds = %316, %311, %306
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %241

337:                                              ; preds = %331
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = sub nsw i64 %339, %342
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %15, align 4
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %369

348:                                              ; preds = %337
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %353 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %354 = or i32 %352, %353
  %355 = and i32 %351, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %368, label %357

357:                                              ; preds = %348
  %358 = load i32, i32* @LL_DEBUG, align 4
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %358, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %361)
  %363 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  store i32 1, i32* %3, align 4
  br label %368

368:                                              ; preds = %357, %348
  br label %369

369:                                              ; preds = %368, %337
  br label %241

370:                                              ; preds = %241
  %371 = load i32*, i32** %1, align 8
  %372 = call i32 @dictReleaseIterator(i32* %371)
  %373 = load i32, i32* %3, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %381, label %375

375:                                              ; preds = %370
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @CLUSTER_FAIL, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %375, %370
  %382 = call i32 (...) @clusterUpdateState()
  br label %383

383:                                              ; preds = %381, %375
  %384 = call i32 (...) @clusterUpdateReachableNodes()
  ret void
}

declare dso_local i8* @mstime(...) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_14__* @dictGetVal(i32*) #1

declare dso_local i64 @nodeInHandshake(%struct.TYPE_14__*) #1

declare dso_local i32 @clusterDelNode(%struct.TYPE_14__*) #1

declare dso_local i32 @anetTcpNonBlockBindConnect(i32, i32, i64, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32, ...) #1

declare dso_local i32 @anetEnableTcpNoDelay(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @createClusterLink(%struct.TYPE_14__*) #1

declare dso_local i32 @aeCreateFileEvent(i32, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @clusterSendPing(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i32 @freeClusterLink(%struct.TYPE_15__*) #1

declare dso_local i32 @clusterUpdateState(...) #1

declare dso_local i32 @clusterUpdateReachableNodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
