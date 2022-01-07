; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_decrypt_triplet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_decrypt_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32, i32*, i32 }

@mxf_decrypt_triplet.checkv = internal constant [16 x i32] [i32 67, i32 72, i32 85, i32 75, i32 67, i32 72, i32 85, i32 75, i32 67, i32 72, i32 85, i32 75, i32 67, i32 72, i32 85, i32 75], align 16
@ENOMEM = common dso_local global i32 0, align 4
@mxf_essence_element_key = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"probably incorrect decryption key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*)* @mxf_decrypt_triplet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_decrypt_triplet(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %8, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @avio_tell(i32* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %3
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = call i64 (...) @av_aes_alloc()
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %213

55:                                               ; preds = %44
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @av_aes_init(i64 %58, i64 %61, i32 128, i32 1)
  br label %63

63:                                               ; preds = %55, %39, %34, %3
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @klv_decode_ber_length(i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %213

70:                                               ; preds = %63
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @avio_skip(i32* %71, i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @klv_decode_ber_length(i32* %74)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @avio_rb64(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @klv_decode_ber_length(i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @avio_read(i32* %80, i32* %83, i32 16)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = load i32, i32* @mxf_essence_element_key, align 4
  %87 = call i32 @IS_KLV_KEY(%struct.TYPE_16__* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %70
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %4, align 4
  br label %213

91:                                               ; preds = %70
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @find_body_sid_by_absolute_offset(%struct.TYPE_15__* %92, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @mxf_get_stream_index(%struct.TYPE_18__* %97, %struct.TYPE_16__* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %4, align 4
  br label %213

105:                                              ; preds = %91
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @klv_decode_ber_length(i32* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @avio_rb64(i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %4, align 4
  br label %213

115:                                              ; preds = %105
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @klv_decode_ber_length(i32* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 32
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 %121, 32
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %115
  %126 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %126, i32* %4, align 4
  br label %213

127:                                              ; preds = %120
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %130 = call i32 @avio_read(i32* %128, i32* %129, i32 16)
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %133 = call i32 @avio_read(i32* %131, i32* %132, i32 16)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %127
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %145 = call i32 @av_aes_crypt(i64 %141, i32* %142, i32* %143, i32 1, i32* %144, i32 1)
  br label %146

146:                                              ; preds = %138, %127
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %148 = call i64 @memcmp(i32* %147, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @mxf_decrypt_triplet.checkv, i64 0, i64 0), i32 16)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 @av_log(%struct.TYPE_18__* %151, i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %155, 32
  store i32 %156, i32* %11, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @av_get_packet(i32* %157, %struct.TYPE_17__* %158, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %4, align 4
  br label %213

165:                                              ; preds = %154
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %4, align 4
  br label %213

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %11, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %172
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %11, align 4
  %197 = ashr i32 %196, 4
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %199 = call i32 @av_aes_crypt(i64 %183, i32* %189, i32* %195, i32 %197, i32* %198, i32 1)
  br label %200

200:                                              ; preds = %180, %172
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @av_shrink_packet(%struct.TYPE_17__* %201, i32 %202)
  %204 = load i32, i32* %16, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @avio_tell(i32* %209)
  %211 = sub nsw i32 %208, %210
  %212 = call i32 @avio_skip(i32* %207, i32 %211)
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %200, %169, %163, %125, %113, %103, %89, %68, %52
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i64 @av_aes_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_aes_init(i64, i64, i32, i32) #1

declare dso_local i32 @klv_decode_ber_length(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @IS_KLV_KEY(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @find_body_sid_by_absolute_offset(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mxf_get_stream_index(%struct.TYPE_18__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_aes_crypt(i64, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_shrink_packet(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
