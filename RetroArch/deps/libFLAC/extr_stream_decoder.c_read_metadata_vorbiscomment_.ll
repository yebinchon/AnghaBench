; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_vorbiscomment_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_vorbiscomment_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i8* }

@FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i8* null, align 8
@FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_metadata_vorbiscomment_(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(i32 %13)
  %15 = call i32 @FLAC__ASSERT(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 8
  br i1 %17, label %18, label %344

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 %19, 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4
  %22 = icmp eq i32 %21, 32
  %23 = zext i1 %22 to i32
  %24 = call i32 @FLAC__ASSERT(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = call i32 @FLAC__bitreader_read_uint32_little_endian(i32 %29, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %372

36:                                               ; preds = %18
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %108

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i8* null, i8** %55, align 8
  br label %345

56:                                               ; preds = %42
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @safe_malloc_add_2op_(i32 %67, i32 1)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = icmp eq i8* null, %69
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i8* %75, i8** %79, align 8
  store i32 0, i32* %4, align 4
  br label %372

80:                                               ; preds = %63
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %85, i8* %89, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %372

97:                                               ; preds = %80
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  store i8 0, i8* %107, align 1
  br label %112

108:                                              ; preds = %36
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i8* null, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4
  %114 = icmp eq i32 %113, 32
  %115 = zext i1 %114 to i32
  %116 = call i32 @FLAC__ASSERT(i32 %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call i32 @FLAC__bitreader_read_uint32_little_endian(i32 %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %372

127:                                              ; preds = %112
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 100000
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  store i32 0, i32* %4, align 4
  br label %372

135:                                              ; preds = %127
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %343

140:                                              ; preds = %135
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @safe_malloc_mul_2op_p(i32 %143, i32 16)
  %145 = inttoptr i64 %144 to %struct.TYPE_13__*
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  store %struct.TYPE_13__* %145, %struct.TYPE_13__** %147, align 8
  %148 = icmp eq %struct.TYPE_13__* null, %145
  br i1 %148, label %149, label %157

149:                                              ; preds = %140
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  %152 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  store i32 0, i32* %4, align 4
  br label %372

157:                                              ; preds = %140
  store i64 0, i64* %8, align 8
  br label %158

158:                                              ; preds = %339, %157
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = icmp ult i64 %159, %163
  br i1 %164, label %165, label %342

165:                                              ; preds = %158
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  store i8* null, i8** %177, align 8
  %178 = load i32, i32* @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4
  %179 = icmp eq i32 %178, 32
  %180 = zext i1 %179 to i32
  %181 = call i32 @FLAC__ASSERT(i32 %180)
  %182 = load i32, i32* %7, align 4
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %184, label %189

184:                                              ; preds = %165
  %185 = load i64, i64* %8, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  br label %345

189:                                              ; preds = %165
  %190 = load i32, i32* %7, align 4
  %191 = sub i32 %190, 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = load i64, i64* %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = call i32 @FLAC__bitreader_read_uint32_little_endian(i32 %197, i32* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %192
  %207 = load i64, i64* %8, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  store i32 0, i32* %4, align 4
  br label %372

211:                                              ; preds = %192
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %331

220:                                              ; preds = %211
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load i64, i64* %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ult i32 %221, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %220
  %231 = load i64, i64* %8, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  br label %345

235:                                              ; preds = %220
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = load i64, i64* %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sub i32 %243, %242
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %235
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i64 @safe_malloc_add_2op_(i32 %252, i32 1)
  %254 = inttoptr i64 %253 to i8*
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = load i64, i64* %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  store i8* %254, i8** %260, align 8
  %261 = icmp eq i8* null, %254
  br i1 %261, label %262, label %272

262:                                              ; preds = %245
  %263 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  store i8* %263, i8** %267, align 8
  %268 = load i64, i64* %8, align 8
  %269 = trunc i64 %268 to i32
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  store i32 0, i32* %4, align 4
  br label %372

272:                                              ; preds = %245
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = load i64, i64* %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = load i64, i64* %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @memset(i8* %279, i32 0, i32 %286)
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = load i64, i64* %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = load i64, i64* %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %292, i8* %299, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %272
  %310 = load i64, i64* %8, align 8
  %311 = trunc i64 %310 to i32
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  br label %345

314:                                              ; preds = %272
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = load i64, i64* %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %323, align 8
  %325 = load i64, i64* %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %321, i64 %329
  store i8 0, i8* %330, align 1
  br label %338

331:                                              ; preds = %211
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = load i64, i64* %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 1
  store i8* null, i8** %337, align 8
  br label %338

338:                                              ; preds = %331, %314
  br label %339

339:                                              ; preds = %338
  %340 = load i64, i64* %8, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %8, align 8
  br label %158

342:                                              ; preds = %158
  br label %343

343:                                              ; preds = %342, %135
  br label %344

344:                                              ; preds = %343, %3
  br label %345

345:                                              ; preds = %344, %309, %230, %184, %49
  %346 = load i32, i32* %7, align 4
  %347 = icmp ugt i32 %346, 0
  br i1 %347, label %348, label %371

348:                                              ; preds = %345
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %351, 1
  br i1 %352, label %353, label %360

353:                                              ; preds = %348
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %355, align 8
  %357 = call i32 @free(%struct.TYPE_13__* %356)
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %359, align 8
  br label %360

360:                                              ; preds = %353, %348
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(i32 %365, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %360
  store i32 0, i32* %4, align 4
  br label %372

370:                                              ; preds = %360
  br label %371

371:                                              ; preds = %370, %345
  store i32 1, i32* %4, align 4
  br label %372

372:                                              ; preds = %371, %369, %262, %206, %149, %132, %126, %96, %74, %35
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_is_consumed_byte_aligned(i32) #1

declare dso_local i32 @FLAC__bitreader_read_uint32_little_endian(i32, i32*) #1

declare dso_local i64 @safe_malloc_add_2op_(i32, i32) #1

declare dso_local i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32, i8*, i32) #1

declare dso_local i64 @safe_malloc_mul_2op_p(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
