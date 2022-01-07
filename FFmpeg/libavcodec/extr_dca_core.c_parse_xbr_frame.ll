; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xbr_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_xbr_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DCA_EXSS_CHSETS_MAX = common dso_local global i32 0, align 4
@DCA_EXSS_CHANNELS_MAX = common dso_local global i32 0, align 4
@DCA_SYNCWORD_XBR = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid XBR sync word\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid XBR frame header checksum\0A\00", align 1
@DCA_SUBBANDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid number of active XBR subbands (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Read past end of XBR frame header\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Read past end of XBR channel set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @parse_xbr_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_xbr_frame(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* @DCA_EXSS_CHSETS_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %4, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  %25 = load i32, i32* @DCA_EXSS_CHSETS_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %28 = load i32, i32* @DCA_EXSS_CHSETS_MAX, align 4
  %29 = load i32, i32* @DCA_EXSS_CHANNELS_MAX, align 4
  %30 = mul nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = call i32 @get_bits_count(i32* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = call i64 @get_bits_long(i32* %37, i32 32)
  %39 = load i64, i64* @DCA_SYNCWORD_XBR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (i32, i32, i8*, ...) @av_log(i32 %44, i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

48:                                               ; preds = %1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = call i32 @get_bits(i32* %50, i32 6)
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 32
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 %61, 8
  %63 = add nsw i32 %60, %62
  %64 = call i64 @ff_dca_check_crc(i32 %55, i32* %57, i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %48
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (i32, i32, i8*, ...) @av_log(i32 %69, i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

73:                                               ; preds = %48
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = call i32 @get_bits(i32* %75, i32 2)
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %90, %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = call i32 @get_bits(i32* %84, i32 14)
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %24, i64 %88
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = call i32 @get_bits1(i32* %95)
  store i32 %96, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %153, %93
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = call i32 @get_bits(i32* %103, i32 3)
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %27, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = call i32 @get_bits(i32* %110, i32 2)
  %112 = add nsw i32 %111, 5
  store i32 %112, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %147, %101
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %27, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %113
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @get_bits(i32* %122, i32 %123)
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %32, i64 %127
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %32, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DCA_SUBBANDS, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %120
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AV_LOG_ERROR, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %32, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i32, i8*, ...) @av_log(i32 %138, i32 %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %145, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

146:                                              ; preds = %120
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %113

152:                                              ; preds = %113
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %97

156:                                              ; preds = %97
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %160, 8
  %162 = add nsw i32 %159, %161
  %163 = call i64 @ff_dca_seek_bits(i32* %158, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AV_LOG_ERROR, align 4
  %170 = call i32 (i32, i32, i8*, ...) @av_log(i32 %168, i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

172:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %244, %172
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %247

177:                                              ; preds = %173
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = call i32 @get_bits_count(i32* %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %27, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %181, %185
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %186, %189
  br i1 %190, label %191, label %218

191:                                              ; preds = %177
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %192

192:                                              ; preds = %214, %191
  %193 = load i32, i32* %19, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %192
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %27, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %201, %205
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @parse_xbr_subframe(%struct.TYPE_4__* %199, i32 %200, i32 %206, i32* %32, i32 %207, i32 %208, i32* %20)
  store i32 %209, i32* %15, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  br label %192

217:                                              ; preds = %192
  br label %218

218:                                              ; preds = %217, %177
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %27, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 3
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %24, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %231, 8
  %233 = add nsw i32 %227, %232
  %234 = call i64 @ff_dca_seek_bits(i32* %226, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %218
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @AV_LOG_ERROR, align 4
  %241 = call i32 (i32, i32, i8*, ...) @av_log(i32 %239, i32 %240, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %242 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %242, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

243:                                              ; preds = %218
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %173

247:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %248

248:                                              ; preds = %247, %236, %211, %165, %135, %66, %41
  %249 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_bits_count(i32*) #2

declare dso_local i64 @get_bits_long(i32*, i32) #2

declare dso_local i32 @av_log(i32, i32, i8*, ...) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i64 @ff_dca_check_crc(i32, i32*, i32, i32) #2

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #2

declare dso_local i32 @parse_xbr_subframe(%struct.TYPE_4__*, i32, i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
