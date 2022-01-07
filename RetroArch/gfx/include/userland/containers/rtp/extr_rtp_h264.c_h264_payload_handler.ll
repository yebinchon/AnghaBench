; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_payload_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_payload_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@TRACK_NEW_PACKET = common dso_local global i32 0, align 4
@H264F_NEXT_PACKET_IS_START = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"STAP unit header\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"H.264: STAP-A NAL unit size bigger than payload\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Packet data\00", align 1
@TRACK_HAS_MARKER = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_10__*, %struct.TYPE_12__*, i32)* @h264_payload_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @h264_payload_handler(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  %33 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %33, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRACK_NEW_PACKET, align 4
  %38 = call i64 @BIT_IS_SET(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %4
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = call i64 @h264_new_rtp_packet(i32* %41, %struct.TYPE_11__* %42)
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %18, align 8
  store i64 %48, i64* %5, align 8
  br label %266

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @H264F_NEXT_PACKET_IS_START, align 4
  %55 = call i64 @BIT_IS_SET(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @H264F_NEXT_PACKET_IS_START, align 4
  %70 = call i32 @CLEAR_BIT(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i64 @BITS_BYTES_AVAILABLE(i32* %78, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @BITS_READ_U32(i32* %83, i32* %84, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = ashr i32 %86, 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @BITS_BYTES_AVAILABLE(i32* %94, i32* %95)
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %82
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @LOG_ERROR(i32* %99, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %101, i64* %5, align 8
  br label %266

102:                                              ; preds = %82
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  store i32 5, i32* %104, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %77, %72
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %15, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = icmp ne %struct.TYPE_12__* %117, null
  br i1 %118, label %119, label %215

119:                                              ; preds = %108
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %215, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32*, i32** %6, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i64 @BITS_BYTES_AVAILABLE(i32* %134, i32* %135)
  %137 = icmp eq i64 %133, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %19, align 4
  br label %211

139:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %17, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %148, %139
  br label %153

153:                                              ; preds = %170, %152
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi i1 [ false, %153 ], [ %159, %157 ]
  br i1 %161, label %162, label %179

162:                                              ; preds = %160
  %163 = load i32, i32* %14, align 4
  switch i32 %163, label %169 [
    i32 2, label %164
    i32 1, label %165
  ]

164:                                              ; preds = %162
  store i32 1, i32* %21, align 4
  br label %170

165:                                              ; preds = %162
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %21, align 4
  br label %170

169:                                              ; preds = %162
  store i32 0, i32* %21, align 4
  br label %170

170:                                              ; preds = %169, %165, %164
  %171 = load i32, i32* %21, align 4
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %14, align 4
  br label %153

179:                                              ; preds = %160
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %179
  %187 = load i32*, i32** %6, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = call i32 @BITS_COPY_BYTES(i32* %187, i32* %188, i32 %191, i32* %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %16, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %186, %179
  %205 = load i32*, i32** %6, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i64 @BITS_BYTES_AVAILABLE(i32* %205, i32* %206)
  %208 = icmp ne i64 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %19, align 4
  br label %211

211:                                              ; preds = %204, %129
  %212 = load i32, i32* %15, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  br label %232

215:                                              ; preds = %119, %108
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i32 0, i32* %217, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = load i32*, i32** %11, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @BITS_SKIP_BYTES(i32* %218, i32* %219, i32 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %224 = load i32*, i32** %6, align 8
  %225 = load i32*, i32** %11, align 8
  %226 = call i64 @BITS_BYTES_AVAILABLE(i32* %224, i32* %225)
  %227 = icmp ne i64 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %19, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %215, %211
  %233 = load i32, i32* %19, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %257

235:                                              ; preds = %232
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TRACK_HAS_MARKER, align 4
  %240 = call i64 @BIT_IS_SET(i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %235
  %243 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %244 = load i32, i32* %13, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %242
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @H264F_NEXT_PACKET_IS_START, align 4
  %255 = call i32 @SET_BIT(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %250, %242
  br label %257

257:                                              ; preds = %256, %235, %232
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %259 = icmp ne %struct.TYPE_12__* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %260, %257
  %265 = load i64, i64* %18, align 8
  store i64 %265, i64* %5, align 8
  br label %266

266:                                              ; preds = %264, %98, %47
  %267 = load i64, i64* %5, align 8
  ret i64 %267
}

declare dso_local i64 @BIT_IS_SET(i32, i32) #1

declare dso_local i64 @h264_new_rtp_packet(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @CLEAR_BIT(i32, i32) #1

declare dso_local i64 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i32 @BITS_COPY_BYTES(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i32, i8*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
