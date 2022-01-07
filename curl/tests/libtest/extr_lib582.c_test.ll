; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.ReadWriteSockets = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_6__ }

@libtest_arg3 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Usage: lib582 [url] [filename] [username]\0A\00", align 1
@TEST_ERR_USAGE = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"fopen() failed with error: %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error opening file: (%s)\0A\00", align 1
@TEST_ERR_FOPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"fstat() failed with error: %d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ERROR: cannot open file (%s)\0A\00", align 1
@TEST_ERR_FSTAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Set to upload %d bytes\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@CURLOPT_SSH_PUBLIC_KEYFILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"curl_client_key.pub\00", align 1
@CURLOPT_SSH_PRIVATE_KEYFILE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"curl_client_key\00", align 1
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@curlSocketCallback = common dso_local global %struct.timeval* null, align 8
@CURLMOPT_SOCKETDATA = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@curlTimerCallback = common dso_local global %struct.timeval* null, align 8
@CURLMOPT_TIMERDATA = common dso_local global i32 0, align 4
@CURL_CSELECT_IN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@CURL_CSELECT_OUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CURL_SOCKET_TIMEOUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Error uploading file.\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ReadWriteSockets, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %9, align 8
  %18 = bitcast %struct.ReadWriteSockets* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 40, i1 false)
  %19 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 40, i1 false)
  %20 = bitcast i8* %19 to %struct.timeval*
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  store i32 0, i32* %12, align 4
  %22 = call i32 (...) @start_test_timing()
  %23 = load i64, i64* @libtest_arg3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @TEST_ERR_USAGE, align 4
  store i32 %28, i32* %2, align 4
  br label %216

29:                                               ; preds = %1
  %30 = load i8*, i8** @libtest_arg2, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* null, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @libtest_arg2, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @TEST_ERR_FOPEN, align 4
  store i32 %43, i32* %2, align 4
  br label %216

