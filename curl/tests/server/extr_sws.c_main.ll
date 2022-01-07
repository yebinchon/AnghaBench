; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.httprequest, %struct.httprequest, %struct.httprequest }
%struct.httprequest = type { i32, i32, i32, i64, i32, i32, i32, i8*, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CURL_SOCKET_BAD = common dso_local global i32 0, align 4
@DEFAULT_PORT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [10 x i8] c".http.pid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sws IPv4\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--pidfile\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--logfile\00", align 1
@serverlogfile = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"--gopher\00", align 1
@TRUE = common dso_local global i8* null, align 8
@use_gopher = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@end_of_headers = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"--ipv4\00", align 1
@socket_domain = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"--unix-socket\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"--port\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"sws: invalid --port argument (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"--srcdir\00", align 1
@path = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"--connect\00", align 1
@is_proxy = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"Run as proxy, CONNECT to host %s\00", align 1
@.str.17 = private unnamed_addr constant [169 x i8] c"Usage: sws [option]\0A --version\0A --logfile [file]\0A --pidfile [file]\0A --ipv4\0A --ipv6\0A --unix-socket [file]\0A --port [port]\0A --srcdir [path]\0A --connect [ip4-addr]\0A --gopher\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"port %hu\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@all_sockets = common dso_local global i32* null, align 8
@num_sockets = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"Error creating socket: (%d) %s\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [52 x i8] c"setsockopt(SO_REUSEADDR) failed with error: (%d) %s\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"curlx_nonblock failed with error: (%d) %s\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"Error binding socket on %s: (%d) %s\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Running %s %s version on %s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"GOPHER\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"listen() failed with error: (%d) %s\00", align 1
@__const.main.timeout = private unnamed_addr constant %struct.timeval { i64 0, i32 250000 }, align 8
@got_exit_signal = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [36 x i8] c"select() failed with error: (%d) %s\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"accept_connection %d returned %d\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"====> Client disconnect %d\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"[DISCONNECT]\0A\00", align 1
@serverlogslocked = common dso_local global i64 0, align 8
@SERVERLOGS_LOCK = common dso_local global i32 0, align 4
@DOCNUMBER_QUIT = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"signalled to die\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"========> %s sws (%s pid: %ld) exits with signal (%d)\00", align 1
@exit_signal = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"========> sws quits\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@win32_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca %struct.httprequest, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [11 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.timeval, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %33 = load i32, i32* @CURL_SOCKET_BAD, align 4
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %34 = load i16, i16* @DEFAULT_PORT, align 2
  store i16 %34, i16* %10, align 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %15, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i64 0, i64 0
  store i8* %35, i8** %20, align 8
  %36 = call i32 @memset(%struct.httprequest* %12, i32 0, i32 72)
  br label %37

37:                                               ; preds = %264, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %265

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %672

51:                                               ; preds = %41
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %65, %59
  br label %263

73:                                               ; preds = %51
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %88, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** @serverlogfile, align 8
  br label %94

94:                                               ; preds = %87, %81
  br label %262

95:                                               ; preds = %73
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  %106 = load i8*, i8** @TRUE, align 8
  store i8* %106, i8** @use_gopher, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** @end_of_headers, align 8
  br label %261

107:                                              ; preds = %95
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  store i32 130, i32* @socket_domain, align 4
  %116 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i64 0, i64 0
  store i8* %116, i8** %20, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %260

119:                                              ; preds = %107
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %259

130:                                              ; preds = %119
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %144, %138
  br label %258

148:                                              ; preds = %130
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %204, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %203

162:                                              ; preds = %156
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strtoul(i8* %167, i8** %22, i32 10)
  store i64 %168, i64* %23, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %174, i64 %181
  %183 = icmp ne i8* %169, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %162
  %185 = load i64, i64* %23, align 8
  %186 = icmp ult i64 %185, 1025
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %23, align 8
  %189 = icmp ugt i64 %188, 65535
  br i1 %189, label %190, label %198

190:                                              ; preds = %187, %184, %162
  %191 = load i32, i32* @stderr, align 4
  %192 = load i8**, i8*** %5, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8* %196)
  store i32 0, i32* %3, align 4
  br label %672

