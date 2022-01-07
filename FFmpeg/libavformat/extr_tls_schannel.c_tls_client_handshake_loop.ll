; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_client_handshake_loop.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_client_handshake_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i32*, %struct.TYPE_10__, i32, i32, i32, i32, i8*, i32*, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32* }

@SCHANNEL_INITIAL_BUFFER_SIZE = common dso_local global i8* null, align 8
@SCHANNEL_FREE_BUFFER_SIZE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read handshake response\0A\00", align 1
@SECBUFFER_TOKEN = common dso_local global i64 0, align 8
@SECBUFFER_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate input buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SECBUFFER_ALERT = common dso_local global i64 0, align 8
@SEC_E_INCOMPLETE_MESSAGE = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Received incomplete handshake, need more data\0A\00", align 1
@SEC_I_INCOMPLETE_CREDENTIALS = common dso_local global i64 0, align 8
@ISC_REQ_USE_SUPPLIED_CREDS = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Client certificate has been requested, ignoring\0A\00", align 1
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to send handshake data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SEC_E_WRONG_PRINCIPAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"SNI or certificate check failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Creating security context failed (0x%lx)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@SECBUFFER_EXTRA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @tls_client_handshake_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_client_handshake_loop(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.TYPE_12__], align 16
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.TYPE_12__], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = bitcast [3 x %struct.TYPE_12__]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 72, i1 false)
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i8*, i8** @SCHANNEL_INITIAL_BUFFER_SIZE, align 8
  %33 = call i32 @av_reallocp(i32** %31, i8* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %389

37:                                               ; preds = %27
  %38 = load i8*, i8** @SCHANNEL_INITIAL_BUFFER_SIZE, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 11
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 10
  %52 = load i8*, i8** @SCHANNEL_INITIAL_BUFFER_SIZE, align 8
  %53 = call i32 @av_reallocp(i32** %51, i8* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %389

57:                                               ; preds = %47
  %58 = load i8*, i8** @SCHANNEL_INITIAL_BUFFER_SIZE, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %42
  br label %62

62:                                               ; preds = %61, %204, %219, %376, %386
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load i64, i64* @SCHANNEL_FREE_BUFFER_SIZE, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %62
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCHANNEL_FREE_BUFFER_SIZE, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @av_reallocp(i32** %81, i8* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %72
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  br label %389

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @ffurl_read(i32 %102, i32* %109, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %98
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %122, i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %389

125:                                              ; preds = %98
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %125, %95
  %133 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %134 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32* @av_malloc(i32 %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @init_sec_buffer(%struct.TYPE_12__* %133, i64 %134, i32* %139, i32 %143)
  %145 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %146 = load i64, i64* @SECBUFFER_EMPTY, align 8
  %147 = call i32 @init_sec_buffer(%struct.TYPE_12__* %145, i64 %146, i32* null, i32 0)
  %148 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %149 = call i32 @init_sec_buffer_desc(i32* %12, %struct.TYPE_12__* %148, i32 2)
  %150 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 16
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %132
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %155, i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %14, align 4
  br label %389

160:                                              ; preds = %132
  %161 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 16
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memcpy(i32* %163, i32* %166, i32 %170)
  %172 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %173 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %174 = call i32 @init_sec_buffer(%struct.TYPE_12__* %172, i64 %173, i32* null, i32 0)
  %175 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 1
  %176 = load i64, i64* @SECBUFFER_ALERT, align 8
  %177 = call i32 @init_sec_buffer(%struct.TYPE_12__* %175, i64 %176, i32* null, i32 0)
  %178 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 2
  %179 = load i64, i64* @SECBUFFER_EMPTY, align 8
  %180 = call i32 @init_sec_buffer(%struct.TYPE_12__* %178, i64 %179, i32* null, i32 0)
  %181 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %182 = call i32 @init_sec_buffer_desc(i32* %10, %struct.TYPE_12__* %181, i32 3)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 5
  %197 = call i64 @InitializeSecurityContext(i32* %184, i32* %186, i32 %189, i32 %192, i32 0, i32 0, i32* %12, i32 0, i32* null, i32* %10, i32* %194, i32* %196)
  store i64 %197, i64* %8, align 8
  %198 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = call i32 @av_freep(i32** %199)
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @SEC_E_INCOMPLETE_MESSAGE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %160
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = load i32, i32* @AV_LOG_DEBUG, align 4
  %207 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %205, i32 %206, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %62

208:                                              ; preds = %160
  %209 = load i64, i64* %8, align 8
  %210 = load i64, i64* @SEC_I_INCOMPLETE_CREDENTIALS, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ISC_REQ_USE_SUPPLIED_CREDS, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %212
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %222 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %220, i32 %221, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %223 = load i32, i32* @ISC_REQ_USE_SUPPLIED_CREDS, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  store i32 0, i32* %15, align 4
  br label %62

228:                                              ; preds = %212, %208
  %229 = load i64, i64* %8, align 8
  %230 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load i64, i64* %8, align 8
  %234 = load i64, i64* @SEC_E_OK, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %311

236:                                              ; preds = %232, %228
  store i32 0, i32* %13, align 4
  br label %237

237:                                              ; preds = %307, %236
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %238, 3
  br i1 %239, label %240, label %310

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @SECBUFFER_TOKEN, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %288

248:                                              ; preds = %240
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %288

255:                                              ; preds = %248
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @ffurl_write(i32 %259, i32* %264, i32 %269)
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %255
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %274, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %273, %255
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %283 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %284 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %282, i32 %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %285 = load i32, i32* @EIO, align 4
  %286 = call i32 @AVERROR(i32 %285)
  store i32 %286, i32* %14, align 4
  br label %389

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287, %248, %240
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %306

295:                                              ; preds = %288
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @FreeContextBuffer(i32* %300)
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  store i32* null, i32** %305, align 8
  br label %306

306:                                              ; preds = %295, %288
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %13, align 4
  br label %237

310:                                              ; preds = %237
  br label %326

311:                                              ; preds = %232
  %312 = load i64, i64* %8, align 8
  %313 = load i64, i64* @SEC_E_WRONG_PRINCIPAL, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %317 = load i32, i32* @AV_LOG_ERROR, align 4
  %318 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %316, i32 %317, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %324

319:                                              ; preds = %311
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %321 = load i32, i32* @AV_LOG_ERROR, align 4
  %322 = load i64, i64* %8, align 8
  %323 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %320, i32 %321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %322)
  br label %324

324:                                              ; preds = %319, %315
  %325 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %325, i32* %14, align 4
  br label %389

326:                                              ; preds = %310
  %327 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @SECBUFFER_EXTRA, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %379

332:                                              ; preds = %326
  %333 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %379

337:                                              ; preds = %332
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = icmp sgt i64 %340, %344
  br i1 %345, label %346, label %378

346:                                              ; preds = %337
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 3
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = sub i64 0, %360
  %362 = getelementptr inbounds i32, i32* %356, i64 %361
  %363 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @memmove(i32* %349, i32* %362, i32 %365)
  %367 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %11, i64 0, i64 1
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  store i64 %370, i64* %372, align 8
  %373 = load i64, i64* %8, align 8
  %374 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %346
  store i32 0, i32* %15, align 4
  br label %62

377:                                              ; preds = %346
  br label %378

378:                                              ; preds = %377, %337
  br label %382

379:                                              ; preds = %332, %326
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  store i64 0, i64* %381, align 8
  br label %382

382:                                              ; preds = %379, %378
  %383 = load i64, i64* %8, align 8
  %384 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store i32 1, i32* %15, align 4
  br label %62

387:                                              ; preds = %382
  br label %388

388:                                              ; preds = %387
  store i32 0, i32* %3, align 4
  br label %417

389:                                              ; preds = %324, %281, %154, %121, %89, %56, %36
  store i32 0, i32* %13, align 4
  br label %390

390:                                              ; preds = %412, %389
  %391 = load i32, i32* %13, align 4
  %392 = icmp slt i32 %391, 3
  br i1 %392, label %393, label %415

393:                                              ; preds = %390
  %394 = load i32, i32* %13, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 2
  %398 = load i32*, i32** %397, align 8
  %399 = icmp ne i32* %398, null
  br i1 %399, label %400, label %411

400:                                              ; preds = %393
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = call i32 @FreeContextBuffer(i32* %405)
  %407 = load i32, i32* %13, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [3 x %struct.TYPE_12__], [3 x %struct.TYPE_12__]* %9, i64 0, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 2
  store i32* null, i32** %410, align 8
  br label %411

411:                                              ; preds = %400, %393
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %13, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %13, align 4
  br label %390

415:                                              ; preds = %390
  %416 = load i32, i32* %14, align 4
  store i32 %416, i32* %3, align 4
  br label %417

417:                                              ; preds = %415, %388
  %418 = load i32, i32* %3, align 4
  ret i32 %418
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_reallocp(i32**, i8*) #2

declare dso_local i32 @ffurl_read(i32, i32*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #2

declare dso_local i32 @init_sec_buffer(%struct.TYPE_12__*, i64, i32*, i32) #2

declare dso_local i32* @av_malloc(i32) #2

declare dso_local i32 @init_sec_buffer_desc(i32*, %struct.TYPE_12__*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @InitializeSecurityContext(i32*, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32 @ffurl_write(i32, i32*, i32) #2

declare dso_local i32 @FreeContextBuffer(i32*) #2

declare dso_local i32 @memmove(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
