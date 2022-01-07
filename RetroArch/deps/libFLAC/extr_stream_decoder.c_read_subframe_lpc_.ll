; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_lpc_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_subframe_lpc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_25__*, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i64*, %struct.TYPE_24__, i32*, i32 (i32, i32, i64*, i32, i64, i64)*, i32 (i32, i32, i64*, i32, i64, i64)*, i32 (i32, i32, i64*, i32, i64, i64)*, i32*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i64, i64*, i64*, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i8* }

@FLAC__SUBFRAME_TYPE_LPC = common dso_local global i32 0, align 4
@FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC = common dso_local global i8* null, align 8
@FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_TYPE_LEN = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_subframe_lpc_(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
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
  %27 = load i32, i32* @FLAC__SUBFRAME_TYPE_LPC, align 4
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
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 6
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
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @FLAC__bitreader_read_raw_int32(i32 %61, i64* %13, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %454

66:                                               ; preds = %56
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
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
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN, align 4
  %84 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %82, i32* %14, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %454

87:                                               ; preds = %77
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN, align 4
  %90 = shl i32 1, %89
  %91 = sub i32 %90, 1
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC, align 4
  %96 = call i32 @send_error_to_client_(%struct.TYPE_16__* %94, i32 %95)
  %97 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  store i32 1, i32* %6, align 4
  br label %454

102:                                              ; preds = %87
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN, align 4
  %113 = call i32 @FLAC__bitreader_read_raw_int32(i32 %111, i64* %13, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %454

116:                                              ; preds = %102
  %117 = load i64, i64* %13, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC, align 4
  %122 = call i32 @send_error_to_client_(%struct.TYPE_16__* %120, i32 %121)
  %123 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  store i8* %123, i8** %127, align 8
  store i32 1, i32* %6, align 4
  br label %454

128:                                              ; preds = %116
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %156, %128
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @FLAC__bitreader_read_raw_int32(i32 %141, i64* %13, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %454

148:                                              ; preds = %136
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 %149, i64* %155, align 8
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %15, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %132

159:                                              ; preds = %132
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_TYPE_LEN, align 4
  %166 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %164, i32* %14, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %454

169:                                              ; preds = %159
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %229 [
    i32 129, label %178
    i32 128, label %178
  ]

178:                                              ; preds = %169, %169
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN, align 4
  %185 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %183, i32* %14, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %454

188:                                              ; preds = %178
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = ashr i32 %195, %196
  %198 = load i32, i32* %10, align 4
  %199 = icmp ult i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %188
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC, align 4
  %203 = call i32 @send_error_to_client_(%struct.TYPE_16__* %201, i32 %202)
  %204 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  store i8* %204, i8** %208, align 8
  store i32 1, i32* %6, align 4
  br label %454

209:                                              ; preds = %188
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  store i32 %210, i32* %215, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  store i32* %223, i32** %228, align 8
  br label %238

229:                                              ; preds = %169
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %231 = load i32, i32* @FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM, align 4
  %232 = call i32 @send_error_to_client_(%struct.TYPE_16__* %230, i32 %231)
  %233 = load i8*, i8** @FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  store i8* %233, i8** %237, align 8
  store i32 1, i32* %6, align 4
  br label %454

238:                                              ; preds = %209
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  switch i32 %242, label %279 [
    i32 129, label %243
    i32 128, label %243
  ]

243:                                              ; preds = %238, %238
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 128
  %274 = zext i1 %273 to i32
  %275 = call i32 @read_residual_partitioned_rice_(%struct.TYPE_16__* %244, i32 %245, i32 %251, i32* %259, i32 %268, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %243
  store i32 0, i32* %6, align 4
  br label %454

278:                                              ; preds = %243
  br label %281

279:                                              ; preds = %238
  %280 = call i32 @FLAC__ASSERT(i32 0)
  br label %281

281:                                              ; preds = %279, %278
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %453

284:                                              ; preds = %281
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 4
  %296 = load i64*, i64** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = zext i32 %297 to i64
  %299 = mul i64 8, %298
  %300 = trunc i64 %299 to i32
  %301 = call i32 @memcpy(i64 %293, i64* %296, i32 %300)
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %302, %305
  %307 = load i32, i32* %10, align 4
  %308 = call i32 @FLAC__bitmath_ilog2(i32 %307)
  %309 = add i32 %306, %308
  %310 = icmp ule i32 %309, 32
  br i1 %310, label %311, label %408

311:                                              ; preds = %284
  %312 = load i32, i32* %9, align 4
  %313 = icmp ule i32 %312, 16
  br i1 %313, label %314, label %363

314:                                              ; preds = %311
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp ule i32 %317, 16
  br i1 %318, label %319, label %363

319:                                              ; preds = %314
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 5
  %324 = load i32 (i32, i32, i64*, i32, i64, i64)*, i32 (i32, i32, i64*, i32, i64, i64)** %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sub i32 %340, %341
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load i32, i32* %10, align 4
  %360 = zext i32 %359 to i64
  %361 = add nsw i64 %358, %360
  %362 = call i32 %324(i32 %333, i32 %342, i64* %345, i32 %346, i64 %349, i64 %361)
  br label %407

363:                                              ; preds = %314, %311
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 4
  %368 = load i32 (i32, i32, i64*, i32, i64, i64)*, i32 (i32, i32, i64*, i32, i64, i64)** %367, align 8
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %10, align 4
  %386 = sub i32 %384, %385
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 3
  %389 = load i64*, i64** %388, align 8
  %390 = load i32, i32* %10, align 4
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_25__*, %struct.TYPE_25__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %396, i32 0, i32 0
  %398 = load i64*, i64** %397, align 8
  %399 = load i32, i32* %8, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i64, i64* %398, i64 %400
  %402 = load i64, i64* %401, align 8
  %403 = load i32, i32* %10, align 4
  %404 = zext i32 %403 to i64
  %405 = add nsw i64 %402, %404
  %406 = call i32 %368(i32 %377, i32 %386, i64* %389, i32 %390, i64 %393, i64 %405)
  br label %407

407:                                              ; preds = %363, %319
  br label %452

408:                                              ; preds = %284
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %411, i32 0, i32 3
  %413 = load i32 (i32, i32, i64*, i32, i64, i64)*, i32 (i32, i32, i64*, i32, i64, i64)** %412, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 2
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_25__*, %struct.TYPE_25__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %10, align 4
  %431 = sub i32 %429, %430
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 3
  %434 = load i64*, i64** %433, align 8
  %435 = load i32, i32* %10, align 4
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %441, i32 0, i32 0
  %443 = load i64*, i64** %442, align 8
  %444 = load i32, i32* %8, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds i64, i64* %443, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = load i32, i32* %10, align 4
  %449 = zext i32 %448 to i64
  %450 = add nsw i64 %447, %449
  %451 = call i32 %413(i32 %422, i32 %431, i64* %434, i32 %435, i64 %438, i64 %450)
  br label %452

452:                                              ; preds = %408, %407
  br label %453

453:                                              ; preds = %452, %281
  store i32 1, i32* %6, align 4
  br label %454

454:                                              ; preds = %453, %277, %229, %200, %187, %168, %147, %119, %115, %93, %86, %65
  %455 = load i32, i32* %6, align 4
  ret i32 %455
}

declare dso_local i32 @FLAC__bitreader_read_raw_int32(i32, i64*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i32*, i32) #1

declare dso_local i32 @send_error_to_client_(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @read_residual_partitioned_rice_(%struct.TYPE_16__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i32 @FLAC__bitmath_ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