198:                                              ; preds = %187
  %199 = load i64, i64* %23, align 8
  %200 = call zeroext i16 @curlx_ultous(i64 %199)
  store i16 %200, i16* %10, align 2
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %203

203:                                              ; preds = %198, %156
  br label %257

204:                                              ; preds = %148
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %204
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load i8**, i8*** %5, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** @path, align 8
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %218, %212
  br label %256

227:                                              ; preds = %204
  %228 = load i8**, i8*** %5, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %253, label %235

235:                                              ; preds = %227
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %15, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %235
  %242 = load i8**, i8*** %5, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %17, align 8
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  %249 = load i8*, i8** @TRUE, align 8
  store i8* %249, i8** @is_proxy, align 8
  %250 = load i8*, i8** %17, align 8
  %251 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %241, %235
  br label %255

253:                                              ; preds = %227
  %254 = call i32 @puts(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %672

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %255, %226
  br label %257

257:                                              ; preds = %256, %203
  br label %258

258:                                              ; preds = %257, %147
  br label %259

259:                                              ; preds = %258, %127
  br label %260

260:                                              ; preds = %259, %115
  br label %261

261:                                              ; preds = %260, %103
  br label %262

262:                                              ; preds = %261, %94
  br label %263

263:                                              ; preds = %262, %72
  br label %264

264:                                              ; preds = %263
  br label %37

265:                                              ; preds = %37
  %266 = getelementptr inbounds [11 x i8], [11 x i8]* %19, i64 0, i64 0
  %267 = load i16, i16* %10, align 2
  %268 = call i32 @msnprintf(i8* %266, i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i16 zeroext %267)
  %269 = call i32 (...) @install_signal_handlers()
  %270 = call i64 (...) @getpid()
  store i64 %270, i64* %16, align 8
  %271 = load i32, i32* @socket_domain, align 4
  %272 = load i32, i32* @SOCK_STREAM, align 4
  %273 = call i32 @socket(i32 %271, i32 %272, i32 0)
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32*, i32** @all_sockets, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %274, i32* %276, align 4
  store i32 1, i32* @num_sockets, align 4
  %277 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %278 = load i32, i32* %7, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %265
  %281 = load i32, i32* @SOCKERRNO, align 4
  store i32 %281, i32* %14, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @strerror(i32 %283)
  %285 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %282, i32 %284)
  br label %604

286:                                              ; preds = %265
  store i32 1, i32* %9, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @SOL_SOCKET, align 4
  %289 = load i32, i32* @SO_REUSEADDR, align 4
  %290 = bitcast i32* %9 to i8*
  %291 = call i64 @setsockopt(i32 %287, i32 %288, i32 %289, i8* %290, i32 4)
  %292 = icmp ne i64 0, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load i32, i32* @SOCKERRNO, align 4
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %14, align 4
  %297 = call i32 @strerror(i32 %296)
  %298 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i32 %295, i32 %297)
  br label %604

299:                                              ; preds = %286
  %300 = load i32, i32* %7, align 4
  %301 = load i8*, i8** @TRUE, align 8
  %302 = call i64 @curlx_nonblock(i32 %300, i8* %301)
  %303 = icmp ne i64 0, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load i32, i32* @SOCKERRNO, align 4
  store i32 %305, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 @strerror(i32 %307)
  %309 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 %306, i32 %308)
  br label %604

310:                                              ; preds = %299
  %311 = load i32, i32* @socket_domain, align 4
  switch i32 %311, label %328 [
    i32 130, label %312
  ]

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %314 = call i32 @memset(%struct.httprequest* %313, i32 0, i32 72)
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %316 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %315, i32 0, i32 0
  store i32 130, i32* %316, align 8
  %317 = load i32, i32* @INADDR_ANY, align 4
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %319 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %318, i32 0, i32 10
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  store i32 %317, i32* %320, align 8
  %321 = load i16, i16* %10, align 2
  %322 = call i8* @htons(i16 zeroext %321)
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %324 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %323, i32 0, i32 9
  store i8* %322, i8** %324, align 8
  %325 = load i32, i32* %7, align 4
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %327 = call i32 @bind(i32 %325, i32* %326, i32 72)
  store i32 %327, i32* %13, align 4
  br label %328

