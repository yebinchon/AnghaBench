; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_rtmp_packet_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_ff_rtmp_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i32* }

@RTMP_PS_TWELVEBYTES = common dso_local global i32 0, align 4
@RTMP_PS_FOURBYTES = common dso_local global i32 0, align 4
@RTMP_PS_ONEBYTE = common dso_local global i32 0, align 4
@RTMP_PS_EIGHTBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtmp_packet_write(i32* %0, %struct.TYPE_5__* %1, i32 %2, %struct.TYPE_5__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32* %24, i32** %13, align 8
  %25 = load i32, i32* @RTMP_PS_TWELVEBYTES, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ff_rtmp_check_alloc_array(%struct.TYPE_5__** %26, i32* %27, i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %6, align 4
  br label %380

35:                                               ; preds = %5
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %18, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %49, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %46
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %61, %68
  br label %70

70:                                               ; preds = %58, %46, %35
  %71 = phi i1 [ false, %46 ], [ false, %35 ], [ %69, %58 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %79, %70
  %92 = load i32, i32* %20, align 4
  %93 = icmp sge i32 %92, 16777215
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  store i32 16777215, i32* %96, align 8
  br label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %20, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %101
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %107, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %104
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %119, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %116
  %129 = load i32, i32* @RTMP_PS_FOURBYTES, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %132, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* @RTMP_PS_ONEBYTE, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %141, %128
  br label %146

144:                                              ; preds = %116, %104
  %145 = load i32, i32* @RTMP_PS_EIGHTBYTES, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %144, %143
  br label %147

147:                                              ; preds = %146, %101
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %150, 64
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = shl i32 %156, 6
  %158 = sext i32 %157 to i64
  %159 = or i64 %155, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @bytestream_put_byte(i32** %13, i32 %160)
  br label %190

162:                                              ; preds = %147
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %165, 320
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i32, i32* %14, align 4
  %169 = shl i32 %168, 6
  %170 = or i32 0, %169
  %171 = call i32 @bytestream_put_byte(i32** %13, i32 %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub i64 %174, 64
  %176 = trunc i64 %175 to i32
  %177 = call i32 @bytestream_put_byte(i32** %13, i32 %176)
  br label %189

178:                                              ; preds = %162
  %179 = load i32, i32* %14, align 4
  %180 = shl i32 %179, 6
  %181 = or i32 1, %180
  %182 = call i32 @bytestream_put_byte(i32** %13, i32 %181)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = sub i64 %185, 64
  %187 = trunc i64 %186 to i32
  %188 = call i32 @bytestream_put_le16(i32** %13, i32 %187)
  br label %189

189:                                              ; preds = %178, %167
  br label %190

190:                                              ; preds = %189, %152
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @RTMP_PS_ONEBYTE, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %190
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @bytestream_put_be24(i32** %13, i32 %197)
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @RTMP_PS_FOURBYTES, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %194
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @bytestream_put_be24(i32** %13, i32 %205)
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @bytestream_put_byte(i32** %13, i32 %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @RTMP_PS_TWELVEBYTES, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %202
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @bytestream_put_le32(i32** %13, i64 %217)
  br label %219

219:                                              ; preds = %214, %202
  br label %220

220:                                              ; preds = %219, %194
  br label %221

221:                                              ; preds = %220, %190
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 16777215
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32, i32* %20, align 4
  %228 = call i32 @bytestream_put_be32(i32** %13, i32 %227)
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  store i64 %232, i64* %238, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 4
  store i32 %241, i32* %247, align 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 5
  store i32 %250, i32* %256, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  store i64 %259, i64* %265, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  store i32 %268, i32* %274, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  store i64 %277, i64* %283, align 8
  %284 = load i32*, i32** %7, align 8
  %285 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %286 = load i32*, i32** %13, align 8
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %288 = ptrtoint i32* %286 to i64
  %289 = ptrtoint i32* %287 to i64
  %290 = sub i64 %288, %289
  %291 = sdiv exact i64 %290, 4
  %292 = trunc i64 %291 to i32
  %293 = call i32 @ffurl_write(i32* %284, i32* %285, i32 %292)
  store i32 %293, i32* %17, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %229
  %296 = load i32, i32* %17, align 4
  store i32 %296, i32* %6, align 4
  br label %380

297:                                              ; preds = %229
  %298 = load i32*, i32** %13, align 8
  %299 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %300 = ptrtoint i32* %298 to i64
  %301 = ptrtoint i32* %299 to i64
  %302 = sub i64 %300, %301
  %303 = sdiv exact i64 %302, 4
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %303, %307
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %16, align 4
  br label %310

310:                                              ; preds = %377, %297
  %311 = load i32, i32* %15, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %378

316:                                              ; preds = %310
  %317 = load i32, i32* %9, align 4
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %15, align 4
  %322 = sub nsw i32 %320, %321
  %323 = call i32 @FFMIN(i32 %317, i32 %322)
  store i32 %323, i32* %21, align 4
  %324 = load i32*, i32** %7, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 6
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %21, align 4
  %332 = call i32 @ffurl_write(i32* %324, i32* %330, i32 %331)
  store i32 %332, i32* %17, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %316
  %335 = load i32, i32* %17, align 4
  store i32 %335, i32* %6, align 4
  br label %380

336:                                              ; preds = %316
  %337 = load i32, i32* %21, align 4
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* %15, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = icmp slt i32 %340, %343
  br i1 %344, label %345, label %377

345:                                              ; preds = %336
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = or i64 192, %348
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %22, align 4
  %351 = load i32*, i32** %7, align 8
  %352 = call i32 @ffurl_write(i32* %351, i32* %22, i32 1)
  store i32 %352, i32* %17, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %345
  %355 = load i32, i32* %17, align 4
  store i32 %355, i32* %6, align 4
  br label %380

356:                                              ; preds = %345
  %357 = load i32, i32* %16, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %16, align 4
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 16777215
  br i1 %362, label %363, label %376

363:                                              ; preds = %356
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @AV_WB32(i32* %364, i32 %365)
  %367 = load i32*, i32** %7, align 8
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %369 = call i32 @ffurl_write(i32* %367, i32* %368, i32 4)
  store i32 %369, i32* %17, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %363
  %372 = load i32, i32* %17, align 4
  store i32 %372, i32* %6, align 4
  br label %380

373:                                              ; preds = %363
  %374 = load i32, i32* %16, align 4
  %375 = add nsw i32 %374, 4
  store i32 %375, i32* %16, align 4
  br label %376

376:                                              ; preds = %373, %356
  br label %377

377:                                              ; preds = %376, %336
  br label %310

378:                                              ; preds = %310
  %379 = load i32, i32* %16, align 4
  store i32 %379, i32* %6, align 4
  br label %380

380:                                              ; preds = %378, %371, %354, %334, %295, %33
  %381 = load i32, i32* %6, align 4
  ret i32 %381
}

declare dso_local i32 @ff_rtmp_check_alloc_array(%struct.TYPE_5__**, i32*, i64) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

declare dso_local i32 @bytestream_put_be24(i32**, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i64) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @ffurl_write(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
