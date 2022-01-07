; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_39__*, %struct.TYPE_42__* }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_42__ = type { i32, i32, i32, i64, i64, i32, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32, i32, i64*, %struct.TYPE_44__, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i64, %struct.TYPE_41__, i64 }
%struct.TYPE_41__ = type { %struct.TYPE_38__, %struct.TYPE_35__, %struct.TYPE_36__, %struct.TYPE_33__, %struct.TYPE_34__, %struct.TYPE_40__ }
%struct.TYPE_38__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.TYPE_35__ = type { %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.TYPE_36__ = type { i64, %struct.TYPE_43__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_43__*, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_43__* }
%struct.TYPE_34__ = type { %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.TYPE_40__ = type { i32 }

@FLAC__STREAM_METADATA_IS_LAST_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_TYPE_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_LENGTH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] zeroinitializer, align 1
@FLAC__STREAM_METADATA_APPLICATION_ID_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i8* null, align 8
@FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_metadata_(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_44__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_42__*, %struct.TYPE_42__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(i32 %17)
  %19 = call i32 @FLAC__ASSERT(i32 %18)
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_42__*, %struct.TYPE_42__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FLAC__STREAM_METADATA_IS_LAST_LEN, align 4
  %26 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %24, i64* %6, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %633

29:                                               ; preds = %1
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_42__*, %struct.TYPE_42__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FLAC__STREAM_METADATA_TYPE_LEN, align 4
  %40 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %38, i64* %7, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %633

43:                                               ; preds = %29
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_42__*, %struct.TYPE_42__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FLAC__STREAM_METADATA_LENGTH_LEN, align 4
  %50 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %48, i64* %8, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %633

53:                                               ; preds = %43
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 129
  br i1 %55, label %56, label %124

56:                                               ; preds = %53
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @read_metadata_streaminfo_(%struct.TYPE_32__* %57, i32 %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %633

63:                                               ; preds = %56
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @memcmp(i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16)
  %77 = icmp eq i64 0, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %63
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %123, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_42__*, %struct.TYPE_42__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %93, i32 0, i32 9
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 129
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %90
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_42__*, %struct.TYPE_42__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %102, i32 0, i32 6
  %104 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %103, align 8
  %105 = icmp ne i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %99
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i32 0, i32 6
  %111 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %110, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %115, i32 0, i32 11
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i32 %111(%struct.TYPE_32__* %112, %struct.TYPE_44__* %116, i32 %121)
  br label %123

123:                                              ; preds = %106, %99, %90, %83
  br label %610

124:                                              ; preds = %53
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %125, 130
  br i1 %126, label %127, label %183

127:                                              ; preds = %124
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @read_metadata_seektable_(%struct.TYPE_32__* %132, i32 %133, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %633

138:                                              ; preds = %127
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_42__*, %struct.TYPE_42__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_42__*, %struct.TYPE_42__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %182, label %149

149:                                              ; preds = %138
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_42__*, %struct.TYPE_42__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 9
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 130
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %149
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_42__*, %struct.TYPE_42__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %161, i32 0, i32 6
  %163 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %162, align 8
  %164 = icmp ne i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)* %163, null
  br i1 %164, label %165, label %182

165:                                              ; preds = %158
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %168, i32 0, i32 6
  %170 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %169, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %174, i32 0, i32 10
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_42__*, %struct.TYPE_42__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 %170(%struct.TYPE_32__* %171, %struct.TYPE_44__* %175, i32 %180)
  br label %182

182:                                              ; preds = %165, %158, %149, %138
  br label %609

183:                                              ; preds = %124
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i32 0, i32 9
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %9, align 4
  %195 = load i64, i64* %8, align 8
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %10, align 4
  %197 = call i32 @memset(%struct.TYPE_44__* %11, i32 0, i32 120)
  %198 = load i32, i32* %4, align 4
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 0
  store i32 %198, i32* %199, align 8
  %200 = load i64, i64* %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 3
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %7, align 8
  %205 = icmp eq i64 %204, 134
  br i1 %205, label %206, label %257

206:                                              ; preds = %183
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_42__*, %struct.TYPE_42__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_43__*, %struct.TYPE_43__** %214, align 8
  %216 = load i32, i32* @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %217 = sdiv i32 %216, 8
  %218 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %211, %struct.TYPE_43__* %215, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %206
  store i32 0, i32* %2, align 4
  br label %633

221:                                              ; preds = %206
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %224 = sdiv i32 %223, 8
  %225 = icmp ult i32 %222, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 0
  store i8* %227, i8** %231, align 8
  store i32 0, i32* %2, align 4
  br label %633

232:                                              ; preds = %221
  %233 = load i32, i32* @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4
  %234 = sdiv i32 %233, 8
  %235 = load i32, i32* %10, align 4
  %236 = sub i32 %235, %234
  store i32 %236, i32* %10, align 4
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_42__*, %struct.TYPE_42__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %232
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %247, align 8
  %249 = call i64 @has_id_filtered_(%struct.TYPE_32__* %244, %struct.TYPE_43__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %243
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %251, %243, %232
  br label %257

257:                                              ; preds = %256, %183
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_42__*, %struct.TYPE_42__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(i32 %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %260
  store i32 0, i32* %2, align 4
  br label %633

270:                                              ; preds = %260
  br label %608

271:                                              ; preds = %257
  store i32 1, i32* %12, align 4
  %272 = load i64, i64* %7, align 8
  switch i64 %272, label %349 [
    i64 132, label %273
    i64 134, label %284
    i64 128, label %322
    i64 133, label %331
    i64 131, label %339
    i64 129, label %347
    i64 130, label %347
  ]

273:                                              ; preds = %271
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %10, align 4
  %280 = call i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(i32 %278, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %273
  store i32 0, i32* %12, align 4
  br label %283

283:                                              ; preds = %282, %273
  br label %387

284:                                              ; preds = %271
  %285 = load i32, i32* %10, align 4
  %286 = icmp ugt i32 %285, 0
  br i1 %286, label %287, label %317

287:                                              ; preds = %284
  %288 = load i32, i32* %10, align 4
  %289 = call i64 @malloc(i32 %288)
  %290 = inttoptr i64 %289 to %struct.TYPE_43__*
  %291 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 0
  store %struct.TYPE_43__* %290, %struct.TYPE_43__** %293, align 8
  %294 = icmp eq %struct.TYPE_43__* null, %290
  br i1 %294, label %295, label %301

295:                                              ; preds = %287
  %296 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %299, i32 0, i32 0
  store i8* %296, i8** %300, align 8
  store i32 0, i32* %12, align 4
  br label %316

301:                                              ; preds = %287
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_42__*, %struct.TYPE_42__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_43__*, %struct.TYPE_43__** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %306, %struct.TYPE_43__* %310, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %301
  store i32 0, i32* %12, align 4
  br label %315

315:                                              ; preds = %314, %301
  br label %316

316:                                              ; preds = %315, %295
  br label %321

317:                                              ; preds = %284
  %318 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i32 0, i32 0
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %320, align 8
  br label %321

321:                                              ; preds = %317, %316
  br label %387

322:                                              ; preds = %271
  %323 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %324, i32 0, i32 3
  %326 = load i32, i32* %10, align 4
  %327 = call i32 @read_metadata_vorbiscomment_(%struct.TYPE_32__* %323, %struct.TYPE_33__* %325, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %322
  store i32 0, i32* %12, align 4
  br label %330

330:                                              ; preds = %329, %322
  br label %387

331:                                              ; preds = %271
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %333, i32 0, i32 2
  %335 = call i32 @read_metadata_cuesheet_(%struct.TYPE_32__* %332, %struct.TYPE_36__* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %331
  store i32 0, i32* %12, align 4
  br label %338

338:                                              ; preds = %337, %331
  br label %387

339:                                              ; preds = %271
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %341, i32 0, i32 1
  %343 = call i32 @read_metadata_picture_(%struct.TYPE_32__* %340, %struct.TYPE_35__* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %339
  store i32 0, i32* %12, align 4
  br label %346

346:                                              ; preds = %345, %339
  br label %387

347:                                              ; preds = %271, %271
  %348 = call i32 @FLAC__ASSERT(i32 0)
  br label %387

349:                                              ; preds = %271
  %350 = load i32, i32* %10, align 4
  %351 = icmp ugt i32 %350, 0
  br i1 %351, label %352, label %382

352:                                              ; preds = %349
  %353 = load i32, i32* %10, align 4
  %354 = call i64 @malloc(i32 %353)
  %355 = inttoptr i64 %354 to %struct.TYPE_43__*
  %356 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %357, i32 0, i32 0
  store %struct.TYPE_43__* %355, %struct.TYPE_43__** %358, align 8
  %359 = icmp eq %struct.TYPE_43__* null, %355
  br i1 %359, label %360, label %366

360:                                              ; preds = %352
  %361 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_39__*, %struct.TYPE_39__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %364, i32 0, i32 0
  store i8* %361, i8** %365, align 8
  store i32 0, i32* %12, align 4
  br label %381

366:                                              ; preds = %352
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_42__*, %struct.TYPE_42__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %369, i32 0, i32 8
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_43__*, %struct.TYPE_43__** %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %371, %struct.TYPE_43__* %375, i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %366
  store i32 0, i32* %12, align 4
  br label %380

380:                                              ; preds = %379, %366
  br label %381

381:                                              ; preds = %380, %360
  br label %386

382:                                              ; preds = %349
  %383 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 0
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %385, align 8
  br label %386

386:                                              ; preds = %382, %381
  br label %387

387:                                              ; preds = %386, %347, %346, %338, %330, %321, %283
  %388 = load i32, i32* %12, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %417

390:                                              ; preds = %387
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_42__*, %struct.TYPE_42__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %417, label %397

397:                                              ; preds = %390
  %398 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_42__*, %struct.TYPE_42__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %400, i32 0, i32 6
  %402 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %401, align 8
  %403 = icmp ne i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)* %402, null
  br i1 %403, label %404, label %417

404:                                              ; preds = %397
  %405 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_42__*, %struct.TYPE_42__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %407, i32 0, i32 6
  %409 = load i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)*, i32 (%struct.TYPE_32__*, %struct.TYPE_44__*, i32)** %408, align 8
  %410 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %411 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %411, i32 0, i32 1
  %413 = load %struct.TYPE_42__*, %struct.TYPE_42__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 8
  %416 = call i32 %409(%struct.TYPE_32__* %410, %struct.TYPE_44__* %11, i32 %415)
  br label %417

417:                                              ; preds = %404, %397, %390, %387
  %418 = load i64, i64* %7, align 8
  switch i64 %418, label %590 [
    i64 132, label %419
    i64 134, label %420
    i64 128, label %433
    i64 133, label %499
    i64 131, label %551
    i64 129, label %588
    i64 130, label %588
  ]

419:                                              ; preds = %417
  br label %603

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %421, i32 0, i32 4
  %423 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_43__*, %struct.TYPE_43__** %423, align 8
  %425 = icmp ne %struct.TYPE_43__* null, %424
  br i1 %425, label %426, label %432

426:                                              ; preds = %420
  %427 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_43__*, %struct.TYPE_43__** %429, align 8
  %431 = call i32 @free(%struct.TYPE_43__* %430)
  br label %432

432:                                              ; preds = %426, %420
  br label %603

433:                                              ; preds = %417
  %434 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_43__*, %struct.TYPE_43__** %437, align 8
  %439 = icmp ne %struct.TYPE_43__* null, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %433
  %441 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %443, i32 0, i32 0
  %445 = load %struct.TYPE_43__*, %struct.TYPE_43__** %444, align 8
  %446 = call i32 @free(%struct.TYPE_43__* %445)
  br label %447

447:                                              ; preds = %440, %433
  %448 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %448, i32 0, i32 3
  %450 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ugt i64 %451, 0
  br i1 %452, label %453, label %486

453:                                              ; preds = %447
  store i64 0, i64* %5, align 8
  br label %454

454:                                              ; preds = %482, %453
  %455 = load i64, i64* %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = icmp ult i64 %455, %459
  br i1 %460, label %461, label %485

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_43__*, %struct.TYPE_43__** %464, align 8
  %466 = load i64, i64* %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %465, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_43__*, %struct.TYPE_43__** %468, align 8
  %470 = icmp ne %struct.TYPE_43__* null, %469
  br i1 %470, label %471, label %481

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %472, i32 0, i32 3
  %474 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_43__*, %struct.TYPE_43__** %474, align 8
  %476 = load i64, i64* %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %475, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %477, i32 0, i32 1
  %479 = load %struct.TYPE_43__*, %struct.TYPE_43__** %478, align 8
  %480 = call i32 @free(%struct.TYPE_43__* %479)
  br label %481

481:                                              ; preds = %471, %461
  br label %482

482:                                              ; preds = %481
  %483 = load i64, i64* %5, align 8
  %484 = add i64 %483, 1
  store i64 %484, i64* %5, align 8
  br label %454

485:                                              ; preds = %454
  br label %486

486:                                              ; preds = %485, %447
  %487 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %487, i32 0, i32 3
  %489 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_43__*, %struct.TYPE_43__** %489, align 8
  %491 = icmp ne %struct.TYPE_43__* null, %490
  br i1 %491, label %492, label %498

492:                                              ; preds = %486
  %493 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %493, i32 0, i32 3
  %495 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %494, i32 0, i32 1
  %496 = load %struct.TYPE_43__*, %struct.TYPE_43__** %495, align 8
  %497 = call i32 @free(%struct.TYPE_43__* %496)
  br label %498

498:                                              ; preds = %492, %486
  br label %603

499:                                              ; preds = %417
  %500 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ugt i64 %503, 0
  br i1 %504, label %505, label %538

505:                                              ; preds = %499
  store i64 0, i64* %5, align 8
  br label %506

506:                                              ; preds = %534, %505
  %507 = load i64, i64* %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %509 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = icmp ult i64 %507, %511
  br i1 %512, label %513, label %537

513:                                              ; preds = %506
  %514 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_43__*, %struct.TYPE_43__** %516, align 8
  %518 = load i64, i64* %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %517, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %519, i32 0, i32 0
  %521 = load %struct.TYPE_43__*, %struct.TYPE_43__** %520, align 8
  %522 = icmp ne %struct.TYPE_43__* null, %521
  br i1 %522, label %523, label %533

523:                                              ; preds = %513
  %524 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_43__*, %struct.TYPE_43__** %526, align 8
  %528 = load i64, i64* %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %529, i32 0, i32 0
  %531 = load %struct.TYPE_43__*, %struct.TYPE_43__** %530, align 8
  %532 = call i32 @free(%struct.TYPE_43__* %531)
  br label %533

533:                                              ; preds = %523, %513
  br label %534

534:                                              ; preds = %533
  %535 = load i64, i64* %5, align 8
  %536 = add i64 %535, 1
  store i64 %536, i64* %5, align 8
  br label %506

537:                                              ; preds = %506
  br label %538

538:                                              ; preds = %537, %499
  %539 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %540, i32 0, i32 1
  %542 = load %struct.TYPE_43__*, %struct.TYPE_43__** %541, align 8
  %543 = icmp ne %struct.TYPE_43__* null, %542
  br i1 %543, label %544, label %550

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_43__*, %struct.TYPE_43__** %547, align 8
  %549 = call i32 @free(%struct.TYPE_43__* %548)
  br label %550

550:                                              ; preds = %544, %538
  br label %603

551:                                              ; preds = %417
  %552 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %553, i32 0, i32 2
  %555 = load %struct.TYPE_43__*, %struct.TYPE_43__** %554, align 8
  %556 = icmp ne %struct.TYPE_43__* null, %555
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %559, i32 0, i32 2
  %561 = load %struct.TYPE_43__*, %struct.TYPE_43__** %560, align 8
  %562 = call i32 @free(%struct.TYPE_43__* %561)
  br label %563

563:                                              ; preds = %557, %551
  %564 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %565, i32 0, i32 1
  %567 = load %struct.TYPE_43__*, %struct.TYPE_43__** %566, align 8
  %568 = icmp ne %struct.TYPE_43__* null, %567
  br i1 %568, label %569, label %575

569:                                              ; preds = %563
  %570 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %571 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %571, i32 0, i32 1
  %573 = load %struct.TYPE_43__*, %struct.TYPE_43__** %572, align 8
  %574 = call i32 @free(%struct.TYPE_43__* %573)
  br label %575

575:                                              ; preds = %569, %563
  %576 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %577, i32 0, i32 0
  %579 = load %struct.TYPE_43__*, %struct.TYPE_43__** %578, align 8
  %580 = icmp ne %struct.TYPE_43__* null, %579
  br i1 %580, label %581, label %587

581:                                              ; preds = %575
  %582 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %583 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_43__*, %struct.TYPE_43__** %584, align 8
  %586 = call i32 @free(%struct.TYPE_43__* %585)
  br label %587

587:                                              ; preds = %581, %575
  br label %603

588:                                              ; preds = %417, %417
  %589 = call i32 @FLAC__ASSERT(i32 0)
  br label %590

590:                                              ; preds = %417, %588
  %591 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %592, i32 0, i32 0
  %594 = load %struct.TYPE_43__*, %struct.TYPE_43__** %593, align 8
  %595 = icmp ne %struct.TYPE_43__* null, %594
  br i1 %595, label %596, label %602

596:                                              ; preds = %590
  %597 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %597, i32 0, i32 0
  %599 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %598, i32 0, i32 0
  %600 = load %struct.TYPE_43__*, %struct.TYPE_43__** %599, align 8
  %601 = call i32 @free(%struct.TYPE_43__* %600)
  br label %602

602:                                              ; preds = %596, %590
  br label %603

603:                                              ; preds = %602, %587, %550, %498, %432, %419
  %604 = load i32, i32* %12, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %607, label %606

606:                                              ; preds = %603
  store i32 0, i32* %2, align 4
  br label %633

607:                                              ; preds = %603
  br label %608

608:                                              ; preds = %607, %270
  br label %609

609:                                              ; preds = %608, %182
  br label %610

610:                                              ; preds = %609, %123
  %611 = load i32, i32* %4, align 4
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %632

613:                                              ; preds = %610
  %614 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %615 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %615, i32 0, i32 1
  %617 = load %struct.TYPE_42__*, %struct.TYPE_42__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %617, i32 0, i32 4
  %619 = call i32 @FLAC__stream_decoder_get_decode_position(%struct.TYPE_32__* %614, i64* %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %626, label %621

621:                                              ; preds = %613
  %622 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %623 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %622, i32 0, i32 1
  %624 = load %struct.TYPE_42__*, %struct.TYPE_42__** %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %624, i32 0, i32 4
  store i64 0, i64* %625, align 8
  br label %626

626:                                              ; preds = %621, %613
  %627 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %628 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %628, i32 0, i32 0
  %630 = load %struct.TYPE_39__*, %struct.TYPE_39__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %630, i32 0, i32 0
  store i8* %627, i8** %631, align 8
  br label %632

632:                                              ; preds = %626, %610
  store i32 1, i32* %2, align 4
  br label %633

633:                                              ; preds = %632, %606, %269, %226, %220, %137, %62, %52, %42, %28
  %634 = load i32, i32* %2, align 4
  ret i32 %634
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_is_consumed_byte_aligned(i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i64*, i32) #1

declare dso_local i32 @read_metadata_streaminfo_(%struct.TYPE_32__*, i32, i64) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @read_metadata_seektable_(%struct.TYPE_32__*, i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32, %struct.TYPE_43__*, i32) #1

declare dso_local i64 @has_id_filtered_(%struct.TYPE_32__*, %struct.TYPE_43__*) #1

declare dso_local i32 @FLAC__bitreader_skip_byte_block_aligned_no_crc(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @read_metadata_vorbiscomment_(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @read_metadata_cuesheet_(%struct.TYPE_32__*, %struct.TYPE_36__*) #1

declare dso_local i32 @read_metadata_picture_(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @free(%struct.TYPE_43__*) #1

declare dso_local i32 @FLAC__stream_decoder_get_decode_position(%struct.TYPE_32__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
