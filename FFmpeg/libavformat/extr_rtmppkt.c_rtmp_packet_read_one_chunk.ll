; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_rtmp_packet_read_one_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_rtmp_packet_read_one_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@RTMP_PS_ONEBYTE = common dso_local global i32 0, align 4
@RTMP_PS_FOURBYTES = common dso_local global i32 0, align 4
@RTMP_PS_TWELVEBYTES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RTMP packet size mismatch %d != %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32, %struct.TYPE_7__**, i32*, i32)* @rtmp_packet_read_one_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_packet_read_one_chunk(i32* %0, %struct.TYPE_7__* %1, i32 %2, %struct.TYPE_7__** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* %21, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %54

33:                                               ; preds = %6
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @ffurl_read_complete(i32* %35, i32* %36, i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EIO, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %415

46:                                               ; preds = %33
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %21, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %21, align 4
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %52 = call i32 @AV_RL16(i32* %51)
  %53 = add nsw i32 %52, 64
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %46, %6
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @ff_rtmp_check_alloc_array(%struct.TYPE_7__** %55, i32* %56, i32 %57)
  store i32 %58, i32* %22, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %22, align 4
  store i32 %61, i32* %7, align 4
  br label %415

62:                                               ; preds = %54
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %24, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %17, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %13, align 4
  %84 = ashr i32 %83, 6
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @RTMP_PS_ONEBYTE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %62
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %18, align 4
  br label %154

95:                                               ; preds = %62
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %98 = call i32 @ffurl_read_complete(i32* %96, i32* %97, i32 3)
  %99 = icmp ne i32 %98, 3
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EIO, align 4
  %102 = call i32 @AVERROR(i32 %101)
  store i32 %102, i32* %7, align 4
  br label %415

103:                                              ; preds = %95
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 3
  store i32 %105, i32* %21, align 4
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %107 = call i32 @AV_RB24(i32* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @RTMP_PS_FOURBYTES, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %153

111:                                              ; preds = %103
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %114 = call i32 @ffurl_read_complete(i32* %112, i32* %113, i32 3)
  %115 = icmp ne i32 %114, 3
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EIO, align 4
  %118 = call i32 @AVERROR(i32 %117)
  store i32 %118, i32* %7, align 4
  br label %415

119:                                              ; preds = %111
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 3
  store i32 %121, i32* %21, align 4
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %123 = call i32 @AV_RB24(i32* %122)
  store i32 %123, i32* %17, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %126 = call i32 @ffurl_read_complete(i32* %124, i32* %125, i32 1)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @EIO, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %7, align 4
  br label %415

131:                                              ; preds = %119
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %135 = load i32, i32* %134, align 16
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @RTMP_PS_TWELVEBYTES, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %131
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %142 = call i32 @ffurl_read_complete(i32* %140, i32* %141, i32 4)
  %143 = icmp ne i32 %142, 4
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @EIO, align 4
  %146 = call i32 @AVERROR(i32 %145)
  store i32 %146, i32* %7, align 4
  br label %415

147:                                              ; preds = %139
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %148, 4
  store i32 %149, i32* %21, align 4
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %151 = call i32 @AV_RL32(i32* %150)
  store i32 %151, i32* %19, align 4
  br label %152

152:                                              ; preds = %147, %131
  br label %153

153:                                              ; preds = %152, %103
  br label %154

154:                                              ; preds = %153, %88
  %155 = load i32, i32* %18, align 4
  %156 = icmp eq i32 %155, 16777215
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %160 = call i32 @ffurl_read_complete(i32* %158, i32* %159, i32 4)
  %161 = icmp ne i32 %160, 4
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @EIO, align 4
  %164 = call i32 @AVERROR(i32 %163)
  store i32 %164, i32* %7, align 4
  br label %415

165:                                              ; preds = %157
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %167 = call i32 @AV_RB32(i32* %166)
  store i32 %167, i32* %16, align 4
  br label %170

168:                                              ; preds = %154
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @RTMP_PS_TWELVEBYTES, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %174, %170
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %222

191:                                              ; preds = %183
  %192 = load i32, i32* %17, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %192, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %191
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* @AV_LOG_ERROR, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @av_log(i32* %201, i32 %202, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_7__* %214)
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  store i32 0, i32* %220, align 4
  %221 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %221, i32* %7, align 4
  br label %415

222:                                              ; preds = %191, %183
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %224 = load i32, i32* %15, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %258, label %230

230:                                              ; preds = %222
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @ff_rtmp_packet_create(%struct.TYPE_7__* %231, i32 %232, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %22, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i32, i32* %22, align 4
  store i32 %239, i32* %7, align 4
  br label %415

240:                                              ; preds = %230
  %241 = load i32, i32* %21, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 6
  store i32 0, i32* %245, align 8
  %246 = load i32, i32* %18, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %248 = load i32, i32* %15, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 3
  store i32 %246, i32* %251, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 4
  store i32 %252, i32* %257, align 8
  br label %312

258:                                              ; preds = %222
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i64 %261
  store %struct.TYPE_7__* %262, %struct.TYPE_7__** %25, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 7
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 7
  store i32* %265, i32** %267, align 8
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 6
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %21, align 4
  %302 = add nsw i32 %300, %301
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 4
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 7
  store i32* null, i32** %311, align 8
  br label %312

312:                                              ; preds = %258, %240
  %313 = load i32, i32* %19, align 4
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %318 = load i32, i32* %15, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 8
  store i32 %316, i32* %321, align 8
  %322 = load i32, i32* %20, align 4
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %324 = load i32, i32* %15, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  store i32 %322, i32* %327, align 4
  %328 = load i32, i32* %17, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  store i32 %328, i32* %333, align 8
  %334 = load i32, i32* %19, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  store i32 %334, i32* %339, align 8
  %340 = load i32, i32* %17, align 4
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = sub nsw i32 %340, %343
  store i32 %344, i32* %17, align 4
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @FFMIN(i32 %345, i32 %346)
  store i32 %347, i32* %23, align 4
  %348 = load i32*, i32** %8, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 7
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %351, i64 %355
  %357 = load i32, i32* %23, align 4
  %358 = call i32 @ffurl_read_complete(i32* %348, i32* %356, i32 %357)
  %359 = load i32, i32* %23, align 4
  %360 = icmp ne i32 %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %312
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %363 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_7__* %362)
  %364 = load i32, i32* @EIO, align 4
  %365 = call i32 @AVERROR(i32 %364)
  store i32 %365, i32* %7, align 4
  br label %415

366:                                              ; preds = %312
  %367 = load i32, i32* %23, align 4
  %368 = load i32, i32* %17, align 4
  %369 = sub nsw i32 %368, %367
  store i32 %369, i32* %17, align 4
  %370 = load i32, i32* %23, align 4
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load i32, i32* %23, align 4
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load i32, i32* %17, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %406

382:                                              ; preds = %366
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i64 %385
  store %struct.TYPE_7__* %386, %struct.TYPE_7__** %26, align 8
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 7
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 7
  store i32* %389, i32** %391, align 8
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 5
  store i32 %394, i32* %396, align 4
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 6
  store i32 %399, i32* %401, align 8
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 7
  store i32* null, i32** %403, align 8
  %404 = load i32, i32* @EAGAIN, align 4
  %405 = call i32 @AVERROR(i32 %404)
  store i32 %405, i32* %7, align 4
  br label %415

406:                                              ; preds = %366
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 5
  store i32 0, i32* %411, align 4
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  store i32 %414, i32* %7, align 4
  br label %415

415:                                              ; preds = %406, %382, %361, %238, %200, %162, %144, %128, %116, %100, %60, %43
  %416 = load i32, i32* %7, align 4
  ret i32 %416
}

declare dso_local i32 @ffurl_read_complete(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @ff_rtmp_check_alloc_array(%struct.TYPE_7__**, i32*, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
