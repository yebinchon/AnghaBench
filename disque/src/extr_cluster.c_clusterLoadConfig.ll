; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterLoadConfig.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterLoadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i32, i8*, i64, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Loading the cluster node config from %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"someVarNameHere\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Skipping unknown cluster config variable '%s'\00", align 1
@CLUSTER_NAMELEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@myself = common dso_local global %struct.TYPE_9__* null, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"fail?\00", align 1
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"noaddr\00", align 1
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@CLUSTER_NODE_LEAVING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"noflags\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Unknown flag in disque cluster config file\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Node configuration loaded, I'm %.40s\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [52 x i8] c"Unrecoverable error: corrupted cluster config file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterLoadConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @C_ERR, align 4
  store i32 %23, i32* %2, align 4
  br label %312

24:                                               ; preds = %18
  %25 = load i32, i32* @LL_WARNING, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i64, i64* @errno, align 8
  %28 = call i32 @strerror(i64 %27)
  %29 = call i32 (i32, i8*, ...) @serverLog(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fileno(i32* %32)
  %34 = call i32 @fstat(i32 %33, %struct.stat* %5)
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32, i32* @C_ERR, align 4
  store i32 %43, i32* %2, align 4
  br label %312

44:                                               ; preds = %36, %31
  store i32 1024, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @zmalloc(i32 %45)
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %279, %98, %59, %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @fgets(i8* %48, i32 %49, i32* %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %283

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %47

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = call i8** @sdssplitargs(i8* %61, i32* %9)
  store i8** %62, i8*** %10, align 8
  %63 = load i8**, i8*** %10, align 8
  %64 = icmp eq i8** %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %300

66:                                               ; preds = %60
  %67 = load i8**, i8*** %10, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strcasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i8**, i8*** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcasecmp(i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %94

86:                                               ; preds = %77
  %87 = load i32, i32* @LL_WARNING, align 4
  %88 = load i8**, i8*** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, ...) @serverLog(i32 %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %86, %85
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %8, align 4
  br label %73

98:                                               ; preds = %73
  %99 = load i8**, i8*** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @sdsfreesplitres(i8** %99, i32 %100)
  br label %47

102:                                              ; preds = %66
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 6
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %300

106:                                              ; preds = %102
  %107 = load i8**, i8*** %10, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = load i64, i64* @CLUSTER_NAMELEN, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %300

114:                                              ; preds = %106
  %115 = load i8**, i8*** %10, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call %struct.TYPE_9__* @clusterLookupNode(i8* %117)
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load i8**, i8*** %10, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call %struct.TYPE_9__* @createClusterNode(i8* %124, i32 0)
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %11, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = call i32 @clusterAddNode(%struct.TYPE_9__* %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i8**, i8*** %10, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @strrchr(i8* %131, i8 signext 58)
  store i8* %132, i8** %12, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %300

135:                                              ; preds = %128
  %136 = load i8*, i8** %12, align 8
  store i8 0, i8* %136, align 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load i8**, i8*** %10, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %10, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strlen(i8* %145)
  %147 = add nsw i64 %146, 1
  %148 = call i32 @memcpy(i32 %139, i8* %142, i64 %147)
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = call i64 @atoi(i8* %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 5
  store i64 %151, i64* %153, align 8
  %154 = load i8**, i8*** %10, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 2
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %13, align 8
  store i8* %156, i8** %12, align 8
  br label %157

157:                                              ; preds = %258, %135
  %158 = load i8*, i8** %12, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %259

160:                                              ; preds = %157
  %161 = load i8*, i8** %13, align 8
  %162 = call i8* @strchr(i8* %161, i8 signext 44)
  store i8* %162, i8** %12, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %12, align 8
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i8*, i8** %13, align 8
  %169 = call i64 @strcasecmp(i8* %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %167
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = icmp eq %struct.TYPE_9__* %174, null
  %176 = zext i1 %175 to i32
  %177 = call i32 @serverAssert(i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %180, align 8
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** @myself, align 8
  %181 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %252

186:                                              ; preds = %167
  %187 = load i8*, i8** %13, align 8
  %188 = call i64 @strcasecmp(i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %251

196:                                              ; preds = %186
  %197 = load i8*, i8** %13, align 8
  %198 = call i64 @strcasecmp(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = call i8* (...) @mstime()
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  br label %250

209:                                              ; preds = %196
  %210 = load i8*, i8** %13, align 8
  %211 = call i64 @strcasecmp(i8* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %249

219:                                              ; preds = %209
  %220 = load i8*, i8** %13, align 8
  %221 = call i64 @strcasecmp(i8* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %219
  %224 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %248

229:                                              ; preds = %219
  %230 = load i8*, i8** %13, align 8
  %231 = call i64 @strcasecmp(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* @CLUSTER_NODE_LEAVING, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %247

239:                                              ; preds = %229
  %240 = load i8*, i8** %13, align 8
  %241 = call i64 @strcasecmp(i8* %240, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  br label %246

244:                                              ; preds = %239
  %245 = call i32 @serverPanic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %243
  br label %247

247:                                              ; preds = %246, %233
  br label %248

248:                                              ; preds = %247, %223
  br label %249

249:                                              ; preds = %248, %213
  br label %250

250:                                              ; preds = %249, %200
  br label %251

251:                                              ; preds = %250, %190
  br label %252

252:                                              ; preds = %251, %171
  %253 = load i8*, i8** %12, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i8*, i8** %12, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  store i8* %257, i8** %13, align 8
  br label %258

258:                                              ; preds = %255, %252
  br label %157

259:                                              ; preds = %157
  %260 = load i8**, i8*** %10, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 3
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @atoi(i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = call i8* (...) @mstime()
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %265, %259
  %270 = load i8**, i8*** %10, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 4
  %272 = load i8*, i8** %271, align 8
  %273 = call i64 @atoi(i8* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = call i8* (...) @mstime()
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %275, %269
  %280 = load i8**, i8*** %10, align 8
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @sdsfreesplitres(i8** %280, i32 %281)
  br label %47

283:                                              ; preds = %47
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = icmp eq %struct.TYPE_9__* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %300

289:                                              ; preds = %283
  %290 = load i8*, i8** %6, align 8
  %291 = call i32 @zfree(i8* %290)
  %292 = load i32*, i32** %4, align 8
  %293 = call i32 @fclose(i32* %292)
  %294 = load i32, i32* @LL_NOTICE, align 4
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i32, i8*, ...) @serverLog(i32 %294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %297)
  %299 = load i32, i32* @C_OK, align 4
  store i32 %299, i32* %2, align 4
  br label %312

300:                                              ; preds = %288, %134, %113, %105, %65
  %301 = load i32, i32* @LL_WARNING, align 4
  %302 = call i32 (i32, i8*, ...) @serverLog(i32 %301, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  %303 = load i8*, i8** %6, align 8
  %304 = call i32 @zfree(i8* %303)
  %305 = load i32*, i32** %4, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %300
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @fclose(i32* %308)
  br label %310

310:                                              ; preds = %307, %300
  %311 = call i32 @exit(i32 1) #3
  unreachable

312:                                              ; preds = %289, %40, %22
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_9__* @clusterLookupNode(i8*) #1

declare dso_local %struct.TYPE_9__* @createClusterNode(i8*, i32) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_9__*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i8* @mstime(...) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
