; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_fixed_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_fixed_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_25__*, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i64*, %struct.TYPE_24__, i32*, i32*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i8* }

@FLAC__SUBFRAME_TYPE_FIXED = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_TYPE_LEN = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC = common dso_local global i8* null, align 8
@FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_subframe_fixed_(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %12, align 8
  %27 = load i32, i32* @FLAC__SUBFRAME_TYPE_FIXED, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  store i32 %27, i32* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %74, %5
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @FLAC__bitreader_read_raw_int32(i32 %61, i32* %13, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %253

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_TYPE_LEN, align 4
  %84 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %82, i32* %14, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %253

87:                                               ; preds = %77
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %147 [
    i32 129, label %96
    i32 128, label %96
  ]

96:                                               ; preds = %87, %87
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN, align 4
  %103 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %101, i32* %14, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %253

106:                                              ; preds = %96
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = ashr i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %106
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC, align 4
  %121 = call i32 @send_error_to_client_(%struct.TYPE_16__* %119, i32 %120)
  %122 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  store i32 1, i32* %6, align 4
  br label %253

127:                                              ; preds = %106
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store i32 %128, i32* %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  store i32* %141, i32** %146, align 8
  br label %156

147:                                              ; preds = %87
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM, align 4
  %150 = call i32 @send_error_to_client_(%struct.TYPE_16__* %148, i32 %149)
  %151 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  store i32 1, i32* %6, align 4
  br label %253

156:                                              ; preds = %127
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %197 [
    i32 129, label %161
    i32 128, label %161
  ]

161:                                              ; preds = %156, %156
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 128
  %192 = zext i1 %191 to i32
  %193 = call i32 @read_residual_partitioned_rice_(%struct.TYPE_16__* %162, i32 %163, i32 %169, i32* %177, i32 %186, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %161
  store i32 0, i32* %6, align 4
  br label %253

196:                                              ; preds = %161
  br label %199

197:                                              ; preds = %156
  %198 = call i32 @FLAC__ASSERT(i32 0)
  br label %199

199:                                              ; preds = %197, %196
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %252

202:                                              ; preds = %199
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = zext i32 %215 to i64
  %217 = mul i64 4, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memcpy(i64 %211, i32* %214, i32 %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sub i32 %235, %236
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = zext i32 %248 to i64
  %250 = add nsw i64 %247, %249
  %251 = call i32 @FLAC__fixed_restore_signal(i32 %228, i32 %237, i32 %238, i64 %250)
  br label %252

252:                                              ; preds = %202, %199
  store i32 1, i32* %6, align 4
  br label %253

253:                                              ; preds = %252, %195, %147, %118, %105, %86, %65
  %254 = load i32, i32* %6, align 4
  ret i32 %254
}

declare dso_local i32 @FLAC__bitreader_read_raw_int32(i32, i32*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i32*, i32) #1

declare dso_local i32 @send_error_to_client_(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @read_residual_partitioned_rice_(%struct.TYPE_16__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @FLAC__fixed_restore_signal(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
