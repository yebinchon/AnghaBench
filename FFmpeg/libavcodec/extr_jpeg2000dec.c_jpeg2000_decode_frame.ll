; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_jpeg2000_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_jpeg2000_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_18__, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32*, i32)*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@JP2_SIG_TYPE = common dso_local global i32 0, align 4
@JP2_SIG_VALUE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not find Jpeg2000 codestream atom.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@JPEG2000_SOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"SOC marker not present\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@jpeg2000_decode_tile = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i8*, i32*, %struct.TYPE_21__*)* @jpeg2000_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg2000_decode_frame(%struct.TYPE_23__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %12, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bytestream2_init(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(i32 %37, i32 -1, i32 4)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = call i32 @bytestream2_get_bytes_left(i32* %40)
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %13, align 4
  br label %195

45:                                               ; preds = %4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = call i32 @bytestream2_get_bytes_left(i32* %47)
  %49 = icmp sge i32 %48, 12
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = call i32 @bytestream2_get_be32u(i32* %52)
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  %58 = call i32 @bytestream2_get_be32u(i32* %57)
  %59 = load i32, i32* @JP2_SIG_TYPE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 3
  %64 = call i32 @bytestream2_get_be32u(i32* %63)
  %65 = load i32, i32* @JP2_SIG_VALUE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %69 = call i32 @jp2_find_codestream(%struct.TYPE_20__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 @av_log(%struct.TYPE_23__* %72, i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %13, align 4
  br label %195

76:                                               ; preds = %67
  br label %82

77:                                               ; preds = %61, %55, %50, %45
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i32 @bytestream2_seek(i32* %79, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %96, %82
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 3
  %86 = call i32 @bytestream2_get_bytes_left(i32* %85)
  %87 = icmp sge i32 %86, 3
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  %91 = call i64 @bytestream2_peek_be16(i32* %90)
  %92 = load i64, i64* @JPEG2000_SOC, align 8
  %93 = icmp ne i64 %91, %92
  br label %94

94:                                               ; preds = %88, %83
  %95 = phi i1 [ false, %83 ], [ %93, %88 ]
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = call i32 @bytestream2_skip(i32* %98, i32 1)
  br label %83

100:                                              ; preds = %94
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  %103 = call i64 @bytestream2_get_be16u(i32* %102)
  %104 = load i64, i64* @JPEG2000_SOC, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 @av_log(%struct.TYPE_23__* %107, i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %13, align 4
  br label %195

111:                                              ; preds = %100
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = call i32 @jpeg2000_read_main_headers(%struct.TYPE_20__* %112)
  store i32 %113, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %195

116:                                              ; preds = %111
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %118 = call i32 @ff_thread_get_buffer(%struct.TYPE_23__* %117, %struct.TYPE_19__* %11, i32 0)
  store i32 %118, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %195

121:                                              ; preds = %116
  %122 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %128 = call i32 @jpeg2000_read_bitstream_packets(%struct.TYPE_20__* %127)
  store i32 %128, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %195

131:                                              ; preds = %121
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 2
  %134 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32*, i32)** %133, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = load i32, i32* @jpeg2000_decode_tile, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %140, %143
  %145 = call i32 %134(%struct.TYPE_23__* %135, i32 %136, %struct.TYPE_22__* %137, i32* null, i32 %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %147 = call i32 @jpeg2000_dec_cleanup(%struct.TYPE_20__* %146)
  %148 = load i32*, i32** %8, align 8
  store i32 1, i32* %148, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %131
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i32 %161, i32 %164, i32 1024)
  br label %166

166:                                              ; preds = %156, %131
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %166
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 4
  %183 = bitcast %struct.TYPE_18__* %180 to i8*
  %184 = bitcast %struct.TYPE_18__* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 16, i1 false)
  br label %185

185:                                              ; preds = %178, %172, %166
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = call i32 @bytestream2_tell(i32* %193)
  store i32 %194, i32* %5, align 4
  br label %199

195:                                              ; preds = %130, %120, %115, %106, %71, %43
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %197 = call i32 @jpeg2000_dec_cleanup(%struct.TYPE_20__* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %185
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_be32u(i32*) #1

declare dso_local i32 @jp2_find_codestream(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i64 @bytestream2_peek_be16(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i64 @bytestream2_get_be16u(i32*) #1

declare dso_local i32 @jpeg2000_read_main_headers(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_23__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @jpeg2000_read_bitstream_packets(%struct.TYPE_20__*) #1

declare dso_local i32 @jpeg2000_dec_cleanup(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bytestream2_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
