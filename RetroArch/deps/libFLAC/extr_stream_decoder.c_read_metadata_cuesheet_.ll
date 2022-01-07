; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_cuesheet_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_cuesheet_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_13__*, i64, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32 }

@FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i8* null, align 8
@FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_metadata_cuesheet_(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(i32 %15)
  %17 = call i32 @FLAC__ASSERT(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call i32 @memset(%struct.TYPE_14__* %18, i32 0, i32 40)
  %20 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN, align 4
  %21 = srem i32 %20, 8
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @FLAC__ASSERT(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  %34 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN, align 4
  %35 = sdiv i32 %34, 8
  %36 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %29, i8** %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %298

39:                                               ; preds = %2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN, align 4
  %48 = call i32 @FLAC__bitreader_read_raw_uint64(i32 %44, i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %298

51:                                               ; preds = %39
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4
  %58 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %56, i64* %8, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %298

61:                                               ; preds = %51
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4
  %74 = call i32 @FLAC__bitreader_skip_bits_no_crc(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %298

77:                                               ; preds = %61
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4
  %84 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %82, i64* %8, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %298

87:                                               ; preds = %77
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %297

95:                                               ; preds = %87
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @safe_calloc_(i64 %98, i32 56)
  %100 = inttoptr i64 %99 to %struct.TYPE_12__*
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %102, align 8
  %103 = icmp eq %struct.TYPE_12__* null, %100
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  store i32 0, i32* %3, align 4
  br label %298

110:                                              ; preds = %95
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %293, %110
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %296

117:                                              ; preds = %111
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %121
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %9, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 6
  %130 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4
  %131 = call i32 @FLAC__bitreader_read_raw_uint64(i32 %127, i32* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %298

134:                                              ; preds = %117
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4
  %141 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %139, i64* %8, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %298

144:                                              ; preds = %134
  %145 = load i64, i64* %8, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %150 = srem i32 %149, 8
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @FLAC__ASSERT(i32 %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8**
  %163 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4
  %164 = sdiv i32 %163, 8
  %165 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %158, i8** %162, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %298

168:                                              ; preds = %144
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4
  %175 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %173, i64* %8, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %298

178:                                              ; preds = %168
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4
  %188 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %186, i64* %8, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %298

191:                                              ; preds = %178
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4
  %201 = call i32 @FLAC__bitreader_skip_bits_no_crc(i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %298

204:                                              ; preds = %191
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4
  %211 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %209, i64* %8, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %298

214:                                              ; preds = %204
  %215 = load i64, i64* %8, align 8
  %216 = inttoptr i64 %215 to i8*
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %292

224:                                              ; preds = %214
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @safe_calloc_(i64 %227, i32 16)
  %229 = inttoptr i64 %228 to %struct.TYPE_13__*
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  store %struct.TYPE_13__* %229, %struct.TYPE_13__** %231, align 8
  %232 = icmp eq %struct.TYPE_13__* null, %229
  br i1 %232, label %233, label %239

233:                                              ; preds = %224
  %234 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i8* %234, i8** %238, align 8
  store i32 0, i32* %3, align 4
  br label %298

239:                                              ; preds = %224
  store i64 0, i64* %7, align 8
  br label %240

240:                                              ; preds = %288, %239
  %241 = load i64, i64* %7, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ult i64 %241, %244
  br i1 %245, label %246, label %291

246:                                              ; preds = %240
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = load i64, i64* %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i64 %250
  store %struct.TYPE_13__* %251, %struct.TYPE_13__** %10, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4
  %260 = call i32 @FLAC__bitreader_read_raw_uint64(i32 %256, i32* %258, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %246
  store i32 0, i32* %3, align 4
  br label %298

263:                                              ; preds = %246
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4
  %270 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %268, i64* %8, i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %263
  store i32 0, i32* %3, align 4
  br label %298

273:                                              ; preds = %263
  %274 = load i64, i64* %8, align 8
  %275 = inttoptr i64 %274 to i8*
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  store i8* %275, i8** %277, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4
  %284 = call i32 @FLAC__bitreader_skip_bits_no_crc(i32 %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %273
  store i32 0, i32* %3, align 4
  br label %298

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287
  %289 = load i64, i64* %7, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %7, align 8
  br label %240

291:                                              ; preds = %240
  br label %292

292:                                              ; preds = %291, %214
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %6, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %6, align 8
  br label %111

296:                                              ; preds = %111
  br label %297

297:                                              ; preds = %296, %87
  store i32 1, i32* %3, align 4
  br label %298

298:                                              ; preds = %297, %286, %272, %262, %233, %213, %203, %190, %177, %167, %143, %133, %104, %86, %76, %60, %50, %38
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_is_consumed_byte_aligned(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32, i8**, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint64(i32, i32*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i64*, i32) #1

declare dso_local i32 @FLAC__bitreader_skip_bits_no_crc(i32, i32) #1

declare dso_local i64 @safe_calloc_(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