328:                                              ; preds = %310, %312
  %329 = load i32, i32* %13, align 4
  %330 = icmp ne i32 0, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = load i32, i32* @SOCKERRNO, align 4
  store i32 %332, i32* %14, align 4
  %333 = load i8*, i8** %20, align 8
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* %14, align 4
  %336 = call i32 @strerror(i32 %335)
  %337 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* %333, i32 %334, i32 %336)
  br label %604

338:                                              ; preds = %328
  %339 = load i8*, i8** @use_gopher, align 8
  %340 = icmp ne i8* %339, null
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  %343 = load i8*, i8** %18, align 8
  %344 = load i8*, i8** %20, align 8
  %345 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* %342, i8* %343, i8* %344)
  %346 = load i32, i32* %7, align 4
  %347 = call i32 @listen(i32 %346, i32 5)
  store i32 %347, i32* %13, align 4
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 0, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %338
  %351 = load i32, i32* @SOCKERRNO, align 4
  store i32 %351, i32* %14, align 4
  %352 = load i32, i32* %14, align 4
  %353 = load i32, i32* %14, align 4
  %354 = call i32 @strerror(i32 %353)
  %355 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32 %352, i32 %354)
  br label %604

356:                                              ; preds = %338
  %357 = load i8*, i8** %11, align 8
  %358 = call i32 @write_pidfile(i8* %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %362, label %361

361:                                              ; preds = %356
  br label %604

362:                                              ; preds = %356
  %363 = call i32 @init_httprequest(%struct.httprequest* %12)
  br label %364

364:                                              ; preds = %603, %480, %362
  %365 = bitcast %struct.timeval* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %365, i8* align 8 bitcast (%struct.timeval* @__const.main.timeout to i8*), i64 16, i1 false)
  store i32 -1, i32* %27, align 4
  %366 = load i32, i32* @num_sockets, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %21, align 8
  br label %369

369:                                              ; preds = %406, %364
  %370 = load i64, i64* %21, align 8
  %371 = icmp uge i64 %370, 1
  br i1 %371, label %372, label %409

372:                                              ; preds = %369
  %373 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %374 = load i32*, i32** @all_sockets, align 8
  %375 = load i64, i64* %21, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %373, %377
  br i1 %378, label %379, label %405

379:                                              ; preds = %372
  %380 = load i32*, i32** @all_sockets, align 8
  %381 = load i64, i64* %21, align 8
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  %383 = bitcast i32* %382 to i8*
  store i8* %383, i8** %28, align 8
  %384 = load i32*, i32** @all_sockets, align 8
  %385 = load i64, i64* %21, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = bitcast i32* %387 to i8*
  store i8* %388, i8** %29, align 8
  %389 = load i32*, i32** @all_sockets, align 8
  %390 = load i32, i32* @num_sockets, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = bitcast i32* %392 to i8*
  store i8* %393, i8** %30, align 8
  %394 = load i8*, i8** %28, align 8
  %395 = load i8*, i8** %29, align 8
  %396 = load i8*, i8** %30, align 8
  %397 = load i8*, i8** %29, align 8
  %398 = ptrtoint i8* %396 to i64
  %399 = ptrtoint i8* %397 to i64
  %400 = sub i64 %398, %399
  %401 = trunc i64 %400 to i32
  %402 = call i32 @memmove(i8* %394, i8* %395, i32 %401)
  %403 = load i32, i32* @num_sockets, align 4
  %404 = sub nsw i32 %403, 1
  store i32 %404, i32* @num_sockets, align 4
  br label %405

405:                                              ; preds = %379, %372
  br label %406

406:                                              ; preds = %405
  %407 = load i64, i64* %21, align 8
  %408 = add i64 %407, -1
  store i64 %408, i64* %21, align 8
  br label %369

409:                                              ; preds = %369
  %410 = load i64, i64* @got_exit_signal, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  br label %604

