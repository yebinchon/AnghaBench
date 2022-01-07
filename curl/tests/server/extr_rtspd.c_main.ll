; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_rtspd.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_rtspd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.httprequest, %struct.httprequest }
%struct.httprequest = type { i64, i32, i64, i8*, i8*, i32, i8*, i8*, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@DEFAULT_PORT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [10 x i8] c".rtsp.pid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"rtspd IPv4%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--pidfile\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--logfile\00", align 1
@serverlogfile = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"--ipv4\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--port\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"rtspd: invalid --port argument (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"--srcdir\00", align 1
@path = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [117 x i8] c"Usage: rtspd [option]\0A --version\0A --logfile [file]\0A --pidfile [file]\0A --ipv4\0A --ipv6\0A --port [port]\0A --srcdir [path]\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Error creating socket: (%d) %s\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [52 x i8] c"setsockopt(SO_REUSEADDR) failed with error: (%d) %s\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"Error binding socket on port %hu: (%d) %s\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Running %s version on port %d\00", align 1
@ipv_inuse = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"listen() failed with error: (%d) %s\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [49 x i8] c"MAJOR ERROR: accept() failed with error: (%d) %s\00", align 1
@SERVERLOGS_LOCK = common dso_local global i32 0, align 4
@serverlogslocked = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"====> Client connect\00", align 1
@FALSE = common dso_local global i8* null, align 8
@prevbounce = common dso_local global i8* null, align 8
@prevtestno = common dso_local global i32 0, align 4
@prevpartno = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"BOUNCE part number to %ld\00", align 1
@DOCNUMBER_CONNECT = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [41 x i8] c"special request received, no persistency\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"instructed to close connection after server-reply\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"=> persistent connection request ended, awaits new request\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"====> Client disconnect\00", align 1
@DOCNUMBER_QUIT = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"signalled to die\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"========> %s rtspd (port: %d pid: %ld) exits with signal (%d)\00", align 1
@exit_signal = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"========> rtspd quits\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@in6addr_any = common dso_local global i32 0, align 4
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
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca %struct.httprequest, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load i16, i16* @DEFAULT_PORT, align 2
  store i16 %22, i16* %11, align 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 1, i32* %16, align 4
  %23 = call i32 @memset(%struct.httprequest* %13, i32 0, i32 80)
  br label %24

24:                                               ; preds = %191, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %192

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %437

38:                                               ; preds = %28
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %12, align 8
  br label %59

59:                                               ; preds = %52, %46
  br label %190

60:                                               ; preds = %38
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** @serverlogfile, align 8
  br label %81

81:                                               ; preds = %74, %68
  br label %189

82:                                               ; preds = %60
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %188

93:                                               ; preds = %82
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %187

104:                                              ; preds = %93
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %160, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %159

118:                                              ; preds = %112
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strtoul(i8* %123, i8** %18, i32 10)
  store i64 %124, i64* %19, align 8
  %125 = load i8*, i8** %18, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %130, i64 %137
  %139 = icmp ne i8* %125, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %118
  %141 = load i64, i64* %19, align 8
  %142 = icmp ult i64 %141, 1025
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* %19, align 8
  %145 = icmp ugt i64 %144, 65535
  br i1 %145, label %146, label %154

146:                                              ; preds = %143, %140, %118
  %147 = load i32, i32* @stderr, align 4
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  store i32 0, i32* %3, align 4
  br label %437

154:                                              ; preds = %143
  %155 = load i64, i64* %19, align 8
  %156 = call zeroext i16 @curlx_ultous(i64 %155)
  store i16 %156, i16* %11, align 2
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %154, %112
  br label %186

160:                                              ; preds = %104
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** @path, align 8
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %174, %168
  br label %185

183:                                              ; preds = %160
  %184 = call i32 @puts(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %437

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185, %159
  br label %187

187:                                              ; preds = %186, %101
  br label %188

188:                                              ; preds = %187, %90
  br label %189

189:                                              ; preds = %188, %81
  br label %190

190:                                              ; preds = %189, %59
  br label %191

191:                                              ; preds = %190
  br label %24

192:                                              ; preds = %24
  %193 = call i32 (...) @install_signal_handlers()
  %194 = call i64 (...) @getpid()
  store i64 %194, i64* %17, align 8
  %195 = load i8*, i8** @AF_INET, align 8
  %196 = load i32, i32* @SOCK_STREAM, align 4
  %197 = call i64 @socket(i8* %195, i32 %196, i32 0)
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %192
  %202 = load i32, i32* @SOCKERRNO, align 4
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @strerror(i32 %204)
  %206 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %203, i32 %205)
  br label %387

207:                                              ; preds = %192
  store i32 1, i32* %10, align 4
  %208 = load i64, i64* %7, align 8
  %209 = load i32, i32* @SOL_SOCKET, align 4
  %210 = load i32, i32* @SO_REUSEADDR, align 4
  %211 = bitcast i32* %10 to i8*
  %212 = call i32 @setsockopt(i64 %208, i32 %209, i32 %210, i8* %211, i32 4)
  %213 = icmp ne i32 0, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* @SOCKERRNO, align 4
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @strerror(i32 %217)
  %219 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %216, i32 %218)
  br label %387

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %222 = call i32 @memset(%struct.httprequest* %221, i32 0, i32 80)
  %223 = load i8*, i8** @AF_INET, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %225 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %224, i32 0, i32 9
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @INADDR_ANY, align 4
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %228 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %227, i32 0, i32 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  store i32 %226, i32* %229, align 8
  %230 = load i16, i16* %11, align 2
  %231 = call i8* @htons(i16 zeroext %230)
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %233 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load i64, i64* %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %236 = call i32 @bind(i64 %234, i32* %235, i32 80)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 0, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %220
  %240 = load i32, i32* @SOCKERRNO, align 4
  store i32 %240, i32* %15, align 4
  %241 = load i16, i16* %11, align 2
  %242 = zext i16 %241 to i32
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @strerror(i32 %244)
  %246 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %242, i32 %243, i32 %245)
  br label %387

