; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c".socksd.pid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"socksd IPv4%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--pidfile\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--config\00", align 1
@configfile = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"--backend\00", align 1
@backendaddr = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"--backendport\00", align 1
@backendport = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [10 x i8] c"--logfile\00", align 1
@serverlogfile = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--ipv4\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"--port\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"socksd: invalid --port argument (%s)\0A\00", align 1
@port = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [180 x i8] c"Usage: socksd [option]\0A --backend [ipv4 addr]\0A --backendport [TCP port]\0A --config [file]\0A --version\0A --logfile [file]\0A --pidfile [file]\0A --ipv4\0A --ipv6\0A --bindonly\0A --port [port]\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Error creating socket: (%d) %s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Running %s version\00", align 1
@ipv_inuse = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"Listening on port %hu\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [44 x i8] c"============> socksd exits with signal (%d)\00", align 1
@exit_signal = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"============> socksd quits\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@use_ipv6 = common dso_local global i32 0, align 4
@win32_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 1, i32* %12, align 4
  br label %17

17:                                               ; preds = %234, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %235

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %310

31:                                               ; preds = %21
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %45, %39
  br label %233

53:                                               ; preds = %31
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** @configfile, align 8
  br label %74

74:                                               ; preds = %67, %61
  br label %232

75:                                               ; preds = %53
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** @backendaddr, align 8
  br label %96

96:                                               ; preds = %89, %83
  br label %231

97:                                               ; preds = %75
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @atoi(i8* %117)
  %119 = trunc i64 %118 to i16
  store i16 %119, i16* @backendport, align 2
  br label %120

120:                                              ; preds = %111, %105
  br label %230

121:                                              ; preds = %97
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i8**, i8*** %5, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** @serverlogfile, align 8
  br label %142

142:                                              ; preds = %135, %129
  br label %229

143:                                              ; preds = %121
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %228

154:                                              ; preds = %143
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %227

165:                                              ; preds = %154
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %224, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %223

179:                                              ; preds = %173
  %180 = load i8**, i8*** %5, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strtoul(i8* %184, i8** %13, i32 10)
  store i64 %185, i64* %14, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %191, i64 %198
  %200 = icmp ne i8* %186, %199
  br i1 %200, label %210, label %201

201:                                              ; preds = %179
  %202 = load i64, i64* %14, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load i64, i64* %14, align 8
  %206 = icmp ult i64 %205, 1025
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i64, i64* %14, align 8
  %209 = icmp ugt i64 %208, 65535
  br i1 %209, label %210, label %218

210:                                              ; preds = %207, %204, %179
  %211 = load i32, i32* @stderr, align 4
  %212 = load i8**, i8*** %5, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @fprintf(i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %216)
  store i32 0, i32* %3, align 4
  br label %310

218:                                              ; preds = %207, %201
  %219 = load i64, i64* %14, align 8
  %220 = call i32 @curlx_ultous(i64 %219)
  store i32 %220, i32* @port, align 4
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %218, %173
  br label %226

224:                                              ; preds = %165
  %225 = call i32 @puts(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %310

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %226, %162
  br label %228

228:                                              ; preds = %227, %151
  br label %229

229:                                              ; preds = %228, %142
  br label %230

230:                                              ; preds = %229, %120
  br label %231

231:                                              ; preds = %230, %96
  br label %232

232:                                              ; preds = %231, %74
  br label %233

233:                                              ; preds = %232, %52
  br label %234

234:                                              ; preds = %233
  br label %17

235:                                              ; preds = %17
  %236 = call i32 (...) @install_signal_handlers()
  %237 = load i32, i32* @AF_INET, align 4
  %238 = load i32, i32* @SOCK_STREAM, align 4
  %239 = call i64 @socket(i32 %237, i32 %238, i32 0)
  store i64 %239, i64* %6, align 8
  %240 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %241 = load i64, i64* %6, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %249

243:                                              ; preds = %235
  %244 = load i32, i32* @SOCKERRNO, align 4
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @strerror(i32 %246)
  %248 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %245, i32 %247)
  br label %275

249:                                              ; preds = %235
  %250 = load i64, i64* %6, align 8
  %251 = call i64 @sockdaemon(i64 %250, i32* @port)
  store i64 %251, i64* %6, align 8
  %252 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %253 = load i64, i64* %6, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %275

256:                                              ; preds = %249
  %257 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %257, i64* %7, align 8
  %258 = load i8*, i8** @ipv_inuse, align 8
  %259 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %258)
  %260 = load i32, i32* @port, align 4
  %261 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %260)
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 @write_pidfile(i8* %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %256
  br label %275

267:                                              ; preds = %256
  br label %268

268:                                              ; preds = %271, %267
  %269 = load i64, i64* %6, align 8
  %270 = call i32 @incoming(i64 %269)
  store i32 %270, i32* %10, align 4
  br label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %268, label %274

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %274, %266, %255, %243
  %276 = load i64, i64* %7, align 8
  %277 = load i64, i64* %6, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i64, i64* %7, align 8
  %281 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i64, i64* %7, align 8
  %285 = call i32 @sclose(i64 %284)
  br label %286

286:                                              ; preds = %283, %279, %275
  %287 = load i64, i64* %6, align 8
  %288 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i64, i64* %6, align 8
  %292 = call i32 @sclose(i64 %291)
  br label %293

293:                                              ; preds = %290, %286
  %294 = load i32, i32* %8, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i8*, i8** %9, align 8
  %298 = call i32 @unlink(i8* %297)
  br label %299

299:                                              ; preds = %296, %293
  %300 = call i32 (...) @restore_signal_handlers()
  %301 = load i64, i64* @got_exit_signal, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %299
  %304 = load i32, i32* @exit_signal, align 4
  %305 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* @exit_signal, align 4
  %307 = call i32 @raise(i32 %306)
  br label %308

308:                                              ; preds = %303, %299
  %309 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %308, %224, %210, %29
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @curlx_ultous(i64) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @install_signal_handlers(...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @sockdaemon(i64, i32*) #1

declare dso_local i32 @write_pidfile(i8*) #1

declare dso_local i32 @incoming(i64) #1

declare dso_local i32 @sclose(i64) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @restore_signal_handlers(...) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