413:                                              ; preds = %409
  %414 = call i32 @FD_ZERO(i32* %24)
  %415 = call i32 @FD_ZERO(i32* %25)
  store i64 0, i64* %21, align 8
  br label %416

416:                                              ; preds = %439, %413
  %417 = load i64, i64* %21, align 8
  %418 = load i32, i32* @num_sockets, align 4
  %419 = sext i32 %418 to i64
  %420 = icmp ult i64 %417, %419
  br i1 %420, label %421, label %442

421:                                              ; preds = %416
  %422 = load i32*, i32** @all_sockets, align 8
  %423 = load i64, i64* %21, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @FD_SET(i32 %425, i32* %24)
  %427 = load i32*, i32** @all_sockets, align 8
  %428 = load i64, i64* %21, align 8
  %429 = getelementptr inbounds i32, i32* %427, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %27, align 4
  %432 = icmp sgt i32 %430, %431
  br i1 %432, label %433, label %438

433:                                              ; preds = %421
  %434 = load i32*, i32** @all_sockets, align 8
  %435 = load i64, i64* %21, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  %437 = load i32, i32* %436, align 4
  store i32 %437, i32* %27, align 4
  br label %438

438:                                              ; preds = %433, %421
  br label %439

439:                                              ; preds = %438
  %440 = load i64, i64* %21, align 8
  %441 = add i64 %440, 1
  store i64 %441, i64* %21, align 8
  br label %416

442:                                              ; preds = %416
  %443 = load i64, i64* @got_exit_signal, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  br label %604

446:                                              ; preds = %442
  br label %447

447:                                              ; preds = %462, %446
  %448 = load i32, i32* %27, align 4
  %449 = add nsw i32 %448, 1
  %450 = call i32 @select(i32 %449, i32* %24, i32* %25, i32* null, %struct.timeval* %26)
  store i32 %450, i32* %13, align 4
  br label %451

451:                                              ; preds = %447
  %452 = load i32, i32* %13, align 4
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %451
  %455 = load i64, i64* @errno, align 8
  %456 = load i64, i64* @EINTR, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = load i64, i64* @got_exit_signal, align 8
  %460 = icmp ne i64 %459, 0
  %461 = xor i1 %460, true
  br label %462

462:                                              ; preds = %458, %454, %451
  %463 = phi i1 [ false, %454 ], [ false, %451 ], [ %461, %458 ]
  br i1 %463, label %447, label %464

464:                                              ; preds = %462
  %465 = load i64, i64* @got_exit_signal, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  br label %604

468:                                              ; preds = %464
  %469 = load i32, i32* %13, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %468
  %472 = load i32, i32* @SOCKERRNO, align 4
  store i32 %472, i32* %14, align 4
  %473 = load i32, i32* %14, align 4
  %474 = load i32, i32* %14, align 4
  %475 = call i32 @strerror(i32 %474)
  %476 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 %473, i32 %475)
  br label %604

477:                                              ; preds = %468
  %478 = load i32, i32* %13, align 4
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  br label %364

481:                                              ; preds = %477
  %482 = load i32*, i32** @all_sockets, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = call i64 @FD_ISSET(i32 %484, i32* %24)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %503

487:                                              ; preds = %481
  br label %488

488:                                              ; preds = %499, %487
  %489 = load i32, i32* %7, align 4
  %490 = call i32 @accept_connection(i32 %489)
  store i32 %490, i32* %31, align 4
  %491 = load i32, i32* %7, align 4
  %492 = load i32, i32* %31, align 4
  %493 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i32 %491, i32 %492)
  %494 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %495 = load i32, i32* %31, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %488
  br label %604

498:                                              ; preds = %488
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %31, align 4
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %488, label %502

502:                                              ; preds = %499
  br label %503

503:                                              ; preds = %502, %481
  store i64 1, i64* %21, align 8
  br label %504

504:                                              ; preds = %596, %503
  %505 = load i64, i64* %21, align 8
  %506 = load i32, i32* @num_sockets, align 4
  %507 = sext i32 %506 to i64
  %508 = icmp ult i64 %505, %507
  br i1 %508, label %509, label %599

