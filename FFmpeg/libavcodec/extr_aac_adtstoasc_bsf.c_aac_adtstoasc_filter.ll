; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aac_adtstoasc_bsf.c_aac_adtstoasc_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aac_adtstoasc_bsf.c_aac_adtstoasc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@AV_AAC_ADTS_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error parsing ADTS frame header!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Multiple RDBs per frame with CRC\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@MAX_PCE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"PCE-based channel configuration without PCE as first syntax element\00", align 1
@AV_PKT_DATA_NEW_EXTRADATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Input packet too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @aac_adtstoasc_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_adtstoasc_filter(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_17__* %19, %struct.TYPE_16__* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %208

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AV_RB16(i32 %41)
  %43 = ashr i32 %42, 4
  %44 = icmp ne i32 %43, 4095
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %208

46:                                               ; preds = %38, %33, %26
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AV_AAC_ADTS_HEADER_SIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %199

53:                                               ; preds = %46
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AV_AAC_ADTS_HEADER_SIZE, align 4
  %58 = mul nsw i32 %57, 8
  %59 = call i32 @init_get_bits(i32* %7, i32 %56, i32 %58)
  %60 = call i64 @ff_adts_header_parse(i32* %7, %struct.TYPE_19__* %9)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load i32, i32* @AV_LOG_ERROR, align 4
  %65 = call i32 @av_log(%struct.TYPE_17__* %63, i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %10, align 4
  br label %204

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = call i32 @avpriv_report_missing_feature(%struct.TYPE_17__* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %78, i32* %10, align 4
  br label %204

79:                                               ; preds = %71, %67
  %80 = load i32, i32* @AV_AAC_ADTS_HEADER_SIZE, align 4
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %80, %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %199

97:                                               ; preds = %79
  %98 = load i32, i32* @AV_AAC_ADTS_HEADER_SIZE, align 4
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %98, %104
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %198, label %114

114:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  %115 = load i32, i32* @MAX_PCE_SIZE, align 4
  %116 = zext i32 %115 to i64
  %117 = call i8* @llvm.stacksave()
  store i8* %117, i8** %12, align 8
  %118 = alloca i32, i64 %116, align 16
  store i64 %116, i64* %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %155, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 8
  %130 = call i32 @init_get_bits(i32* %7, i32 %125, i32 %129)
  %131 = call i32 @get_bits(i32* %7, i32 3)
  %132 = icmp ne i32 %131, 5
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = call i32 @avpriv_report_missing_feature(%struct.TYPE_17__* %134, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %136, i32* %10, align 4
  store i32 3, i32* %15, align 4
  br label %194

137:                                              ; preds = %122
  %138 = load i32, i32* @MAX_PCE_SIZE, align 4
  %139 = call i32 @init_put_bits(i32* %8, i32* %118, i32 %138)
  %140 = call i32 @ff_copy_pce_data(i32* %8, i32* %7)
  %141 = sdiv i32 %140, 8
  store i32 %141, i32* %11, align 4
  %142 = call i32 @flush_put_bits(i32* %8)
  %143 = call i32 @get_bits_count(i32* %7)
  %144 = sdiv i32 %143, 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = call i32 @get_bits_count(i32* %7)
  %150 = sdiv i32 %149, 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %137, %114
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = load i32, i32* @AV_PKT_DATA_NEW_EXTRADATA, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 2, %158
  %160 = call i32* @av_packet_new_side_data(%struct.TYPE_16__* %156, i32 %157, i32 %159)
  store i32* %160, i32** %14, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %10, align 4
  store i32 3, i32* %15, align 4
  br label %194

166:                                              ; preds = %155
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 2, %168
  %170 = call i32 @init_put_bits(i32* %8, i32* %167, i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @put_bits(i32* %8, i32 5, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @put_bits(i32* %8, i32 4, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @put_bits(i32* %8, i32 4, i32 %178)
  %180 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  %181 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  %182 = call i32 @put_bits(i32* %8, i32 1, i32 0)
  %183 = call i32 @flush_put_bits(i32* %8)
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %166
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @memcpy(i32* %188, i32* %118, i32 %189)
  br label %191

191:                                              ; preds = %186, %166
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 4
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %163, %133, %191
  %195 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %15, align 4
  switch i32 %196, label %210 [
    i32 0, label %197
    i32 3, label %204
  ]

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %197, %97
  store i32 0, i32* %3, align 4
  br label %208

199:                                              ; preds = %96, %52
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %201 = load i32, i32* @AV_LOG_ERROR, align 4
  %202 = call i32 @av_log(%struct.TYPE_17__* %200, i32 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %203 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %199, %194, %75, %62
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = call i32 @av_packet_unref(%struct.TYPE_16__* %205)
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %204, %198, %45, %24
  %209 = load i32, i32* %3, align 4
  ret i32 %209

210:                                              ; preds = %194
  unreachable
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @AV_RB16(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i64 @ff_adts_header_parse(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_17__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @ff_copy_pce_data(i32*, i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
