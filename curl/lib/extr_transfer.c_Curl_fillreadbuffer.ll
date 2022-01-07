; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_fillreadbuffer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_fillreadbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__*, %struct.Curl_easy* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.Curl_easy = type { %struct.SingleRequest, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.SingleRequest = type { i64, i8*, i64, i32, i32, %struct.HTTP* }
%struct.HTTP = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.curl_slist**, i32*)*, i64, i32*, i64 }
%struct.curl_slist = type { i32 }
%struct.TYPE_6__ = type { i64, i64 (i64, i32, i64, i8*)*, i32, i8*, i64 }

@TRAILERS_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Moving trailers state machine from initialized to sending.\0A\00", align 1
@TRAILERS_SENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to allocate trailing headers buffer !\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURL_TRAILERFUNC_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"operation aborted by trailing headers callback\00", align 1
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Successfully compiled trailers.\0D\0A\00", align 1
@TRAILERS_NONE = common dso_local global i64 0, align 8
@CURL_READFUNC_ABORT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"operation aborted by callback\00", align 1
@CURL_READFUNC_PAUSE = common dso_local global i64 0, align 8
@PROTOPT_NONETWORK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Read callback asked for PAUSE when not supported!\00", align 1
@CURLE_READ_ERROR = common dso_local global i64 0, align 8
@KEEP_SEND_PAUSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"read function returned funny value\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%zx%s\00", align 1
@TRUE = common dso_local global i8* null, align 8
@TRAILERS_DONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"Signaling end of chunked upload after trailers.\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Signaling end of chunked upload via terminating chunk.\0A\00", align 1
@CURLPROTO_RTSP = common dso_local global i32 0, align 4
@HTTPSEND_REQUEST = common dso_local global i64 0, align 8
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_fillreadbuffer(%struct.connectdata* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64 (i64, i32, i64, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.curl_slist*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.SingleRequest*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [11 x i8], align 1
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %22 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 1
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %23, align 8
  store %struct.Curl_easy* %24, %struct.Curl_easy** %8, align 8
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %9, align 8
  store i64 (i64, i32, i64, i8*)* null, i64 (i64, i32, i64, i8*)** %11, align 8
  store i8* null, i8** %12, align 8
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRAILERS_INITIALIZED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %3
  store %struct.curl_slist* null, %struct.curl_slist** %13, align 8
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %34 = call i32 @infof(%struct.Curl_easy* %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @TRAILERS_SENDING, align 8
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = call i32 (...) @Curl_add_buffer_init()
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %44 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %50 = call i32 @failf(%struct.Curl_easy* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %51, i64* %4, align 8
  br label %366

52:                                               ; preds = %32
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %57 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %56, i32 1)
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.curl_slist**, i32*)*, i32 (%struct.curl_slist**, i32*)** %60, align 8
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 %61(%struct.curl_slist** %13, i32* %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %68 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %67, i32 0)
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @CURL_TRAILERFUNC_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %52
  %73 = load %struct.curl_slist*, %struct.curl_slist** %13, align 8
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %75 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %78 = call i64 @Curl_http_compile_trailers(%struct.curl_slist* %73, i32* %76, %struct.Curl_easy* %77)
  store i64 %78, i64* %14, align 8
  br label %84

79:                                               ; preds = %52
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %81 = call i32 @failf(%struct.Curl_easy* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i64*, i64** %7, align 8
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* @CURLE_ABORTED_BY_CALLBACK, align 8
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %79, %72
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %89 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = call i32 @Curl_add_buffer_free(i32* %90)
  %92 = load %struct.curl_slist*, %struct.curl_slist** %13, align 8
  %93 = call i32 @curl_slist_free_all(%struct.curl_slist* %92)
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %4, align 8
  br label %366

95:                                               ; preds = %84
  %96 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %97 = call i32 @infof(%struct.Curl_easy* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.curl_slist*, %struct.curl_slist** %13, align 8
  %99 = call i32 @curl_slist_free_all(%struct.curl_slist* %98)
  br label %100

100:                                              ; preds = %95, %3
  %101 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %102 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %108 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TRAILERS_NONE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %114, 12
  store i64 %115, i64* %9, align 8
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %117 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 10
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %113, %106, %100
  %122 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %123 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TRAILERS_SENDING, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  store i64 (i64, i32, i64, i8*)* @Curl_trailers_read, i64 (i64, i32, i64, i8*)** %11, align 8
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %130 = bitcast %struct.Curl_easy* %129 to i8*
  store i8* %130, i8** %12, align 8
  br label %140

131:                                              ; preds = %121
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %133 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64 (i64, i32, i64, i8*)*, i64 (i64, i32, i64, i8*)** %134, align 8
  store i64 (i64, i32, i64, i8*)* %135, i64 (i64, i32, i64, i8*)** %11, align 8
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %137 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %131, %128
  %141 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %142 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %141, i32 1)
  %143 = load i64 (i64, i32, i64, i8*)*, i64 (i64, i32, i64, i8*)** %11, align 8
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %145 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i64 %143(i64 %147, i32 1, i64 %148, i8* %149)
  store i64 %150, i64* %10, align 8
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %152 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %151, i32 0)
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* @CURL_READFUNC_ABORT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %140
  %157 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %158 = call i32 @failf(%struct.Curl_easy* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i64*, i64** %7, align 8
  store i64 0, i64* %159, align 8
  %160 = load i64, i64* @CURLE_ABORTED_BY_CALLBACK, align 8
  store i64 %160, i64* %4, align 8
  br label %366

161:                                              ; preds = %140
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @CURL_READFUNC_PAUSE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %161
  %166 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %167 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %166, i32 0, i32 0
  store %struct.SingleRequest* %167, %struct.SingleRequest** %16, align 8
  %168 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %169 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @PROTOPT_NONETWORK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %178 = call i32 @failf(%struct.Curl_easy* %177, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i64, i64* @CURLE_READ_ERROR, align 8
  store i64 %179, i64* %4, align 8
  br label %366

180:                                              ; preds = %165
  %181 = load i32, i32* @KEEP_SEND_PAUSE, align 4
  %182 = load %struct.SingleRequest*, %struct.SingleRequest** %16, align 8
  %183 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %187 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %193 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %195, 10
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %191, %180
  %198 = load i64*, i64** %7, align 8
  store i64 0, i64* %198, align 8
  %199 = load i64, i64* @CURLE_OK, align 8
  store i64 %199, i64* %4, align 8
  br label %366

200:                                              ; preds = %161
  %201 = load i64, i64* %10, align 8
  %202 = load i64, i64* %9, align 8
  %203 = icmp ugt i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i64*, i64** %7, align 8
  store i64 0, i64* %205, align 8
  %206 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %207 = call i32 @failf(%struct.Curl_easy* %206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %208 = load i64, i64* @CURLE_READ_ERROR, align 8
  store i64 %208, i64* %4, align 8
  br label %366

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %212 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %362, label %216

216:                                              ; preds = %210
  %217 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %218 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %362

222:                                              ; preds = %216
  %223 = load i32, i32* @FALSE, align 4
  store i32 %223, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %224 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %225 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %20, align 8
  br label %231

230:                                              ; preds = %222
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %20, align 8
  br label %231

231:                                              ; preds = %230, %229
  %232 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %233 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TRAILERS_SENDING, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %300

238:                                              ; preds = %231
  %239 = bitcast [11 x i8]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %239, i8 0, i64 11, i1 false)
  %240 = getelementptr inbounds [11 x i8], [11 x i8]* %21, i64 0, i64 0
  %241 = load i64, i64* %10, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = call i32 @msnprintf(i8* %240, i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %241, i8* %242)
  store i32 %243, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %247 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, %245
  store i64 %250, i64* %248, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %10, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %10, align 8
  %255 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %256 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds [11 x i8], [11 x i8]* %21, i64 0, i64 0
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = call i32 @memcpy(i64 %258, i8* %259, i64 %261)
  %263 = load i64, i64* %10, align 8
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = sub i64 %263, %265
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %286

268:                                              ; preds = %238
  %269 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %270 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32 (%struct.curl_slist**, i32*)*, i32 (%struct.curl_slist**, i32*)** %271, align 8
  %273 = icmp ne i32 (%struct.curl_slist**, i32*)* %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %268
  %275 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %276 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @TRAILERS_NONE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load i64, i64* @TRAILERS_INITIALIZED, align 8
  %283 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %284 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  store i64 %282, i64* %285, align 8
  br label %299

286:                                              ; preds = %274, %268, %238
  %287 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %288 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %10, align 8
  %292 = add i64 %290, %291
  %293 = load i8*, i8** %20, align 8
  %294 = load i8*, i8** %20, align 8
  %295 = call i64 @strlen(i8* %294)
  %296 = call i32 @memcpy(i64 %292, i8* %293, i64 %295)
  %297 = load i8*, i8** @TRUE, align 8
  %298 = ptrtoint i8* %297 to i32
  store i32 %298, i32* %17, align 4
  br label %299

299:                                              ; preds = %286, %281
  br label %300

300:                                              ; preds = %299, %231
  %301 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %302 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @TRAILERS_SENDING, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %332

307:                                              ; preds = %300
  %308 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %309 = call i32 @Curl_trailers_left(%struct.Curl_easy* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %332, label %311

311:                                              ; preds = %307
  %312 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %313 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 2
  %315 = call i32 @Curl_add_buffer_free(i32* %314)
  %316 = load i64, i64* @TRAILERS_DONE, align 8
  %317 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %318 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  store i64 %316, i64* %319, align 8
  %320 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %321 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 2
  store i32* null, i32** %322, align 8
  %323 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %324 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  store i32 (%struct.curl_slist**, i32*)* null, i32 (%struct.curl_slist**, i32*)** %325, align 8
  %326 = load i8*, i8** @TRUE, align 8
  %327 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %328 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %328, i32 0, i32 1
  store i8* %326, i8** %329, align 8
  %330 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %331 = call i32 @infof(%struct.Curl_easy* %330, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %353

332:                                              ; preds = %307, %300
  %333 = load i64, i64* %10, align 8
  %334 = load i32, i32* %18, align 4
  %335 = sext i32 %334 to i64
  %336 = sub i64 %333, %335
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %352

338:                                              ; preds = %332
  %339 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %340 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @TRAILERS_INITIALIZED, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %338
  %346 = load i8*, i8** @TRUE, align 8
  %347 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %348 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %348, i32 0, i32 1
  store i8* %346, i8** %349, align 8
  %350 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %351 = call i32 @infof(%struct.Curl_easy* %350, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0))
  br label %352

352:                                              ; preds = %345, %338, %332
  br label %353

353:                                              ; preds = %352, %311
  %354 = load i32, i32* %17, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load i8*, i8** %20, align 8
  %358 = call i64 @strlen(i8* %357)
  %359 = load i64, i64* %10, align 8
  %360 = add i64 %359, %358
  store i64 %360, i64* %10, align 8
  br label %361

361:                                              ; preds = %356, %353
  br label %362

362:                                              ; preds = %361, %216, %210
  %363 = load i64, i64* %10, align 8
  %364 = load i64*, i64** %7, align 8
  store i64 %363, i64* %364, align 8
  %365 = load i64, i64* @CURLE_OK, align 8
  store i64 %365, i64* %4, align 8
  br label %366

366:                                              ; preds = %362, %204, %197, %176, %156, %87, %48
  %367 = load i64, i64* %4, align 8
  ret i64 %367
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_add_buffer_init(...) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i64 @Curl_http_compile_trailers(%struct.curl_slist*, i32*, %struct.Curl_easy*) #1

declare dso_local i32 @Curl_add_buffer_free(i32*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i64 @Curl_trailers_read(i64, i32, i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @msnprintf(i8*, i32, i8*, i64, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Curl_trailers_left(%struct.Curl_easy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
