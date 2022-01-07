; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ulti.c_ulti_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ulti.c_ulti_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"warning: modifier must be 0 or 1, got %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"warning: unknown escape 0x%02X\0A\00", align 1
@block_coords = common dso_local global i32* null, align 8
@angle_by_index = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Insufficient data\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, %struct.TYPE_9__*)* @ulti_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulti_decode_frame(%struct.TYPE_10__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [4 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [16 x i32], align 16
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ff_reget_buffer(%struct.TYPE_10__* %44, i32 %47, i32 0)
  store i32 %48, i32* %21, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %4
  %51 = load i32, i32* %21, align 4
  store i32 %51, i32* %5, align 4
  br label %533

52:                                               ; preds = %4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @bytestream2_init(i32* %54, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %515, %52
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %516

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %62
  br label %516

75:                                               ; preds = %68
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = call i32 @bytestream2_get_bytes_left(i32* %77)
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %528

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = call i32 @bytestream2_get_byteu(i32* %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = and i32 %85, 248
  %87 = icmp eq i32 %86, 112
  br i1 %87, label %88, label %150

88:                                               ; preds = %81
  %89 = load i32, i32* %24, align 4
  switch i32 %89, label %144 [
    i32 112, label %90
    i32 113, label %102
    i32 114, label %103
    i32 115, label %108
    i32 116, label %109
  ]

90:                                               ; preds = %88
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = call i32 @bytestream2_get_byte(i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = load i32, i32* @AV_LOG_INFO, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %97, i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %90
  br label %149

102:                                              ; preds = %88
  store i32 1, i32* %14, align 4
  br label %149

103:                                              ; preds = %88
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %15, align 4
  br label %149

108:                                              ; preds = %88
  store i32 1, i32* %17, align 4
  br label %149

109:                                              ; preds = %88
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = call i32 @bytestream2_get_byte(i32* %111)
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %22, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %149

121:                                              ; preds = %109
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %22, align 4
  %126 = mul nsw i32 %125, 8
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %135, %121
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 8
  store i32 %142, i32* %19, align 4
  br label %129

143:                                              ; preds = %129
  br label %149

144:                                              ; preds = %88
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = load i32, i32* @AV_LOG_INFO, align 4
  %147 = load i32, i32* %24, align 4
  %148 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %145, i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %143, %120, %108, %103, %102, %101
  br label %515

150:                                              ; preds = %81
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %150
  store i32 0, i32* %14, align 4
  store i32 1, i32* %26, align 4
  store i32 0, i32* %31, align 4
  br label %165

157:                                              ; preds = %153
  store i32 0, i32* %26, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = call i32 @bytestream2_get_byte(i32* %162)
  store i32 %163, i32* %31, align 4
  br label %164

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %164, %156
  store i32 0, i32* %20, align 4
  br label %166

166:                                              ; preds = %498, %165
  %167 = load i32, i32* %20, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %501

169:                                              ; preds = %166
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %20, align 4
  %172 = mul nsw i32 %171, 2
  %173 = sub nsw i32 6, %172
  %174 = ashr i32 %170, %173
  %175 = and i32 %174, 3
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %25, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %169
  br label %498

179:                                              ; preds = %169
  %180 = load i32, i32* %26, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = call i32 @bytestream2_get_byte(i32* %184)
  store i32 %185, i32* %31, align 4
  br label %186

186:                                              ; preds = %182, %179
  %187 = load i32, i32* %18, align 4
  %188 = load i32*, i32** @block_coords, align 8
  %189 = load i32, i32* %20, align 4
  %190 = mul nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %187, %193
  store i32 %194, i32* %29, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32*, i32** @block_coords, align 8
  %197 = load i32, i32* %20, align 4
  %198 = mul nsw i32 %197, 2
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %195, %202
  store i32 %203, i32* %30, align 4
  %204 = load i32, i32* %25, align 4
  switch i32 %204, label %484 [
    i32 1, label %205
    i32 2, label %246
    i32 3, label %315
  ]

205:                                              ; preds = %186
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  %208 = call i32 @bytestream2_get_byte(i32* %207)
  store i32 %208, i32* %23, align 4
  %209 = load i32*, i32** @angle_by_index, align 8
  %210 = load i32, i32* %23, align 4
  %211 = ashr i32 %210, 6
  %212 = and i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %27, align 4
  %216 = load i32, i32* %23, align 4
  %217 = and i32 %216, 63
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %217, i32* %218, align 16
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %220 = load i32, i32* %219, align 16
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* %27, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %205
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %226 = load i32, i32* %225, align 16
  %227 = add nsw i32 %226, 1
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 %227, i32* %228, align 8
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  %230 = load i32, i32* %229, align 8
  %231 = icmp sgt i32 %230, 63
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 63, i32* %233, align 8
  br label %234

234:                                              ; preds = %232, %224
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 %236, i32* %237, align 4
  br label %245

238:                                              ; preds = %205
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %240 = load i32, i32* %239, align 16
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 %240, i32* %241, align 8
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %243 = load i32, i32* %242, align 16
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %238, %234
  br label %484

246:                                              ; preds = %186
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %246
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 5
  %252 = call i32 @bytestream2_get_be24(i32* %251)
  store i32 %252, i32* %23, align 4
  %253 = load i32, i32* %23, align 4
  %254 = ashr i32 %253, 18
  %255 = and i32 %254, 63
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %255, i32* %256, align 16
  %257 = load i32, i32* %23, align 4
  %258 = ashr i32 %257, 12
  %259 = and i32 %258, 63
  %260 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* %23, align 4
  %262 = ashr i32 %261, 6
  %263 = and i32 %262, 63
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 %263, i32* %264, align 8
  %265 = load i32, i32* %23, align 4
  %266 = and i32 %265, 63
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 %266, i32* %267, align 4
  store i32 16, i32* %27, align 4
  br label %314

268:                                              ; preds = %246
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 5
  %271 = call i32 @bytestream2_get_be16(i32* %270)
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %23, align 4
  %273 = ashr i32 %272, 12
  %274 = and i32 %273, 15
  store i32 %274, i32* %27, align 4
  %275 = load i32, i32* %23, align 4
  %276 = and i32 %275, 4095
  store i32 %276, i32* %23, align 4
  %277 = load i32, i32* %23, align 4
  %278 = shl i32 %277, 2
  store i32 %278, i32* %23, align 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 3
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %285, i32* %286, align 16
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %23, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 %294, i32* %295, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %23, align 4
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 %303, i32* %304, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %23, align 4
  %309 = add nsw i32 %308, 3
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 %312, i32* %313, align 4
  br label %314

314:                                              ; preds = %268, %249
  br label %484

315:                                              ; preds = %186
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %405

318:                                              ; preds = %315
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 5
  %321 = call i32 @bytestream2_get_bytes_left(i32* %320)
  %322 = icmp slt i32 %321, 12
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  br label %528

324:                                              ; preds = %318
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 5
  %327 = call i32 @bytestream2_get_be24u(i32* %326)
  store i32 %327, i32* %23, align 4
  %328 = load i32, i32* %23, align 4
  %329 = ashr i32 %328, 18
  %330 = and i32 %329, 63
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 0
  store i32 %330, i32* %331, align 16
  %332 = load i32, i32* %23, align 4
  %333 = ashr i32 %332, 12
  %334 = and i32 %333, 63
  %335 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 1
  store i32 %334, i32* %335, align 4
  %336 = load i32, i32* %23, align 4
  %337 = ashr i32 %336, 6
  %338 = and i32 %337, 63
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 2
  store i32 %338, i32* %339, align 8
  %340 = load i32, i32* %23, align 4
  %341 = and i32 %340, 63
  %342 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 3
  store i32 %341, i32* %342, align 4
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 5
  %345 = call i32 @bytestream2_get_be24u(i32* %344)
  store i32 %345, i32* %23, align 4
  %346 = load i32, i32* %23, align 4
  %347 = ashr i32 %346, 18
  %348 = and i32 %347, 63
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 4
  store i32 %348, i32* %349, align 16
  %350 = load i32, i32* %23, align 4
  %351 = ashr i32 %350, 12
  %352 = and i32 %351, 63
  %353 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 5
  store i32 %352, i32* %353, align 4
  %354 = load i32, i32* %23, align 4
  %355 = ashr i32 %354, 6
  %356 = and i32 %355, 63
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 6
  store i32 %356, i32* %357, align 8
  %358 = load i32, i32* %23, align 4
  %359 = and i32 %358, 63
  %360 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 7
  store i32 %359, i32* %360, align 4
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 5
  %363 = call i32 @bytestream2_get_be24u(i32* %362)
  store i32 %363, i32* %23, align 4
  %364 = load i32, i32* %23, align 4
  %365 = ashr i32 %364, 18
  %366 = and i32 %365, 63
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 8
  store i32 %366, i32* %367, align 16
  %368 = load i32, i32* %23, align 4
  %369 = ashr i32 %368, 12
  %370 = and i32 %369, 63
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 9
  store i32 %370, i32* %371, align 4
  %372 = load i32, i32* %23, align 4
  %373 = ashr i32 %372, 6
  %374 = and i32 %373, 63
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 10
  store i32 %374, i32* %375, align 8
  %376 = load i32, i32* %23, align 4
  %377 = and i32 %376, 63
  %378 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 11
  store i32 %377, i32* %378, align 4
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 5
  %381 = call i32 @bytestream2_get_be24u(i32* %380)
  store i32 %381, i32* %23, align 4
  %382 = load i32, i32* %23, align 4
  %383 = ashr i32 %382, 18
  %384 = and i32 %383, 63
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 12
  store i32 %384, i32* %385, align 16
  %386 = load i32, i32* %23, align 4
  %387 = ashr i32 %386, 12
  %388 = and i32 %387, 63
  %389 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 13
  store i32 %388, i32* %389, align 4
  %390 = load i32, i32* %23, align 4
  %391 = ashr i32 %390, 6
  %392 = and i32 %391, 63
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 14
  store i32 %392, i32* %393, align 8
  %394 = load i32, i32* %23, align 4
  %395 = and i32 %394, 63
  %396 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 15
  store i32 %395, i32* %396, align 4
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %29, align 4
  %401 = load i32, i32* %30, align 4
  %402 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 0
  %403 = load i32, i32* %31, align 4
  %404 = call i32 @ulti_convert_yuv(i32 %399, i32 %400, i32 %401, i32* %402, i32 %403)
  br label %483

405:                                              ; preds = %315
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 5
  %408 = call i32 @bytestream2_get_bytes_left(i32* %407)
  %409 = icmp slt i32 %408, 4
  br i1 %409, label %410, label %411

410:                                              ; preds = %405
  br label %528

411:                                              ; preds = %405
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 5
  %414 = call i32 @bytestream2_get_byteu(i32* %413)
  store i32 %414, i32* %23, align 4
  %415 = load i32, i32* %23, align 4
  %416 = and i32 %415, 128
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %454

418:                                              ; preds = %411
  %419 = load i32, i32* %23, align 4
  %420 = ashr i32 %419, 4
  %421 = and i32 %420, 7
  store i32 %421, i32* %27, align 4
  %422 = load i32, i32* %23, align 4
  %423 = shl i32 %422, 8
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 5
  %426 = call i32 @bytestream2_get_byteu(i32* %425)
  %427 = add nsw i32 %423, %426
  store i32 %427, i32* %23, align 4
  %428 = load i32, i32* %23, align 4
  %429 = ashr i32 %428, 6
  %430 = and i32 %429, 63
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %430, i32* %431, align 16
  %432 = load i32, i32* %23, align 4
  %433 = and i32 %432, 63
  %434 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 %433, i32* %434, align 4
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 5
  %437 = call i32 @bytestream2_get_byteu(i32* %436)
  %438 = and i32 %437, 63
  %439 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  store i32 %438, i32* %439, align 8
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 5
  %442 = call i32 @bytestream2_get_byteu(i32* %441)
  %443 = and i32 %442, 63
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 3
  store i32 %443, i32* %444, align 4
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %29, align 4
  %449 = load i32, i32* %30, align 4
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %451 = load i32, i32* %31, align 4
  %452 = load i32, i32* %27, align 4
  %453 = call i32 @ulti_grad(i32 %447, i32 %448, i32 %449, i32* %450, i32 %451, i32 %452)
  br label %482

454:                                              ; preds = %411
  %455 = load i32, i32* %23, align 4
  store i32 %455, i32* %33, align 4
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 5
  %458 = call i32 @bytestream2_get_byteu(i32* %457)
  store i32 %458, i32* %34, align 4
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 5
  %461 = call i32 @bytestream2_get_byteu(i32* %460)
  %462 = and i32 %461, 63
  %463 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %462, i32* %463, align 16
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 5
  %466 = call i32 @bytestream2_get_byteu(i32* %465)
  %467 = and i32 %466, 63
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  store i32 %467, i32* %468, align 4
  %469 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* %29, align 4
  %473 = load i32, i32* %30, align 4
  %474 = load i32, i32* %33, align 4
  %475 = load i32, i32* %34, align 4
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %477 = load i32, i32* %476, align 16
  %478 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 1
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* %31, align 4
  %481 = call i32 @ulti_pattern(i32 %471, i32 %472, i32 %473, i32 %474, i32 %475, i32 %477, i32 %479, i32 %480)
  br label %482

482:                                              ; preds = %454, %418
  br label %483

483:                                              ; preds = %482, %324
  br label %484

484:                                              ; preds = %186, %483, %314, %245
  %485 = load i32, i32* %25, align 4
  %486 = icmp ne i32 %485, 3
  br i1 %486, label %487, label %497

487:                                              ; preds = %484
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* %29, align 4
  %492 = load i32, i32* %30, align 4
  %493 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %494 = load i32, i32* %31, align 4
  %495 = load i32, i32* %27, align 4
  %496 = call i32 @ulti_grad(i32 %490, i32 %491, i32 %492, i32* %493, i32 %494, i32 %495)
  br label %497

497:                                              ; preds = %487, %484
  br label %498

498:                                              ; preds = %497, %178
  %499 = load i32, i32* %20, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %20, align 4
  br label %166

501:                                              ; preds = %166
  %502 = load i32, i32* %16, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %16, align 4
  %504 = load i32, i32* %18, align 4
  %505 = add nsw i32 %504, 8
  store i32 %505, i32* %18, align 4
  %506 = load i32, i32* %18, align 4
  %507 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = icmp sge i32 %506, %509
  br i1 %510, label %511, label %514

511:                                              ; preds = %501
  store i32 0, i32* %18, align 4
  %512 = load i32, i32* %19, align 4
  %513 = add nsw i32 %512, 8
  store i32 %513, i32* %19, align 4
  br label %514

514:                                              ; preds = %511, %501
  br label %515

515:                                              ; preds = %514, %149
  br label %58

516:                                              ; preds = %74, %58
  %517 = load i32*, i32** %8, align 8
  store i32 1, i32* %517, align 4
  %518 = load i8*, i8** %7, align 8
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 4
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @av_frame_ref(i8* %518, i32 %521)
  store i32 %522, i32* %21, align 4
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %516
  %525 = load i32, i32* %21, align 4
  store i32 %525, i32* %5, align 4
  br label %533

526:                                              ; preds = %516
  %527 = load i32, i32* %11, align 4
  store i32 %527, i32* %5, align 4
  br label %533

528:                                              ; preds = %410, %323, %80
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %530 = load i32, i32* @AV_LOG_ERROR, align 4
  %531 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %529, i32 %530, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %532 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %532, i32* %5, align 4
  br label %533

533:                                              ; preds = %528, %526, %524, %50
  %534 = load i32, i32* %5, align 4
  ret i32 %534
}

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_be24u(i32*) #1

declare dso_local i32 @ulti_convert_yuv(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ulti_grad(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ulti_pattern(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
