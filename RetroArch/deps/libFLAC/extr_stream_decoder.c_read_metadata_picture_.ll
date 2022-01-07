; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_picture_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_metadata_picture_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i8*, i8*, i64, i64, i64, i64, i64, i8*, i64 }

@FLAC__STREAM_METADATA_PICTURE_TYPE_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i8* null, align 8
@FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_COLORS_LEN = common dso_local global i32 0, align 4
@FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_metadata_picture_(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @FLAC__bitreader_is_consumed_byte_aligned(i32 %11)
  %13 = call i32 @FLAC__ASSERT(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_TYPE_LEN, align 4
  %20 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %18, i64* %6, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %213

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 8
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN, align 4
  %33 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %31, i64* %6, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %213

36:                                               ; preds = %23
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @safe_malloc_add_2op_(i64 %37, i32 1)
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = icmp eq i8* null, %39
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  store i32 0, i32* %3, align 4
  br label %213

49:                                               ; preds = %36
  %50 = load i64, i64* %6, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %57, i8* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %213

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN, align 4
  %78 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %76, i64* %6, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %213

81:                                               ; preds = %66
  %82 = load i64, i64* %6, align 8
  %83 = call i64 @safe_malloc_add_2op_(i64 %82, i32 1)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = icmp eq i8* null, %84
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  store i32 0, i32* %3, align 4
  br label %213

94:                                               ; preds = %81
  %95 = load i64, i64* %6, align 8
  %96 = icmp ugt i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %102, i8* %105, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %213

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN, align 4
  %125 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %121, i64* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %213

128:                                              ; preds = %111
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN, align 4
  %137 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %133, i64* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %213

140:                                              ; preds = %128
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN, align 4
  %149 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %145, i64* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %213

152:                                              ; preds = %140
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 5
  %160 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_COLORS_LEN, align 4
  %161 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %157, i64* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %213

164:                                              ; preds = %152
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 6
  %172 = load i32, i32* @FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN, align 4
  %173 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %169, i64* %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %213

176:                                              ; preds = %164
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @safe_malloc_(i64 %179)
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 7
  store i8* %181, i8** %183, align 8
  %184 = icmp eq i8* null, %181
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = load i8*, i8** @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i8* %186, i8** %190, align 8
  store i32 0, i32* %3, align 4
  br label %213

191:                                              ; preds = %176
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %191
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 7
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32 %201, i8* %204, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %213

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %191
  store i32 1, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %210, %185, %175, %163, %151, %139, %127, %109, %88, %80, %64, %43, %35, %22
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_is_consumed_byte_aligned(i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i64*, i32) #1

declare dso_local i64 @safe_malloc_add_2op_(i64, i32) #1

declare dso_local i32 @FLAC__bitreader_read_byte_block_aligned_no_crc(i32, i8*, i64) #1

declare dso_local i64 @safe_malloc_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
