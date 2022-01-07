; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i8*, i8*, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c".sockfilt.pid\00", align 1
@PASSIVE_LISTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sockfilt IPv4%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@TRUE = common dso_local global i8* null, align 8
@verbose = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"--pidfile\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--logfile\00", align 1
@serverlogfile = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--ipv4\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"--bindonly\00", align 1
@bind_only = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"--port\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"sockfilt: invalid --port argument (%s)\0A\00", align 1
@port = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"--connect\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"sockfilt: invalid --connect argument (%s)\0A\00", align 1
@connectport = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"--addr\00", align 1
@.str.15 = private unnamed_addr constant [162 x i8] c"Usage: sockfilt [option]\0A --version\0A --verbose\0A --logfile [file]\0A --pidfile [file]\0A --ipv4\0A --ipv6\0A --bindonly\0A --port [port]\0A --connect [port]\0A --addr [address]\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"Error creating socket: (%d) %s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Error connecting to port %hu: (%d) %s\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"====> Client connect\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Running %s version\00", align 1
@ipv_inuse = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"Connected to port %hu\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Bound without listening on port %hu\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Listening on port %hu\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [46 x i8] c"============> sockfilt exits with signal (%d)\00", align 1
@exit_signal = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"============> sockfilt quits\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@O_BINARY = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@use_ipv6 = common dso_local global i8* null, align 8
@win32_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %14, align 4
  %23 = load i32, i32* @PASSIVE_LISTEN, align 4
  store i32 %23, i32* %15, align 4
  store i8* null, i8** %16, align 8
  br label %24

24:                                               ; preds = %278, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %279

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %415

38:                                               ; preds = %28
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** @TRUE, align 8
  store i8* %47, i8** @verbose, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %277

50:                                               ; preds = %38
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %64, %58
  br label %276

72:                                               ; preds = %50
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** @serverlogfile, align 8
  br label %93

93:                                               ; preds = %86, %80
  br label %275

94:                                               ; preds = %72
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %274

105:                                              ; preds = %94
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %273

116:                                              ; preds = %105
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %116
  %125 = load i8*, i8** @TRUE, align 8
  store i8* %125, i8** @bind_only, align 8
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %272

128:                                              ; preds = %116
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %187, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %136
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strtoul(i8* %147, i8** %17, i32 10)
  store i64 %148, i64* %18, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strlen(i8* %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %154, i64 %161
  %163 = icmp ne i8* %149, %162
  br i1 %163, label %173, label %164

164:                                              ; preds = %142
  %165 = load i64, i64* %18, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  %168 = load i64, i64* %18, align 8
  %169 = icmp ult i64 %168, 1025
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i64, i64* %18, align 8
  %172 = icmp ugt i64 %171, 65535
  br i1 %172, label %173, label %181

173:                                              ; preds = %170, %167, %142
  %174 = load i32, i32* @stderr, align 4
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @fprintf(i32 %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* %179)
  store i32 0, i32* %3, align 4
  br label %415

181:                                              ; preds = %170, %164
  %182 = load i64, i64* %18, align 8
  %183 = call i8* @curlx_ultous(i64 %182)
  store i8* %183, i8** @port, align 8
  %184 = load i32, i32* %14, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %181, %136
  br label %271

187:                                              ; preds = %128
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %244, label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %243

201:                                              ; preds = %195
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @strtoul(i8* %206, i8** %19, i32 10)
  store i64 %207, i64* %20, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %213, i64 %220
  %222 = icmp ne i8* %208, %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %201
  %224 = load i64, i64* %20, align 8
  %225 = icmp ult i64 %224, 1025
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i64, i64* %20, align 8
  %228 = icmp ugt i64 %227, 65535
  br i1 %228, label %229, label %237

229:                                              ; preds = %226, %223, %201
  %230 = load i32, i32* @stderr, align 4
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @fprintf(i32 %230, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %235)
  store i32 0, i32* %3, align 4
  br label %415

237:                                              ; preds = %226
  %238 = load i64, i64* %20, align 8
  %239 = call i8* @curlx_ultous(i64 %238)
  %240 = ptrtoint i8* %239 to i32
  store i32 %240, i32* @connectport, align 4
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %237, %195
  br label %270

244:                                              ; preds = %187
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %267, label %252

252:                                              ; preds = %244
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %252
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  store i8* %263, i8** %16, align 8
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %14, align 4
  br label %266

266:                                              ; preds = %258, %252
  br label %269

267:                                              ; preds = %244
  %268 = call i32 @puts(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %415

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %269, %243
  br label %271

271:                                              ; preds = %270, %186
  br label %272

272:                                              ; preds = %271, %124
  br label %273

273:                                              ; preds = %272, %113
  br label %274

274:                                              ; preds = %273, %102
  br label %275

275:                                              ; preds = %274, %93
  br label %276

276:                                              ; preds = %275, %71
  br label %277

277:                                              ; preds = %276, %46
  br label %278

278:                                              ; preds = %277
  br label %24

279:                                              ; preds = %24
  %280 = call i32 (...) @install_signal_handlers()
  %281 = load i8*, i8** @AF_INET, align 8
  %282 = load i32, i32* @SOCK_STREAM, align 4
  %283 = call i64 @socket(i8* %281, i32 %282, i32 0)
  store i64 %283, i64* %7, align 8
  %284 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %285 = load i64, i64* %7, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %279
  %288 = load i32, i32* @SOCKERRNO, align 4
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @strerror(i32 %290)
  %292 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %289, i32 %291)
  %293 = call i32 @write_stdout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  br label %380

294:                                              ; preds = %279
  %295 = load i32, i32* @connectport, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %337

297:                                              ; preds = %294
  %298 = load i32, i32* @ACTIVE, align 4
  store i32 %298, i32* %15, align 4
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %300 = call i32 @memset(%struct.TYPE_5__* %299, i32 0, i32 48)
  %301 = load i8*, i8** @AF_INET, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 5
  store i8* %301, i8** %303, align 8
  %304 = load i32, i32* @connectport, align 4
  %305 = call i8* @htons(i32 %304)
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  %308 = load i32, i32* @INADDR_ANY, align 4
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  store i32 %308, i32* %311, align 8
  %312 = load i8*, i8** %16, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %297
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  br label %315

315:                                              ; preds = %314, %297
  %316 = load i8*, i8** @AF_INET, align 8
  %317 = load i8*, i8** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 3
  %320 = call i32 @Curl_inet_pton(i8* %316, i8* %317, %struct.TYPE_6__* %319)
  %321 = load i64, i64* %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %323 = call i32 @connect(i64 %321, i32* %322, i32 48)
  store i32 %323, i32* %12, align 4
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %315
  %327 = load i32, i32* @SOCKERRNO, align 4
  store i32 %327, i32* %13, align 4
  %328 = load i32, i32* @connectport, align 4
  %329 = load i32, i32* %13, align 4
  %330 = load i32, i32* %13, align 4
  %331 = call i32 @strerror(i32 %330)
  %332 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %328, i32 %329, i32 %331)
  %333 = call i32 @write_stdout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  br label %380