509:                                              ; preds = %504
  %510 = load i32*, i32** @all_sockets, align 8
  %511 = load i64, i64* %21, align 8
  %512 = getelementptr inbounds i32, i32* %510, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = call i64 @FD_ISSET(i32 %513, i32* %24)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %595

516:                                              ; preds = %509
  %517 = load i64, i64* @got_exit_signal, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %516
  br label %604

520:                                              ; preds = %516
  br label %521

521:                                              ; preds = %591, %520
  %522 = load i32*, i32** @all_sockets, align 8
  %523 = load i64, i64* %21, align 8
  %524 = getelementptr inbounds i32, i32* %522, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %7, align 4
  %527 = load i8*, i8** %17, align 8
  %528 = call i32 @service_connection(i32 %525, %struct.httprequest* %12, i32 %526, i8* %527)
  store i32 %528, i32* %13, align 4
  %529 = load i64, i64* @got_exit_signal, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %521
  br label %604

532:                                              ; preds = %521
  %533 = load i32, i32* %13, align 4
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %535, label %585

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %12, i32 0, i32 5
  %537 = load i32, i32* %536, align 4
  %538 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 %537)
  %539 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %12, i32 0, i32 5
  %540 = load i32, i32* %539, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %535
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8** %32, align 8
  %543 = load i8*, i8** %32, align 8
  %544 = load i8*, i8** %32, align 8
  %545 = call i32 @strlen(i8* %544)
  %546 = call i32 @storerequest(i8* %543, i32 %545)
  br label %547

547:                                              ; preds = %542, %535
  %548 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %12, i32 0, i32 4
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %553, label %551

551:                                              ; preds = %547
  %552 = call i32 @wait_ms(i32 50)
  br label %553

553:                                              ; preds = %551, %547
  %554 = load i32*, i32** @all_sockets, align 8
  %555 = load i64, i64* %21, align 8
  %556 = getelementptr inbounds i32, i32* %554, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %559 = icmp ne i32 %557, %558
  br i1 %559, label %560, label %570

560:                                              ; preds = %553
  %561 = load i32*, i32** @all_sockets, align 8
  %562 = load i64, i64* %21, align 8
  %563 = getelementptr inbounds i32, i32* %561, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @sclose(i32 %564)
  %566 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %567 = load i32*, i32** @all_sockets, align 8
  %568 = load i64, i64* %21, align 8
  %569 = getelementptr inbounds i32, i32* %567, i64 %568
  store i32 %566, i32* %569, align 4
  br label %570

570:                                              ; preds = %560, %553
  %571 = load i64, i64* @serverlogslocked, align 8
  %572 = sub nsw i64 %571, 1
  store i64 %572, i64* @serverlogslocked, align 8
  %573 = load i64, i64* @serverlogslocked, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %570
  %576 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %577 = call i32 @clear_advisor_read_lock(i32 %576)
  br label %578

578:                                              ; preds = %575, %570
  %579 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %12, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = load i64, i64* @DOCNUMBER_QUIT, align 8
  %582 = icmp eq i64 %580, %581
  br i1 %582, label %583, label %584

583:                                              ; preds = %578
  br label %604

584:                                              ; preds = %578
  br label %585

585:                                              ; preds = %584, %532
  %586 = load i32, i32* %13, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %590

588:                                              ; preds = %585
  %589 = call i32 @init_httprequest(%struct.httprequest* %12)
  br label %590

590:                                              ; preds = %588, %585
  br label %591

591:                                              ; preds = %590
  %592 = load i32, i32* %13, align 4
  %593 = icmp sgt i32 %592, 0
  br i1 %593, label %521, label %594

594:                                              ; preds = %591
  br label %595

595:                                              ; preds = %594, %509
  br label %596

596:                                              ; preds = %595
  %597 = load i64, i64* %21, align 8
  %598 = add i64 %597, 1
  store i64 %598, i64* %21, align 8
  br label %504

599:                                              ; preds = %504
  %600 = load i64, i64* @got_exit_signal, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  br label %604