44:                                               ; preds = %29
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @fileno(i32* %45)
  %47 = call i32 @fstat(i32 %46, %struct.TYPE_7__* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %52, i8* %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** @libtest_arg2, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @fclose(i32* %59)
  %61 = load i32, i32* @TEST_ERR_FSTAT, align 4
  store i32 %61, i32* %2, align 4
  br label %216

62:                                               ; preds = %44
  %63 = load i32, i32* @stderr, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %69 = call i32 @res_global_init(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %216

76:                                               ; preds = %62
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @easy_init(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %81 = call i32 (i32*, i32, ...) @easy_setopt(i32* %79, i32 %80, i64 1)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @CURLOPT_URL, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 (i32*, i32, ...) @easy_setopt(i32* %82, i32 %83, i8* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %88 = call i32 (i32*, i32, ...) @easy_setopt(i32* %86, i32 %87, i64 1)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @CURLOPT_READDATA, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 (i32*, i32, ...) @easy_setopt(i32* %89, i32 %90, i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @CURLOPT_USERPWD, align 4
  %95 = load i64, i64* @libtest_arg3, align 8
  %96 = call i32 (i32*, i32, ...) @easy_setopt(i32* %93, i32 %94, i64 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @CURLOPT_SSH_PUBLIC_KEYFILE, align 4
  %99 = call i32 (i32*, i32, ...) @easy_setopt(i32* %97, i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @CURLOPT_SSH_PRIVATE_KEYFILE, align 4
  %102 = call i32 (i32*, i32, ...) @easy_setopt(i32* %100, i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %105 = call i32 (i32*, i32, ...) @easy_setopt(i32* %103, i32 %104, i64 0)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32*, i32, ...) @easy_setopt(i32* %106, i32 %107, i64 %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @multi_init(i32* %111)
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %115 = load %struct.timeval*, %struct.timeval** @curlSocketCallback, align 8
  %116 = call i32 @multi_setopt(i32* %113, i32 %114, %struct.timeval* %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @CURLMOPT_SOCKETDATA, align 4
  %119 = bitcast %struct.ReadWriteSockets* %10 to %struct.timeval*
  %120 = call i32 @multi_setopt(i32* %117, i32 %118, %struct.timeval* %119)
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %123 = load %struct.timeval*, %struct.timeval** @curlTimerCallback, align 8
  %124 = call i32 @multi_setopt(i32* %121, i32 %122, %struct.timeval* %123)
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @CURLMOPT_TIMERDATA, align 4
  %127 = call i32 @multi_setopt(i32* %125, i32 %126, %struct.timeval* %11)
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @multi_add_handle(i32* %128, i32* %129)
  br label %131

131:                                              ; preds = %186, %76
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @checkForCompletion(i32* %132, i32* %12)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br i1 %135, label %136, label %188

136:                                              ; preds = %131
  store i64 0, i64* %15, align 8
  %137 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %137, i8 0, i64 40, i1 false)
  %138 = bitcast i8* %137 to %struct.timeval*
  %139 = getelementptr inbounds %struct.timeval, %struct.timeval* %138, i32 0, i32 0
  store i32 10, i32* %139, align 8
  %140 = call i32 @FD_ZERO(i32* %13)
  %141 = call i32 @FD_ZERO(i32* %14)
  %142 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 4
  %143 = call i32 @updateFdSet(%struct.TYPE_8__* %142, i32* %13, i64* %15)
  %144 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 3
  %145 = call i32 @updateFdSet(%struct.TYPE_8__* %144, i32* %14, i64* %15)
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %157

149:                                              ; preds = %136
  %150 = call i32 @getMicroSecondTimeout(%struct.timeval* %11)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = sdiv i32 %151, 1000000
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %17, align 4
  %155 = srem i32 %154, 1000000
  %156 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  br label %164

157:                                              ; preds = %136
  %158 = load i64, i64* %15, align 8
  %159 = icmp sle i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 2
  store i32 100000, i32* %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %149
  %165 = load i64, i64* %15, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @select_test(i32 %166, i32* %13, i32* %14, i32* null, %struct.timeval* %16)
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 4
  %170 = load i32, i32* @CURL_CSELECT_IN, align 4
  %171 = call i32 @checkFdSet(i32* %168, %struct.TYPE_8__* %169, i32* %13, i32 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 3
  %174 = load i32, i32* @CURL_CSELECT_OUT, align 4
  %175 = call i32 @checkFdSet(i32* %172, %struct.TYPE_8__* %173, i32* %14, i32 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %186

179:                                              ; preds = %164
  %180 = call i32 @getMicroSecondTimeout(%struct.timeval* %11)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* @CURL_SOCKET_TIMEOUT, align 4
  %185 = call i32 @notifyCurl(i32* %183, i32 %184, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %179, %164
  %187 = call i32 (...) @abort_on_test_timeout()
  br label %131

188:                                              ; preds = %131
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %194 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %191, %188
  br label %196

196:                                              ; preds = %195
  %197 = load i32*, i32** %9, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @curl_multi_remove_handle(i32* %197, i32* %198)
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @curl_easy_cleanup(i32* %200)
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @curl_multi_cleanup(i32* %202)
  %204 = call i32 (...) @curl_global_cleanup()
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @fclose(i32* %205)
  %207 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @free(i32 %209)
  %211 = getelementptr inbounds %struct.ReadWriteSockets, %struct.ReadWriteSockets* %10, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @free(i32 %213)
  %215 = load i32, i32* %4, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %196, %72, %50, %34, %25
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @start_test_timing(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @fstat(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @res_global_init(i32) #2

declare dso_local i32 @easy_init(i32*) #2

declare dso_local i32 @easy_setopt(i32*, i32, ...) #2

declare dso_local i32 @multi_init(i32*) #2

declare dso_local i32 @multi_setopt(i32*, i32, %struct.timeval*) #2

declare dso_local i32 @multi_add_handle(i32*, i32*) #2

declare dso_local i32 @checkForCompletion(i32*, i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @updateFdSet(%struct.TYPE_8__*, i32*, i64*) #2

declare dso_local i32 @getMicroSecondTimeout(%struct.timeval*) #2

declare dso_local i32 @select_test(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @checkFdSet(i32*, %struct.TYPE_8__*, i32*, i32, i8*) #2

declare dso_local i32 @notifyCurl(i32*, i32, i32, i8*) #2

declare dso_local i32 @abort_on_test_timeout(...) #2

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

declare dso_local i32 @curl_multi_cleanup(i32*) #2

declare dso_local i32 @curl_global_cleanup(...) #2

declare dso_local i32 @free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
