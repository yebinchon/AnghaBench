; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xxch_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xxch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DCA_SYNCWORD_XXCH = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid XXCH sync word\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid XXCH frame header checksum\0A\00", align 1
@DCA_SPEAKER_Cs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid number of bits for XXCH speaker mask (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%d XXCH channel sets\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Ls = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Lss = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Rs = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Rss = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"XXCH core speaker activity mask (%#x) disagrees with core (%#x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Read past end of XXCH frame header\0A\00", align 1
@HEADER_XXCH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Read past end of XXCH channel set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @parse_xxch_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_xxch_frame(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = call i32 @get_bits_count(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = call i64 @get_bits_long(i32* %14, i32 32)
  %16 = load i64, i64* @DCA_SYNCWORD_XXCH, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = call i32 (i32, i32, i8*, ...) @av_log(i32 %21, i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %2, align 4
  br label %208

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = call i32 @get_bits(i32* %27, i32 6)
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 8
  %40 = add nsw i32 %37, %39
  %41 = call i64 @ff_dca_check_crc(i32 %32, i32* %34, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = call i32 (i32, i32, i8*, ...) @av_log(i32 %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %2, align 4
  br label %208

50:                                               ; preds = %25
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = call i32 @get_bits1(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = call i32 @get_bits(i32* %57, i32 5)
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DCA_SPEAKER_Cs, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %50
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, i8*, ...) @av_log(i32 %70, i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %2, align 4
  br label %208

77:                                               ; preds = %50
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = call i32 @get_bits(i32* %79, i32 2)
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @avpriv_request_sample(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %90, i32* %2, align 4
  br label %208

91:                                               ; preds = %77
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = call i32 @get_bits(i32* %93, i32 14)
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @get_bits_long(i32* %97, i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @DCA_SPEAKER_MASK_Ls, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %91
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DCA_SPEAKER_MASK_Lss, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @DCA_SPEAKER_MASK_Ls, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* @DCA_SPEAKER_MASK_Lss, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %119, %112, %91
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @DCA_SPEAKER_MASK_Rs, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DCA_SPEAKER_MASK_Rss, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @DCA_SPEAKER_MASK_Rs, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = load i32, i32* @DCA_SPEAKER_MASK_Rss, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %138, %131, %126
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @AV_LOG_ERROR, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i32, i32, i8*, ...) @av_log(i32 %154, i32 %155, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159)
  %161 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %161, i32* %2, align 4
  br label %208

162:                                              ; preds = %145
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 %166, 8
  %168 = add nsw i32 %165, %167
  %169 = call i64 @ff_dca_seek_bits(i32* %164, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AV_LOG_ERROR, align 4
  %176 = call i32 (i32, i32, i8*, ...) @av_log(i32 %174, i32 %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %177 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %177, i32* %2, align 4
  br label %208

178:                                              ; preds = %162
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = load i32, i32* @HEADER_XXCH, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @parse_frame_data(%struct.TYPE_4__* %179, i32 %180, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %2, align 4
  br label %208

188:                                              ; preds = %178
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %8, align 4
  %193 = mul nsw i32 %192, 8
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* %5, align 4
  %196 = mul nsw i32 %195, 8
  %197 = add nsw i32 %194, %196
  %198 = call i64 @ff_dca_seek_bits(i32* %190, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %188
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = call i32 (i32, i32, i8*, ...) @av_log(i32 %203, i32 %204, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %206 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %206, i32* %2, align 4
  br label %208

207:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %200, %186, %171, %151, %84, %67, %43, %18
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i64 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @ff_dca_check_crc(i32, i32*, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i32) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

declare dso_local i32 @parse_frame_data(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
