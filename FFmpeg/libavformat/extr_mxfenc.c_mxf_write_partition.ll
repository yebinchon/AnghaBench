; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_partition.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32, i64 }

@body_partition_key = common dso_local global i32* null, align 8
@KAG_SIZE = common dso_local global i32 0, align 4
@footer_partition_key = common dso_local global i32* null, align 8
@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@opatom_ul = common dso_local global i32* null, align 8
@op1a_ul = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)* @mxf_write_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_partition(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %12, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @avio_tell(i32* %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %5
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, 6
  %44 = add nsw i32 97, %43
  %45 = add nsw i32 %44, 12
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 15
  %50 = add nsw i32 %45, %49
  store i32 %50, i32* %15, align 4
  br label %61

51:                                               ; preds = %33, %5
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 80, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %56, %51
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, 20
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @klv_fill_size(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** @body_partition_key, align 8
  %77 = call i32 @memcmp(i32* %75, i32* %76, i32 16)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  %86 = call i32 @av_reallocp_array(i32** %81, i32 %85, i32 4)
  store i32 %86, i32* %17, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %6, align 4
  br label %299

92:                                               ; preds = %79
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  store i32 %93, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %74, %71
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @avio_write(i32* %107, i32* %108, i32 16)
  br label %114

110:                                              ; preds = %103
  %111 = load i32*, i32** %13, align 8
  %112 = load i32*, i32** @body_partition_key, align 8
  %113 = call i32 @avio_write(i32* %111, i32* %112, i32 16)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %13, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @DESCRIPTOR_COUNT(i32 %118)
  %120 = mul nsw i64 16, %119
  %121 = add nsw i64 88, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @klv_encode_ber4_length(i32* %115, i32 %122)
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @avio_wb16(i32* %124, i32 1)
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @avio_wb16(i32* %126, i32 3)
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* @KAG_SIZE, align 4
  %130 = call i32 @avio_wb32(i32* %128, i32 %129)
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @avio_wb64(i32* %131, i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %159

136:                                              ; preds = %114
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** @body_partition_key, align 8
  %139 = call i32 @memcmp(i32* %137, i32* %138, i32 16)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i32*, i32** %13, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @avio_wb64(i32* %147, i32 %157)
  br label %189

159:                                              ; preds = %141, %136, %114
  %160 = load i32*, i32** %10, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = load i32*, i32** %10, align 8
  %164 = load i32*, i32** @footer_partition_key, align 8
  %165 = call i32 @memcmp(i32* %163, i32* %164, i32 16)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load i32*, i32** %13, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %176, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @avio_wb64(i32* %173, i32 %183)
  br label %188

185:                                              ; preds = %167, %162, %159
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @avio_wb64(i32* %186, i32 0)
  br label %188

188:                                              ; preds = %185, %172
  br label %189

189:                                              ; preds = %188, %146
  %190 = load i32*, i32** %13, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @avio_wb64(i32* %190, i32 %193)
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @avio_tell(i32* %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = call i32 @avio_wb64(i32* %197, i32 0)
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @avio_wb64(i32* %199, i32 %200)
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %189
  %206 = load i32, i32* %9, align 4
  br label %208

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %206, %205 ], [ 0, %207 ]
  %210 = call i32 @avio_wb32(i32* %202, i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %208
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %213
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %218
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, @ff_mxf_opatom_muxer
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load i32*, i32** %13, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @avio_wb64(i32* %229, i32 %232)
  br label %237

234:                                              ; preds = %223, %218, %213, %208
  %235 = load i32*, i32** %13, align 8
  %236 = call i32 @avio_wb64(i32* %235, i32 0)
  br label %237

237:                                              ; preds = %234, %228
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @avio_wb32(i32* %238, i32 %239)
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, @ff_mxf_opatom_muxer
  br i1 %244, label %245, label %249

245:                                              ; preds = %237
  %246 = load i32*, i32** %13, align 8
  %247 = load i32*, i32** @opatom_ul, align 8
  %248 = call i32 @avio_write(i32* %246, i32* %247, i32 16)
  br label %253

249:                                              ; preds = %237
  %250 = load i32*, i32** %13, align 8
  %251 = load i32*, i32** @op1a_ul, align 8
  %252 = call i32 @avio_write(i32* %250, i32* %251, i32 16)
  br label %253

253:                                              ; preds = %249, %245
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %255 = call i32 @mxf_write_essence_container_refs(%struct.TYPE_9__* %254)
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %292

258:                                              ; preds = %253
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %260 = call i32 @mxf_write_klv_fill(%struct.TYPE_9__* %259)
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @avio_tell(i32* %263)
  store i32 %264, i32* %19, align 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %266 = call i32 @mxf_write_primer_pack(%struct.TYPE_9__* %265)
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %268 = call i32 @mxf_write_klv_fill(%struct.TYPE_9__* %267)
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %270 = call i32 @mxf_write_header_metadata_sets(%struct.TYPE_9__* %269)
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @avio_tell(i32* %273)
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %19, align 4
  %277 = sub i32 %275, %276
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @klv_fill_size(i32 %278)
  %280 = add i32 %277, %279
  store i32 %280, i32* %20, align 4
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @SEEK_SET, align 4
  %284 = call i32 @avio_seek(i32* %281, i32 %282, i32 %283)
  %285 = load i32*, i32** %13, align 8
  %286 = load i32, i32* %20, align 4
  %287 = call i32 @avio_wb64(i32* %285, i32 %286)
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %18, align 4
  %290 = load i32, i32* @SEEK_SET, align 4
  %291 = call i32 @avio_seek(i32* %288, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %258, %253
  %293 = load i32*, i32** %10, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i32*, i32** %13, align 8
  %297 = call i32 @avio_flush(i32* %296)
  br label %298

298:                                              ; preds = %295, %292
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %298, %88
  %300 = load i32, i32* %6, align 4
  ret i32 %300
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @klv_fill_size(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @av_reallocp_array(i32**, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @klv_encode_ber4_length(i32*, i32) #1

declare dso_local i64 @DESCRIPTOR_COUNT(i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @mxf_write_essence_container_refs(%struct.TYPE_9__*) #1

declare dso_local i32 @mxf_write_klv_fill(%struct.TYPE_9__*) #1

declare dso_local i32 @mxf_write_primer_pack(%struct.TYPE_9__*) #1

declare dso_local i32 @mxf_write_header_metadata_sets(%struct.TYPE_9__*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
