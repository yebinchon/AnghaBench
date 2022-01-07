; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_frame_exss.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_frame_exss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@DCA_EXSS_CHSETS_MAX = common dso_local global i32 0, align 4
@DCA_SYNCWORD_X96 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid X96 sync word\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid X96 frame header checksum\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid X96 revision (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Read past end of X96 frame header\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Read past end of X96 channel set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @parse_x96_frame_exss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_x96_frame_exss(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %14 = load i32, i32* @DCA_EXSS_CHSETS_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @DCA_EXSS_CHSETS_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = call i32 @get_bits_count(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = call i64 @get_bits_long(i32* %25, i32 32)
  %27 = load i64, i64* @DCA_SYNCWORD_X96, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (i32, i32, i8*, ...) @av_log(i32 %32, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

36:                                               ; preds = %1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = call i32 @get_bits(i32* %38, i32 6)
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 32
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 8
  %51 = add nsw i32 %48, %50
  %52 = call i64 @ff_dca_check_crc(i32 %43, i32* %45, i32 %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 (i32, i32, i8*, ...) @av_log(i32 %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

61:                                               ; preds = %36
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = call i32 @get_bits(i32* %63, i32 4)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 8
  br i1 %75, label %76, label %86

76:                                               ; preds = %71, %61
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i32, i8*, ...) @av_log(i32 %79, i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

86:                                               ; preds = %71
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = call i32 @get_bits1(i32* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = call i32 @get_bits(i32* %93, i32 2)
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %108, %86
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = call i32 @get_bits(i32* %102, i32 12)
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %17, i64 %106
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %96

111:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  %119 = call i32 @get_bits(i32* %118, i32 3)
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %20, i64 %122
  store i32 %120, i32* %123, align 4
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %112

127:                                              ; preds = %112
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %131, 8
  %133 = add nsw i32 %130, %132
  %134 = call i64 @ff_dca_seek_bits(i32* %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %127
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = call i32 (i32, i32, i8*, ...) @av_log(i32 %139, i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

143:                                              ; preds = %127
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = call i32 @alloc_x96_sample_buffer(%struct.TYPE_5__* %144)
  store i32 %145, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

149:                                              ; preds = %143
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %212, %149
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %215

156:                                              ; preds = %152
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = call i32 @get_bits_count(i32* %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %20, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %160, %164
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp sle i32 %165, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %156
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %20, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %171, %175
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @parse_x96_frame_data(%struct.TYPE_5__* %179, i32 1, i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %156
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %20, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %17, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %199, 8
  %201 = add nsw i32 %195, %200
  %202 = call i64 @ff_dca_seek_bits(i32* %194, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %186
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AV_LOG_ERROR, align 4
  %209 = call i32 (i32, i32, i8*, ...) @av_log(i32 %207, i32 %208, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %210 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %210, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

211:                                              ; preds = %186
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %152

215:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %216

216:                                              ; preds = %215, %204, %183, %147, %136, %76, %54, %29
  %217 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %2, align 4
  ret i32 %218
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

declare dso_local i32 @alloc_x96_sample_buffer(%struct.TYPE_5__*) #2

declare dso_local i32 @parse_x96_frame_data(%struct.TYPE_5__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