603:                                              ; preds = %599
  br label %364

604:                                              ; preds = %602, %583, %531, %519, %497, %471, %467, %445, %412, %361, %350, %331, %304, %293, %280
  store i64 1, i64* %21, align 8
  br label %605

605:                                              ; preds = %631, %604
  %606 = load i64, i64* %21, align 8
  %607 = load i32, i32* @num_sockets, align 4
  %608 = sext i32 %607 to i64
  %609 = icmp ult i64 %606, %608
  br i1 %609, label %610, label %634

610:                                              ; preds = %605
  %611 = load i32*, i32** @all_sockets, align 8
  %612 = load i64, i64* %21, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %7, align 4
  %616 = icmp ne i32 %614, %615
  br i1 %616, label %617, label %630

617:                                              ; preds = %610
  %618 = load i32*, i32** @all_sockets, align 8
  %619 = load i64, i64* %21, align 8
  %620 = getelementptr inbounds i32, i32* %618, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %623 = icmp ne i32 %621, %622
  br i1 %623, label %624, label %630

624:                                              ; preds = %617
  %625 = load i32*, i32** @all_sockets, align 8
  %626 = load i64, i64* %21, align 8
  %627 = getelementptr inbounds i32, i32* %625, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @sclose(i32 %628)
  br label %630

630:                                              ; preds = %624, %617, %610
  br label %631

631:                                              ; preds = %630
  %632 = load i64, i64* %21, align 8
  %633 = add i64 %632, 1
  store i64 %633, i64* %21, align 8
  br label %605

634:                                              ; preds = %605
  %635 = load i32, i32* %7, align 4
  %636 = load i32, i32* @CURL_SOCKET_BAD, align 4
  %637 = icmp ne i32 %635, %636
  br i1 %637, label %638, label %641

638:                                              ; preds = %634
  %639 = load i32, i32* %7, align 4
  %640 = call i32 @sclose(i32 %639)
  br label %641

641:                                              ; preds = %638, %634
  %642 = load i64, i64* @got_exit_signal, align 8
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %646

644:                                              ; preds = %641
  %645 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  br label %646

646:                                              ; preds = %644, %641
  %647 = load i32, i32* %8, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %646
  %650 = load i8*, i8** %11, align 8
  %651 = call i32 @unlink(i8* %650)
  br label %652

652:                                              ; preds = %649, %646
  %653 = load i64, i64* @serverlogslocked, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %658

655:                                              ; preds = %652
  store i64 0, i64* @serverlogslocked, align 8
  %656 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %657 = call i32 @clear_advisor_read_lock(i32 %656)
  br label %658

658:                                              ; preds = %655, %652
  %659 = call i32 (...) @restore_signal_handlers()
  %660 = load i64, i64* @got_exit_signal, align 8
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %670

662:                                              ; preds = %658
  %663 = load i8*, i8** %18, align 8
  %664 = load i8*, i8** %20, align 8
  %665 = load i64, i64* %16, align 8
  %666 = load i32, i32* @exit_signal, align 4
  %667 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i64 0, i64 0), i8* %663, i8* %664, i64 %665, i32 %666)
  %668 = load i32, i32* @exit_signal, align 4
  %669 = call i32 @raise(i32 %668)
  br label %670

670:                                              ; preds = %662, %658
  %671 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %672

672:                                              ; preds = %670, %253, %190, %49
  %673 = load i32, i32* %3, align 4
  ret i32 %673
}

declare dso_local i32 @memset(%struct.httprequest*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local zeroext i16 @curlx_ultous(i64) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i16 zeroext) #1

declare dso_local i32 @install_signal_handlers(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @curlx_nonblock(i32, i8*) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @bind(i32, i32*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @write_pidfile(i8*) #1

declare dso_local i32 @init_httprequest(%struct.httprequest*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @accept_connection(i32) #1

declare dso_local i32 @service_connection(i32, %struct.httprequest*, i32, i8*) #1

declare dso_local i32 @storerequest(i8*, i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @sclose(i32) #1

declare dso_local i32 @clear_advisor_read_lock(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @restore_signal_handlers(...) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
