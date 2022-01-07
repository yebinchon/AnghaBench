; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32* }

@SEC_E_OK = common dso_local global i64 0, align 8
@SCHANNEL_FREE_BUFFER_SIZE = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to read from socket\0A\00", align 1
@SECBUFFER_DATA = common dso_local global i64 0, align 8
@SECBUFFER_EMPTY = common dso_local global i64 0, align 8
@SEC_I_RENEGOTIATE = common dso_local global i64 0, align 8
@SEC_I_CONTEXT_EXPIRED = common dso_local global i64 0, align 8
@SECBUFFER_EXTRA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Cannot renegotiate, encrypted data buffer not empty\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Re-negotiating security context\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Server closed the connection\0A\00", align 1
@SEC_E_INCOMPLETE_MESSAGE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to decrypt message (error 0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @tls_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_read(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x %struct.TYPE_13__], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 9
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %9, align 8
  %21 = load i64, i64* @SEC_E_OK, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SCHANNEL_FREE_BUFFER_SIZE, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %392

31:                                               ; preds = %3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %392

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %133, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SCHANNEL_FREE_BUFFER_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %53, %42
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SCHANNEL_FREE_BUFFER_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %59
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @av_reallocp(i32** %78, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  br label %448

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %106, %109
  %111 = call i32 @ffurl_read(i32 %95, i32* %103, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @AVERROR_EOF, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %92
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  store i32 0, i32* %14, align 4
  br label %127

118:                                              ; preds = %92
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %122, i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %4, align 4
  br label %448

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %115
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %37
  br label %134

134:                                              ; preds = %390, %353, %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* @SEC_E_OK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %146, %147
  br label %149

149:                                              ; preds = %143, %139, %134
  %150 = phi i1 [ false, %139 ], [ false, %134 ], [ %148, %143 ]
  br i1 %150, label %151, label %391

151:                                              ; preds = %149
  %152 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %153 = load i64, i64* @SECBUFFER_DATA, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @init_sec_buffer(%struct.TYPE_13__* %152, i64 %153, i32* %156, i32 %159)
  %161 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %162 = load i64, i64* @SECBUFFER_EMPTY, align 8
  %163 = call i32 @init_sec_buffer(%struct.TYPE_13__* %161, i64 %162, i32* null, i32 0)
  %164 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 2
  %165 = load i64, i64* @SECBUFFER_EMPTY, align 8
  %166 = call i32 @init_sec_buffer(%struct.TYPE_13__* %164, i64 %165, i32* null, i32 0)
  %167 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %168 = load i64, i64* @SECBUFFER_EMPTY, align 8
  %169 = call i32 @init_sec_buffer(%struct.TYPE_13__* %167, i64 %168, i32* null, i32 0)
  %170 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 0
  %171 = call i32 @init_sec_buffer_desc(i32* %12, %struct.TYPE_13__* %170, i32 4)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 8
  %174 = call i64 @DecryptMessage(i32* %173, i32* %12, i32 0, i32* null)
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @SEC_E_OK, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %151
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @SEC_I_RENEGOTIATE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* @SEC_I_CONTEXT_EXPIRED, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %375

186:                                              ; preds = %182, %178, %151
  %187 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SECBUFFER_DATA, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %280

192:                                              ; preds = %186
  %193 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SCHANNEL_FREE_BUFFER_SIZE, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  br label %204

202:                                              ; preds = %192
  %203 = load i32, i32* @SCHANNEL_FREE_BUFFER_SIZE, align 4
  br label %204

204:                                              ; preds = %202, %198
  %205 = phi i32 [ %201, %198 ], [ %203, %202 ]
  store i32 %205, i32* %13, align 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %208, %211
  %213 = load i32, i32* %13, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %204
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %254

221:                                              ; preds = %215, %204
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %224, %225
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %221
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %234, %221
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @av_reallocp(i32** %240, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %238
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 5
  store i32 0, i32* %251, align 4
  %252 = load i32, i32* %14, align 4
  store i32 %252, i32* %4, align 4
  br label %448

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %253, %215
  %255 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %279

260:                                              ; preds = %254
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 6
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 1
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @memcpy(i32* %268, i32* %271, i32 %272)
  %274 = load i32, i32* %13, align 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %260, %254
  br label %280

280:                                              ; preds = %279, %186
  %281 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @SECBUFFER_EXTRA, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %327

286:                                              ; preds = %280
  %287 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %327

291:                                              ; preds = %286
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %294, %297
  br i1 %298, label %299, label %326

299:                                              ; preds = %291
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 7
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 7
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %305, i64 %309
  %311 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds i32, i32* %310, i64 %315
  %317 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @memmove(i32* %302, i32* %316, i32 %319)
  %321 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %11, i64 0, i64 3
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %299, %291
  br label %330

327:                                              ; preds = %286, %280
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 4
  store i32 0, i32* %329, align 8
  br label %330

330:                                              ; preds = %327, %326
  %331 = load i64, i64* %10, align 8
  %332 = load i64, i64* @SEC_I_RENEGOTIATE, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %355

334:                                              ; preds = %330
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %341 = load i32, i32* @AV_LOG_ERROR, align 4
  %342 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %340, i32 %341, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %343 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %343, i32* %14, align 4
  br label %392

344:                                              ; preds = %334
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %346 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %347 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %345, i32 %346, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %349 = call i32 @tls_client_handshake_loop(%struct.TYPE_10__* %348, i32 0)
  store i32 %349, i32* %14, align 4
  %350 = load i32, i32* %14, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %344
  br label %392

353:                                              ; preds = %344
  %354 = load i64, i64* @SEC_E_OK, align 8
  store i64 %354, i64* %10, align 8
  br label %134

355:                                              ; preds = %330
  %356 = load i64, i64* %10, align 8
  %357 = load i64, i64* @SEC_I_CONTEXT_EXPIRED, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %373

359:                                              ; preds = %355
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 1
  store i32 1, i32* %361, align 4
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %372, label %366

366:                                              ; preds = %359
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 2
  store i32 1, i32* %368, align 8
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %370 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %371 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %369, i32 %370, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %372

372:                                              ; preds = %366, %359
  store i32 0, i32* %14, align 4
  br label %392

373:                                              ; preds = %355
  br label %374

374:                                              ; preds = %373
  br label %390

375:                                              ; preds = %182
  %376 = load i64, i64* %10, align 8
  %377 = load i64, i64* @SEC_E_INCOMPLETE_MESSAGE, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = load i32, i32* @EAGAIN, align 4
  %381 = call i32 @AVERROR(i32 %380)
  store i32 %381, i32* %14, align 4
  br label %392

382:                                              ; preds = %375
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %384 = load i32, i32* @AV_LOG_ERROR, align 4
  %385 = load i64, i64* %10, align 8
  %386 = trunc i64 %385 to i32
  %387 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %383, i32 %384, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* @EIO, align 4
  %389 = call i32 @AVERROR(i32 %388)
  store i32 %389, i32* %14, align 4
  br label %392

390:                                              ; preds = %374
  br label %134

391:                                              ; preds = %149
  store i32 0, i32* %14, align 4
  br label %392

392:                                              ; preds = %391, %382, %379, %372, %352, %339, %36, %30
  %393 = load i32, i32* %7, align 4
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @FFMIN(i32 %393, i32 %396)
  store i32 %397, i32* %13, align 4
  %398 = load i32, i32* %13, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %428

400:                                              ; preds = %392
  %401 = load i32*, i32** %6, align 8
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 6
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %13, align 4
  %406 = call i32 @memcpy(i32* %401, i32* %404, i32 %405)
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 6
  %409 = load i32*, i32** %408, align 8
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 6
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %13, align 4
  %420 = sub nsw i32 %418, %419
  %421 = call i32 @memmove(i32* %409, i32* %415, i32 %420)
  %422 = load i32, i32* %13, align 4
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sub nsw i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load i32, i32* %13, align 4
  store i32 %427, i32* %4, align 4
  br label %448

428:                                              ; preds = %392
  %429 = load i32, i32* %14, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %439

431:                                              ; preds = %428
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %431
  %437 = load i32, i32* @EAGAIN, align 4
  %438 = call i32 @AVERROR(i32 %437)
  store i32 %438, i32* %14, align 4
  br label %439

439:                                              ; preds = %436, %431, %428
  %440 = load i32, i32* %14, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %439
  %443 = load i32, i32* %14, align 4
  br label %446

444:                                              ; preds = %439
  %445 = load i32, i32* @AVERROR_EOF, align 4
  br label %446

446:                                              ; preds = %444, %442
  %447 = phi i32 [ %443, %442 ], [ %445, %444 ]
  store i32 %447, i32* %4, align 4
  br label %448

448:                                              ; preds = %446, %400, %247, %121, %85
  %449 = load i32, i32* %4, align 4
  ret i32 %449
}

declare dso_local i32 @av_reallocp(i32**, i32) #1

declare dso_local i32 @ffurl_read(i32, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @init_sec_buffer(%struct.TYPE_13__*, i64, i32*, i32) #1

declare dso_local i32 @init_sec_buffer_desc(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @DecryptMessage(i32*, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @tls_client_handshake_loop(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