247:                                              ; preds = %220
  %248 = load i8*, i8** @ipv_inuse, align 8
  %249 = load i16, i16* %11, align 2
  %250 = zext i16 %249 to i32
  %251 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %248, i32 %250)
  %252 = load i64, i64* %7, align 8
  %253 = call i32 @listen(i64 %252, i32 5)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp ne i32 0, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %247
  %257 = load i32, i32* @SOCKERRNO, align 4
  store i32 %257, i32* %15, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @strerror(i32 %259)
  %261 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %258, i32 %260)
  br label %387

262:                                              ; preds = %247
  %263 = load i8*, i8** %12, align 8
  %264 = call i32 @write_pidfile(i8* %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  br label %387

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %385, %268
  %270 = load i64, i64* %7, align 8
  %271 = call i64 @accept(i64 %270, i32* null, i32* null)
  store i64 %271, i64* %8, align 8
  %272 = load i64, i64* @got_exit_signal, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %269
  br label %386

275:                                              ; preds = %269
  %276 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %277 = load i64, i64* %8, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load i32, i32* @SOCKERRNO, align 4
  store i32 %280, i32* %15, align 4
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @strerror(i32 %282)
  %284 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i32 %281, i32 %283)
  br label %386

285:                                              ; preds = %275
  %286 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %287 = call i32 @set_advisor_read_lock(i32 %286)
  store i32 1, i32* @serverlogslocked, align 4
  %288 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %289 = load i8*, i8** @FALSE, align 8
  %290 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 3
  store i8* %289, i8** %290, align 8
  br label %291

291:                                              ; preds = %363, %285
  %292 = load i64, i64* @got_exit_signal, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %365

295:                                              ; preds = %291
  %296 = load i64, i64* %8, align 8
  %297 = call i64 @get_request(i64 %296, %struct.httprequest* %13)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %365

300:                                              ; preds = %295
  %301 = load i8*, i8** @prevbounce, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %324

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i32, i32* @prevtestno, align 4
  %307 = sext i32 %306 to i64
  %308 = icmp eq i64 %305, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @prevpartno, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %321

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 8
  %318 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %319)
  br label %323

321:                                              ; preds = %309, %303
  %322 = load i8*, i8** @FALSE, align 8
  store i8* %322, i8** @prevbounce, align 8
  store i32 -1, i32* @prevtestno, align 4
  store i32 -1, i32* @prevpartno, align 4
  br label %323

323:                                              ; preds = %321, %314
  br label %324

