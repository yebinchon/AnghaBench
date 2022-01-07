; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_decoder.c_mpc_decoder_read_bitstream_sv7.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_decoder.c_mpc_decoder_read_bitstream_sv7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64*, i64*, i32, i32*, i32*, i32**, i32**, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32*, i32* }

@mpc_decoder_read_bitstream_sv7.idx30 = internal constant [27 x i32] [i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 0, i32 1], align 16
@mpc_decoder_read_bitstream_sv7.idx31 = internal constant [27 x i32] [i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@mpc_decoder_read_bitstream_sv7.idx32 = internal constant [27 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@mpc_decoder_read_bitstream_sv7.idx50 = internal constant [25 x i32] [i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 -2, i32 -1, i32 0, i32 1, i32 2], align 16
@mpc_decoder_read_bitstream_sv7.idx51 = internal constant [25 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@mpc_HuffHdr = common dso_local global i32 0, align 4
@mpc_table_HuffSCFI = common dso_local global i32 0, align 4
@mpc_HuffDSCF = common dso_local global i32 0, align 4
@mpc_HuffQ = common dso_local global i32** null, align 8
@Res_bit = common dso_local global i32* null, align 8
@Dc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc_decoder_read_bitstream_sv7(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @mpc_bits_read(i32* %16, i32 4)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %17, i64* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @mpc_bits_read(i32* %22, i32 4)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %34, %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @mpc_bits_read(i32* %47, i32 1)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %34
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %155, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %56, %59
  br i1 %60, label %61, label %158

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @mpc_bits_huff_lut(i32* %62, i32* @mpc_HuffHdr)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %74, %76
  br label %83

78:                                               ; preds = %61
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @mpc_bits_read(i32* %79, i32 4)
  %81 = trunc i64 %80 to i32
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %78, %66
  %84 = phi i64 [ %77, %66 ], [ %82, %78 ]
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @mpc_bits_huff_lut(i32* %91, i32* @mpc_HuffHdr)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 4
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  br label %112

107:                                              ; preds = %83
  %108 = load i32*, i32** %4, align 8
  %109 = call i64 @mpc_bits_read(i32* %108, i32 4)
  %110 = trunc i64 %109 to i32
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %107, %95
  %113 = phi i64 [ %106, %95 ], [ %111, %107 ]
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %112
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %128, %112
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load i32*, i32** %4, align 8
  %144 = call i64 @mpc_bits_read(i32* %143, i32 1)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 %144, i64* %150, align 8
  br label %151

151:                                              ; preds = %142, %137
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %151, %128
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %55

158:                                              ; preds = %55
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %204, %158
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %207

163:                                              ; preds = %159
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %163
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* @mpc_table_HuffSCFI, align 4
  %175 = call i8* @mpc_bits_huff_dec(i32* %173, i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %172, %163
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %183
  %193 = load i32*, i32** %4, align 8
  %194 = load i32, i32* @mpc_table_HuffSCFI, align 4
  %195 = call i8* @mpc_bits_huff_dec(i32* %193, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  br label %203

203:                                              ; preds = %192, %183
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %159

207:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %472, %207
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %475

212:                                              ; preds = %208
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 6
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %8, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %9, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %469, %212
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %434

238:                                              ; preds = %235
  %239 = load i32, i32* %10, align 4
  switch i32 %239, label %408 [
    i32 1, label %240
    i32 3, label %282
    i32 2, label %311
    i32 0, label %353
  ]

240:                                              ; preds = %238
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @mpc_bits_huff_lut(i32* %241, i32* @mpc_HuffDSCF)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 8
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i32*, i32** %8, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %248, %249
  br label %255

251:                                              ; preds = %240
  %252 = load i32*, i32** %4, align 8
  %253 = call i64 @mpc_bits_read(i32* %252, i32 6)
  %254 = trunc i64 %253 to i32
  br label %255

255:                                              ; preds = %251, %245
  %256 = phi i32 [ %250, %245 ], [ %254, %251 ]
  %257 = load i32*, i32** %8, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @mpc_bits_huff_lut(i32* %259, i32* @mpc_HuffDSCF)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp ne i32 %261, 8
  br i1 %262, label %263, label %269

263:                                              ; preds = %255
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %266, %267
  br label %273

269:                                              ; preds = %255
  %270 = load i32*, i32** %4, align 8
  %271 = call i64 @mpc_bits_read(i32* %270, i32 6)
  %272 = trunc i64 %271 to i32
  br label %273

273:                                              ; preds = %269, %263
  %274 = phi i32 [ %268, %263 ], [ %272, %269 ]
  %275 = load i32*, i32** %8, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  store i32 %274, i32* %276, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %8, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  store i32 %279, i32* %281, align 4
  br label %409

282:                                              ; preds = %238
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 @mpc_bits_huff_lut(i32* %283, i32* @mpc_HuffDSCF)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 8
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i32*, i32** %8, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %290, %291
  br label %297

293:                                              ; preds = %282
  %294 = load i32*, i32** %4, align 8
  %295 = call i64 @mpc_bits_read(i32* %294, i32 6)
  %296 = trunc i64 %295 to i32
  br label %297

297:                                              ; preds = %293, %287
  %298 = phi i32 [ %292, %287 ], [ %296, %293 ]
  %299 = load i32*, i32** %8, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 %298, i32* %300, align 4
  %301 = load i32*, i32** %8, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %8, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  store i32 %303, i32* %305, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %8, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  store i32 %308, i32* %310, align 4
  br label %409

311:                                              ; preds = %238
  %312 = load i32*, i32** %4, align 8
  %313 = call i32 @mpc_bits_huff_lut(i32* %312, i32* @mpc_HuffDSCF)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 8
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = load i32*, i32** %8, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %319, %320
  br label %326

322:                                              ; preds = %311
  %323 = load i32*, i32** %4, align 8
  %324 = call i64 @mpc_bits_read(i32* %323, i32 6)
  %325 = trunc i64 %324 to i32
  br label %326

326:                                              ; preds = %322, %316
  %327 = phi i32 [ %321, %316 ], [ %325, %322 ]
  %328 = load i32*, i32** %8, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  store i32 %327, i32* %329, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  store i32 %332, i32* %334, align 4
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 @mpc_bits_huff_lut(i32* %335, i32* @mpc_HuffDSCF)
  store i32 %336, i32* %6, align 4
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, 8
  br i1 %338, label %339, label %345

339:                                              ; preds = %326
  %340 = load i32*, i32** %8, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %6, align 4
  %344 = add nsw i32 %342, %343
  br label %349

345:                                              ; preds = %326
  %346 = load i32*, i32** %4, align 8
  %347 = call i64 @mpc_bits_read(i32* %346, i32 6)
  %348 = trunc i64 %347 to i32
  br label %349

349:                                              ; preds = %345, %339
  %350 = phi i32 [ %344, %339 ], [ %348, %345 ]
  %351 = load i32*, i32** %8, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 2
  store i32 %350, i32* %352, align 4
  br label %409

353:                                              ; preds = %238
  %354 = load i32*, i32** %4, align 8
  %355 = call i32 @mpc_bits_huff_lut(i32* %354, i32* @mpc_HuffDSCF)
  store i32 %355, i32* %6, align 4
  %356 = load i32, i32* %6, align 4
  %357 = icmp ne i32 %356, 8
  br i1 %357, label %358, label %364

358:                                              ; preds = %353
  %359 = load i32*, i32** %8, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %6, align 4
  %363 = add nsw i32 %361, %362
  br label %368

364:                                              ; preds = %353
  %365 = load i32*, i32** %4, align 8
  %366 = call i64 @mpc_bits_read(i32* %365, i32 6)
  %367 = trunc i64 %366 to i32
  br label %368

368:                                              ; preds = %364, %358
  %369 = phi i32 [ %363, %358 ], [ %367, %364 ]
  %370 = load i32*, i32** %8, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  store i32 %369, i32* %371, align 4
  %372 = load i32*, i32** %4, align 8
  %373 = call i32 @mpc_bits_huff_lut(i32* %372, i32* @mpc_HuffDSCF)
  store i32 %373, i32* %6, align 4
  %374 = load i32, i32* %6, align 4
  %375 = icmp ne i32 %374, 8
  br i1 %375, label %376, label %382

376:                                              ; preds = %368
  %377 = load i32*, i32** %8, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %6, align 4
  %381 = add nsw i32 %379, %380
  br label %386

382:                                              ; preds = %368
  %383 = load i32*, i32** %4, align 8
  %384 = call i64 @mpc_bits_read(i32* %383, i32 6)
  %385 = trunc i64 %384 to i32
  br label %386

386:                                              ; preds = %382, %376
  %387 = phi i32 [ %381, %376 ], [ %385, %382 ]
  %388 = load i32*, i32** %8, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  store i32 %387, i32* %389, align 4
  %390 = load i32*, i32** %4, align 8
  %391 = call i32 @mpc_bits_huff_lut(i32* %390, i32* @mpc_HuffDSCF)
  store i32 %391, i32* %6, align 4
  %392 = load i32, i32* %6, align 4
  %393 = icmp ne i32 %392, 8
  br i1 %393, label %394, label %400

394:                                              ; preds = %386
  %395 = load i32*, i32** %8, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %397, %398
  br label %404

400:                                              ; preds = %386
  %401 = load i32*, i32** %4, align 8
  %402 = call i64 @mpc_bits_read(i32* %401, i32 6)
  %403 = trunc i64 %402 to i32
  br label %404

404:                                              ; preds = %400, %394
  %405 = phi i32 [ %399, %394 ], [ %403, %400 ]
  %406 = load i32*, i32** %8, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 2
  store i32 %405, i32* %407, align 4
  br label %409

408:                                              ; preds = %238
  br label %699

409:                                              ; preds = %404, %349, %297, %273
  %410 = load i32*, i32** %8, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  %412 = load i32, i32* %411, align 4
  %413 = icmp sgt i32 %412, 1024
  br i1 %413, label %414, label %417

414:                                              ; preds = %409
  %415 = load i32*, i32** %8, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 0
  store i32 32896, i32* %416, align 4
  br label %417

417:                                              ; preds = %414, %409
  %418 = load i32*, i32** %8, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp sgt i32 %420, 1024
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load i32*, i32** %8, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 1
  store i32 32896, i32* %424, align 4
  br label %425

425:                                              ; preds = %422, %417
  %426 = load i32*, i32** %8, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 2
  %428 = load i32, i32* %427, align 4
  %429 = icmp sgt i32 %428, 1024
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load i32*, i32** %8, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  store i32 32896, i32* %432, align 4
  br label %433

433:                                              ; preds = %430, %425
  br label %434

434:                                              ; preds = %433, %235
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 1
  %437 = load i64*, i64** %436, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i64, i64* %437, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %9, align 4
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 5
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %5, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %10, align 4
  br label %450

450:                                              ; preds = %434
  %451 = load i32*, i32** %8, align 8
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 6
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %5, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = icmp eq i32* %451, %458
  br i1 %459, label %460, label %469

460:                                              ; preds = %450
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 7
  %463 = load i32**, i32*** %462, align 8
  %464 = load i32, i32* %5, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32*, i32** %463, i64 %465
  %467 = load i32*, i32** %466, align 8
  store i32* %467, i32** %8, align 8
  %468 = icmp ne i32* %467, null
  br label %469

469:                                              ; preds = %460, %450
  %470 = phi i1 [ false, %450 ], [ %468, %460 ]
  br i1 %470, label %235, label %471

471:                                              ; preds = %469
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %5, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %5, align 4
  br label %208

475:                                              ; preds = %208
  store i32 0, i32* %5, align 4
  br label %476

476:                                              ; preds = %696, %475
  %477 = load i32, i32* %5, align 4
  %478 = load i32, i32* %7, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %699

480:                                              ; preds = %476
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 8
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %482, align 8
  %484 = load i32, i32* %5, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %486, i32 0, i32 0
  %488 = load i32*, i32** %487, align 8
  store i32* %488, i32** %11, align 8
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 0
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %12, align 4
  br label %497

497:                                              ; preds = %693, %480
  %498 = load i32, i32* %12, align 4
  switch i32 %498, label %662 [
    i32 -2, label %499
    i32 -3, label %499
    i32 -4, label %499
    i32 -5, label %499
    i32 -6, label %499
    i32 -7, label %499
    i32 -8, label %499
    i32 -9, label %499
    i32 -10, label %499
    i32 -11, label %499
    i32 -12, label %499
    i32 -13, label %499
    i32 -14, label %499
    i32 -15, label %499
    i32 -16, label %499
    i32 -17, label %499
    i32 0, label %499
    i32 -1, label %500
    i32 1, label %531
    i32 2, label %575
    i32 3, label %610
    i32 4, label %610
    i32 5, label %610
    i32 6, label %610
    i32 7, label %610
    i32 8, label %635
    i32 9, label %635
    i32 10, label %635
    i32 11, label %635
    i32 12, label %635
    i32 13, label %635
    i32 14, label %635
    i32 15, label %635
    i32 16, label %635
    i32 17, label %635
  ]

499:                                              ; preds = %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497, %497
  br label %663

500:                                              ; preds = %497
  store i32 0, i32* %13, align 4
  br label %501

501:                                              ; preds = %527, %500
  %502 = load i32, i32* %13, align 4
  %503 = icmp slt i32 %502, 36
  br i1 %503, label %504, label %530

504:                                              ; preds = %501
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %506 = call i32 @mpc_random_int(%struct.TYPE_6__* %505)
  store i32 %506, i32* %15, align 4
  %507 = load i32, i32* %15, align 4
  %508 = ashr i32 %507, 24
  %509 = and i32 %508, 255
  %510 = load i32, i32* %15, align 4
  %511 = ashr i32 %510, 16
  %512 = and i32 %511, 255
  %513 = add nsw i32 %509, %512
  %514 = load i32, i32* %15, align 4
  %515 = ashr i32 %514, 8
  %516 = and i32 %515, 255
  %517 = add nsw i32 %513, %516
  %518 = load i32, i32* %15, align 4
  %519 = ashr i32 %518, 0
  %520 = and i32 %519, 255
  %521 = add nsw i32 %517, %520
  %522 = sub nsw i32 %521, 510
  %523 = load i32*, i32** %11, align 8
  %524 = load i32, i32* %13, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %522, i32* %526, align 4
  br label %527

527:                                              ; preds = %504
  %528 = load i32, i32* %13, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %13, align 4
  br label %501

530:                                              ; preds = %501
  br label %663

531:                                              ; preds = %497
  %532 = load i32**, i32*** @mpc_HuffQ, align 8
  %533 = getelementptr inbounds i32*, i32** %532, i64 0
  %534 = load i32*, i32** %533, align 8
  %535 = load i32*, i32** %4, align 8
  %536 = call i64 @mpc_bits_read(i32* %535, i32 1)
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  store i32* %537, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %538

538:                                              ; preds = %571, %531
  %539 = load i32, i32* %13, align 4
  %540 = icmp slt i32 %539, 36
  br i1 %540, label %541, label %574

541:                                              ; preds = %538
  %542 = load i32*, i32** %4, align 8
  %543 = load i32*, i32** %14, align 8
  %544 = call i32 @mpc_bits_huff_lut(i32* %542, i32* %543)
  store i32 %544, i32* %6, align 4
  %545 = load i32, i32* %6, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [27 x i32], [27 x i32]* @mpc_decoder_read_bitstream_sv7.idx30, i64 0, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = load i32*, i32** %11, align 8
  %550 = load i32, i32* %13, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  store i32 %548, i32* %552, align 4
  %553 = load i32, i32* %6, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [27 x i32], [27 x i32]* @mpc_decoder_read_bitstream_sv7.idx31, i64 0, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %11, align 8
  %558 = load i32, i32* %13, align 4
  %559 = add nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  store i32 %556, i32* %561, align 4
  %562 = load i32, i32* %6, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [27 x i32], [27 x i32]* @mpc_decoder_read_bitstream_sv7.idx32, i64 0, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = load i32*, i32** %11, align 8
  %567 = load i32, i32* %13, align 4
  %568 = add nsw i32 %567, 2
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %566, i64 %569
  store i32 %565, i32* %570, align 4
  br label %571

571:                                              ; preds = %541
  %572 = load i32, i32* %13, align 4
  %573 = add nsw i32 %572, 3
  store i32 %573, i32* %13, align 4
  br label %538

574:                                              ; preds = %538
  br label %663

575:                                              ; preds = %497
  %576 = load i32**, i32*** @mpc_HuffQ, align 8
  %577 = getelementptr inbounds i32*, i32** %576, i64 1
  %578 = load i32*, i32** %577, align 8
  %579 = load i32*, i32** %4, align 8
  %580 = call i64 @mpc_bits_read(i32* %579, i32 1)
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  store i32* %581, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %582

582:                                              ; preds = %606, %575
  %583 = load i32, i32* %13, align 4
  %584 = icmp slt i32 %583, 36
  br i1 %584, label %585, label %609

585:                                              ; preds = %582
  %586 = load i32*, i32** %4, align 8
  %587 = load i32*, i32** %14, align 8
  %588 = call i32 @mpc_bits_huff_lut(i32* %586, i32* %587)
  store i32 %588, i32* %6, align 4
  %589 = load i32, i32* %6, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [25 x i32], [25 x i32]* @mpc_decoder_read_bitstream_sv7.idx50, i64 0, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = load i32*, i32** %11, align 8
  %594 = load i32, i32* %13, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  store i32 %592, i32* %596, align 4
  %597 = load i32, i32* %6, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [25 x i32], [25 x i32]* @mpc_decoder_read_bitstream_sv7.idx51, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = load i32*, i32** %11, align 8
  %602 = load i32, i32* %13, align 4
  %603 = add nsw i32 %602, 1
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %601, i64 %604
  store i32 %600, i32* %605, align 4
  br label %606

606:                                              ; preds = %585
  %607 = load i32, i32* %13, align 4
  %608 = add nsw i32 %607, 2
  store i32 %608, i32* %13, align 4
  br label %582

609:                                              ; preds = %582
  br label %663

610:                                              ; preds = %497, %497, %497, %497, %497
  %611 = load i32**, i32*** @mpc_HuffQ, align 8
  %612 = load i32, i32* %12, align 4
  %613 = sub nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32*, i32** %611, i64 %614
  %616 = load i32*, i32** %615, align 8
  %617 = load i32*, i32** %4, align 8
  %618 = call i64 @mpc_bits_read(i32* %617, i32 1)
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  store i32* %619, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %620

620:                                              ; preds = %631, %610
  %621 = load i32, i32* %13, align 4
  %622 = icmp slt i32 %621, 36
  br i1 %622, label %623, label %634

623:                                              ; preds = %620
  %624 = load i32*, i32** %4, align 8
  %625 = load i32*, i32** %14, align 8
  %626 = call i32 @mpc_bits_huff_lut(i32* %624, i32* %625)
  %627 = load i32*, i32** %11, align 8
  %628 = load i32, i32* %13, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i32, i32* %627, i64 %629
  store i32 %626, i32* %630, align 4
  br label %631

631:                                              ; preds = %623
  %632 = load i32, i32* %13, align 4
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* %13, align 4
  br label %620

634:                                              ; preds = %620
  br label %663

635:                                              ; preds = %497, %497, %497, %497, %497, %497, %497, %497, %497, %497
  store i32 0, i32* %13, align 4
  br label %636

636:                                              ; preds = %658, %635
  %637 = load i32, i32* %13, align 4
  %638 = icmp slt i32 %637, 36
  br i1 %638, label %639, label %661

639:                                              ; preds = %636
  %640 = load i32*, i32** %4, align 8
  %641 = load i32*, i32** @Res_bit, align 8
  %642 = load i32, i32* %12, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = call i64 @mpc_bits_read(i32* %640, i32 %645)
  %647 = trunc i64 %646 to i32
  %648 = load i32*, i32** @Dc, align 8
  %649 = load i32, i32* %12, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  %652 = load i32, i32* %651, align 4
  %653 = sub nsw i32 %647, %652
  %654 = load i32*, i32** %11, align 8
  %655 = load i32, i32* %13, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i32, i32* %654, i64 %656
  store i32 %653, i32* %657, align 4
  br label %658

658:                                              ; preds = %639
  %659 = load i32, i32* %13, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %13, align 4
  br label %636

661:                                              ; preds = %636
  br label %663

662:                                              ; preds = %497
  br label %699

663:                                              ; preds = %661, %634, %609, %574, %530, %499
  %664 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %665 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %664, i32 0, i32 1
  %666 = load i64*, i64** %665, align 8
  %667 = load i32, i32* %5, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i64, i64* %666, i64 %668
  %670 = load i64, i64* %669, align 8
  %671 = trunc i64 %670 to i32
  store i32 %671, i32* %12, align 4
  br label %672

672:                                              ; preds = %663
  %673 = load i32*, i32** %11, align 8
  %674 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 8
  %676 = load %struct.TYPE_5__*, %struct.TYPE_5__** %675, align 8
  %677 = load i32, i32* %5, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %676, i64 %678
  %680 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %679, i32 0, i32 0
  %681 = load i32*, i32** %680, align 8
  %682 = icmp eq i32* %673, %681
  br i1 %682, label %683, label %693

683:                                              ; preds = %672
  %684 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %685 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %684, i32 0, i32 8
  %686 = load %struct.TYPE_5__*, %struct.TYPE_5__** %685, align 8
  %687 = load i32, i32* %5, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %686, i64 %688
  %690 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %689, i32 0, i32 1
  %691 = load i32*, i32** %690, align 8
  store i32* %691, i32** %11, align 8
  %692 = icmp ne i32* %691, null
  br label %693

693:                                              ; preds = %683, %672
  %694 = phi i1 [ false, %672 ], [ %692, %683 ]
  br i1 %694, label %497, label %695

695:                                              ; preds = %693
  br label %696

696:                                              ; preds = %695
  %697 = load i32, i32* %5, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %5, align 4
  br label %476

699:                                              ; preds = %408, %662, %476
  ret void
}

declare dso_local i64 @mpc_bits_read(i32*, i32) #1

declare dso_local i32 @mpc_bits_huff_lut(i32*, i32*) #1

declare dso_local i8* @mpc_bits_huff_dec(i32*, i32) #1

declare dso_local i32 @mpc_random_int(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
