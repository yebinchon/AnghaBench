; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_fdfs_monitor.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_fdfs_monitor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@g_log_context = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g_tracker_group = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@RAND_MAX = common dso_local global i64 0, align 8
@FDFS_TRACKER_SERVER_DEF_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"resolve ip address of tracker server: %s fail!, error info: %s\0A\00", align 1
@h_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"tracker server: %s not exists!\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"server_count=%d, server_index=%d\0A\00", align 1
@pTrackerServer = common dso_local global %struct.TYPE_10__* null, align 8
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\0Atracker server is %s:%d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"delete group: %s success\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"delete group: %s fail, error no: %d, error info: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"delete storage server %s::%s success\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"delete storage server %s::%s fail, error no: %d, error info: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"set_trunk_server\00", align 1
@FDFS_STORAGE_ID_MAX_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"set trunk server %s::%s success, new trunk server: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"set trunk server %s::%s fail, error no: %d, error info: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Invalid command %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @usage(i8** %23)
  store i32 1, i32* %3, align 4
  br label %322

25:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  store i32 2, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %99

33:                                               ; preds = %25
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %91

42:                                               ; preds = %33
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @usage(i8** %60)
  store i32 1, i32* %3, align 4
  br label %322

62:                                               ; preds = %53
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  br label %78

69:                                               ; preds = %50
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %69, %62
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %8, align 8
  br label %90

89:                                               ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %90

90:                                               ; preds = %89, %82
  br label %98

91:                                               ; preds = %42, %33
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %92, i64 %95
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %91, %90
  br label %99

99:                                               ; preds = %98, %32
  %100 = call i32 (...) @log_init()
  %101 = load i32, i32* @LOG_DEBUG, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_log_context, i32 0, i32 0), align 4
  %102 = call i32 (...) @ignore_signal_pipe()
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @fdfs_client_init(i8* %103)
  store i32 %104, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %322

108:                                              ; preds = %99
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @load_log_level_ex(i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 0), align 8
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = call i32 @time(i32* null)
  %118 = call i32 @srand(i32 %117)
  %119 = call i64 (...) @rand()
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 0), align 8
  %121 = sitofp i32 %120 to double
  %122 = call i64 (...) @rand()
  %123 = sitofp i64 %122 to double
  %124 = fmul double %121, %123
  %125 = load i64, i64* @RAND_MAX, align 8
  %126 = sitofp i64 %125 to double
  %127 = fdiv double %124, %126
  %128 = fptosi double %127 to i32
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 1), align 4
  br label %129

129:                                              ; preds = %116, %113
  br label %167

130:                                              ; preds = %108
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* @FDFS_TRACKER_SERVER_DEF_PORT, align 4
  %133 = call i32 @conn_pool_parse_server_info(i8* %131, i32* %14, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @h_errno, align 4
  %138 = call i8* @hstrerror(i32 %137)
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %136, i8* %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %322

141:                                              ; preds = %130
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 0), align 8
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 2), align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = call i64 @fdfs_server_contain1(i64 %150, i32* %14)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 1), align 4
  br label %159

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %142

159:                                              ; preds = %153, %142
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 0), align 8
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  store i32 2, i32* %3, align 4
  br label %322

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %129
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 0), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_tracker_group, i32 0, i32 1), align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %169)
  %171 = call %struct.TYPE_10__* (...) @tracker_get_connection()
  store %struct.TYPE_10__* %171, %struct.TYPE_10__** @pTrackerServer, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pTrackerServer, align 8
  %173 = icmp eq %struct.TYPE_10__* %172, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %167
  %175 = call i32 (...) @fdfs_client_destroy()
  %176 = load i64, i64* @errno, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i64, i64* @errno, align 8
  br label %183

180:                                              ; preds = %174
  %181 = load i32, i32* @ECONNREFUSED, align 4
  %182 = sext i32 %181 to i64
  br label %183

183:                                              ; preds = %180, %178
  %184 = phi i64 [ %179, %178 ], [ %182, %180 ]
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %3, align 4
  br label %322

186:                                              ; preds = %167
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pTrackerServer, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pTrackerServer, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %189, i32 %192)
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %186
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8*, i8** %198, i64 %201
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %11, align 8
  br label %205

204:                                              ; preds = %186
  store i8* null, i8** %11, align 8
  br label %205

205:                                              ; preds = %204, %197
  %206 = load i8*, i8** %8, align 8
  %207 = call i64 @strcmp(i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load i8*, i8** %11, align 8
  %211 = icmp eq i8* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 @list_all_groups(i8* null)
  store i32 %213, i32* %7, align 4
  br label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @list_all_groups(i8* %215)
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %212
  br label %318

218:                                              ; preds = %205
  %219 = load i8*, i8** %8, align 8
  %220 = call i64 @strcmp(i8* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %264

222:                                              ; preds = %218
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %222
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 @tracker_delete_group(%struct.TYPE_9__* @g_tracker_group, i8* %227)
  store i32 %228, i32* %7, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %231)
  br label %239

233:                                              ; preds = %226
  %234 = load i8*, i8** %11, align 8
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i8* @STRERROR(i32 %236)
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* %234, i32 %235, i8* %237)
  br label %239