334:                                              ; preds = %315
  %335 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %336 = load i64, i64* %7, align 8
  store i64 %336, i64* %8, align 8
  br label %347

337:                                              ; preds = %294
  %338 = load i64, i64* %7, align 8
  %339 = call i64 @sockdaemon(i64 %338, i8** @port)
  store i64 %339, i64* %7, align 8
  %340 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %341 = load i64, i64* %7, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %337
  %344 = call i32 @write_stdout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  br label %380

345:                                              ; preds = %337
  %346 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %346, i64* %8, align 8
  br label %347

347:                                              ; preds = %345, %334
  %348 = load i8*, i8** @ipv_inuse, align 8
  %349 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* %348)
  %350 = load i32, i32* @connectport, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load i32, i32* @connectport, align 4
  %354 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %353)
  br label %365

355:                                              ; preds = %347
  %356 = load i8*, i8** @bind_only, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load i8*, i8** @port, align 8
  %360 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* %359)
  br label %364

361:                                              ; preds = %355
  %362 = load i8*, i8** @port, align 8
  %363 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* %362)
  br label %364

364:                                              ; preds = %361, %358
  br label %365

365:                                              ; preds = %364, %352
  %366 = load i8*, i8** %10, align 8
  %367 = call i32 @write_pidfile(i8* %366)
  store i32 %367, i32* %9, align 4
  %368 = load i32, i32* %9, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %365
  %371 = call i32 @write_stdout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  br label %380

372:                                              ; preds = %365
  br label %373

373:                                              ; preds = %376, %372
  %374 = load i64, i64* %7, align 8
  %375 = call i32 @juggle(i64* %8, i64 %374, i32* %15)
  store i32 %375, i32* %11, align 4
  br label %376

376:                                              ; preds = %373
  %377 = load i32, i32* %11, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %373, label %379

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379, %370, %343, %326, %287
  %381 = load i64, i64* %8, align 8
  %382 = load i64, i64* %7, align 8
  %383 = icmp ne i64 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load i64, i64* %8, align 8
  %386 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %387 = icmp ne i64 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %384
  %389 = load i64, i64* %8, align 8
  %390 = call i32 @sclose(i64 %389)
  br label %391

391:                                              ; preds = %388, %384, %380
  %392 = load i64, i64* %7, align 8
  %393 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i64, i64* %7, align 8
  %397 = call i32 @sclose(i64 %396)
  br label %398

398:                                              ; preds = %395, %391
  %399 = load i32, i32* %9, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = load i8*, i8** %10, align 8
  %403 = call i32 @unlink(i8* %402)
  br label %404

404:                                              ; preds = %401, %398
  %405 = call i32 (...) @restore_signal_handlers()
  %406 = load i64, i64* @got_exit_signal, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %404
  %409 = load i32, i32* @exit_signal, align 4
  %410 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 %409)
  %411 = load i32, i32* @exit_signal, align 4
  %412 = call i32 @raise(i32 %411)
  br label %413

413:                                              ; preds = %408, %404
  %414 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %415

415:                                              ; preds = %413, %267, %229, %173, %36
  %416 = load i32, i32* %3, align 4
  ret i32 %416
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curlx_ultous(i64) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @install_signal_handlers(...) #1

declare dso_local i64 @socket(i8*, i32, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @write_stdout(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @Curl_inet_pton(i8*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @connect(i64, i32*, i32) #1

declare dso_local i64 @sockdaemon(i64, i8**) #1

declare dso_local i32 @write_pidfile(i8*) #1

declare dso_local i32 @juggle(i64*, i64, i32*) #1

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