324:                                              ; preds = %323, %300
  %325 = load i64, i64* %8, align 8
  %326 = call i32 @send_doc(i64 %325, %struct.httprequest* %13)
  %327 = load i64, i64* @got_exit_signal, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %365

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp slt i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @DOCNUMBER_CONNECT, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  br label %365

341:                                              ; preds = %334, %330
  %342 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  br label %365

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0))
  br label %353

353:                                              ; preds = %351, %347
  br label %354

354:                                              ; preds = %353
  %355 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @DOCNUMBER_CONNECT, align 8
  %362 = icmp eq i64 %360, %361
  br label %363

363:                                              ; preds = %358, %354
  %364 = phi i1 [ true, %354 ], [ %362, %358 ]
  br i1 %364, label %291, label %365

365:                                              ; preds = %363, %345, %339, %329, %299, %294
  %366 = load i64, i64* @got_exit_signal, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  br label %386

369:                                              ; preds = %365
  %370 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %371 = load i64, i64* %8, align 8
  %372 = call i32 @sclose(i64 %371)
  %373 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %373, i64* %8, align 8
  %374 = load i32, i32* @serverlogslocked, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  store i32 0, i32* @serverlogslocked, align 4
  %377 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %378 = call i32 @clear_advisor_read_lock(i32 %377)
  br label %379

379:                                              ; preds = %376, %369
  %380 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %13, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @DOCNUMBER_QUIT, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %386

385:                                              ; preds = %379
  br label %269

386:                                              ; preds = %384, %368, %279, %274
  br label %387

387:                                              ; preds = %386, %267, %256, %239, %214, %201
  %388 = load i64, i64* %8, align 8
  %389 = load i64, i64* %7, align 8
  %390 = icmp ne i64 %388, %389
  br i1 %390, label %391, label %398

391:                                              ; preds = %387
  %392 = load i64, i64* %8, align 8
  %393 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i64, i64* %8, align 8
  %397 = call i32 @sclose(i64 %396)
  br label %398

398:                                              ; preds = %395, %391, %387
  %399 = load i64, i64* %7, align 8
  %400 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %401 = icmp ne i64 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = load i64, i64* %7, align 8
  %404 = call i32 @sclose(i64 %403)
  br label %405

405:                                              ; preds = %402, %398
  %406 = load i64, i64* @got_exit_signal, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %405
  %409 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %405
  %411 = load i32, i32* %9, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load i8*, i8** %12, align 8
  %415 = call i32 @unlink(i8* %414)
  br label %416

416:                                              ; preds = %413, %410
  %417 = load i32, i32* @serverlogslocked, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  store i32 0, i32* @serverlogslocked, align 4
  %420 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %421 = call i32 @clear_advisor_read_lock(i32 %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = call i32 (...) @restore_signal_handlers()
  %424 = load i64, i64* @got_exit_signal, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %422
  %427 = load i8*, i8** @ipv_inuse, align 8
  %428 = load i16, i16* %11, align 2
  %429 = zext i16 %428 to i32
  %430 = load i64, i64* %17, align 8
  %431 = load i32, i32* @exit_signal, align 4
  %432 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0), i8* %427, i32 %429, i64 %430, i32 %431)
  %433 = load i32, i32* @exit_signal, align 4
  %434 = call i32 @raise(i32 %433)
  br label %435

435:                                              ; preds = %426, %422
  %436 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %437

437:                                              ; preds = %435, %183, %146, %36
  %438 = load i32, i32* %3, align 4
  ret i32 %438
}

declare dso_local i32 @memset(%struct.httprequest*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local zeroext i16 @curlx_ultous(i64) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @install_signal_handlers(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @socket(i8*, i32, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @bind(i64, i32*, i32) #1

declare dso_local i32 @listen(i64, i32) #1

declare dso_local i32 @write_pidfile(i8*) #1

declare dso_local i64 @accept(i64, i32*, i32*) #1

declare dso_local i32 @set_advisor_read_lock(i32) #1

declare dso_local i64 @get_request(i64, %struct.httprequest*) #1

declare dso_local i32 @send_doc(i64, %struct.httprequest*) #1

declare dso_local i32 @sclose(i64) #1

declare dso_local i32 @clear_advisor_read_lock(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @restore_signal_handlers(...) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