239:                                              ; preds = %233, %230
  br label %263

240:                                              ; preds = %222
  %241 = load i8**, i8*** %5, align 8
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8*, i8** %241, i64 %244
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %15, align 8
  %247 = load i8*, i8** %11, align 8
  %248 = load i8*, i8** %15, align 8
  %249 = call i32 @tracker_delete_storage(%struct.TYPE_9__* @g_tracker_group, i8* %247, i8* %248)
  store i32 %249, i32* %7, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %240
  %252 = load i8*, i8** %11, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %252, i8* %253)
  br label %262

255:                                              ; preds = %240
  %256 = load i8*, i8** %11, align 8
  %257 = load i8*, i8** %15, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i8* @STRERROR(i32 %259)
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i8* %256, i8* %257, i32 %258, i8* %260)
  br label %262

262:                                              ; preds = %255, %251
  br label %263

263:                                              ; preds = %262, %239
  br label %317

264:                                              ; preds = %218
  %265 = load i8*, i8** %8, align 8
  %266 = call i64 @strcmp(i8* %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %311

268:                                              ; preds = %264
  %269 = load i32, i32* @FDFS_STORAGE_ID_MAX_SIZE, align 4
  %270 = zext i32 %269 to i64
  %271 = call i8* @llvm.stacksave()
  store i8* %271, i8** %17, align 8
  %272 = alloca i8, i64 %270, align 16
  store i64 %270, i64* %18, align 8
  %273 = load i8*, i8** %11, align 8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i8**, i8*** %5, align 8
  %277 = call i32 @usage(i8** %276)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %307

278:                                              ; preds = %268
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp sge i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %16, align 8
  br label %290

283:                                              ; preds = %278
  %284 = load i8**, i8*** %5, align 8
  %285 = load i32, i32* %10, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %10, align 4
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8*, i8** %284, i64 %287
  %289 = load i8*, i8** %288, align 8
  store i8* %289, i8** %16, align 8
  br label %290

290:                                              ; preds = %283, %282
  %291 = load i8*, i8** %11, align 8
  %292 = load i8*, i8** %16, align 8
  %293 = call i32 @tracker_set_trunk_server(%struct.TYPE_9__* @g_tracker_group, i8* %291, i8* %292, i8* %272)
  store i32 %293, i32* %7, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load i8*, i8** %11, align 8
  %297 = load i8*, i8** %16, align 8
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8* %296, i8* %297, i8* %272)
  br label %306

299:                                              ; preds = %290
  %300 = load i8*, i8** %11, align 8
  %301 = load i8*, i8** %16, align 8
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  %304 = call i8* @STRERROR(i32 %303)
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i8* %300, i8* %301, i32 %302, i8* %304)
  br label %306

306:                                              ; preds = %299, %295
  store i32 0, i32* %19, align 4
  br label %307

307:                                              ; preds = %306, %275
  %308 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %308)
  %309 = load i32, i32* %19, align 4
  switch i32 %309, label %324 [
    i32 0, label %310
    i32 1, label %322
  ]

310:                                              ; preds = %307
  br label %316

311:                                              ; preds = %264
  %312 = load i8*, i8** %8, align 8
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %312)
  %314 = load i8**, i8*** %5, align 8
  %315 = call i32 @usage(i8** %314)
  br label %316

316:                                              ; preds = %311, %310
  br label %317

317:                                              ; preds = %316, %263
  br label %318

318:                                              ; preds = %317, %217
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pTrackerServer, align 8
  %320 = call i32 @tracker_close_connection_ex(%struct.TYPE_10__* %319, i32 1)
  %321 = call i32 (...) @fdfs_client_destroy()
  store i32 0, i32* %3, align 4
  br label %322

322:                                              ; preds = %318, %307, %183, %163, %135, %106, %59, %22
  %323 = load i32, i32* %3, align 4
  ret i32 %323

324:                                              ; preds = %307
  unreachable
}

declare dso_local i32 @usage(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @log_init(...) #1

declare dso_local i32 @ignore_signal_pipe(...) #1

declare dso_local i32 @fdfs_client_init(i8*) #1

declare dso_local i32 @load_log_level_ex(i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @conn_pool_parse_server_info(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @hstrerror(i32) #1

declare dso_local i64 @fdfs_server_contain1(i64, i32*) #1

declare dso_local %struct.TYPE_10__* @tracker_get_connection(...) #1

declare dso_local i32 @fdfs_client_destroy(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @list_all_groups(i8*) #1

declare dso_local i32 @tracker_delete_group(%struct.TYPE_9__*, i8*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @tracker_delete_storage(%struct.TYPE_9__*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tracker_set_trunk_server(%struct.TYPE_9__*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
