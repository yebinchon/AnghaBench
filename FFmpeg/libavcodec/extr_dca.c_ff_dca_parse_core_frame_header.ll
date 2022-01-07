; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca.c_ff_dca_parse_core_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca.c_ff_dca_parse_core_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@DCA_SYNCWORD_CORE_BE = common dso_local global i64 0, align 8
@DCA_PARSE_ERROR_SYNC_WORD = common dso_local global i32 0, align 4
@DCA_PCMBLOCK_SAMPLES = common dso_local global i64 0, align 8
@DCA_PARSE_ERROR_DEFICIT_SAMPLES = common dso_local global i32 0, align 4
@DCA_SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@DCA_PARSE_ERROR_PCM_BLOCKS = common dso_local global i32 0, align 4
@DCA_PARSE_ERROR_FRAME_SIZE = common dso_local global i32 0, align 4
@DCA_AMODE_COUNT = common dso_local global i64 0, align 8
@DCA_PARSE_ERROR_AMODE = common dso_local global i32 0, align 4
@avpriv_dca_sample_rates = common dso_local global i32* null, align 8
@DCA_PARSE_ERROR_SAMPLE_RATE = common dso_local global i32 0, align 4
@DCA_PARSE_ERROR_RESERVED_BIT = common dso_local global i32 0, align 4
@DCA_LFE_FLAG_INVALID = common dso_local global i64 0, align 8
@DCA_PARSE_ERROR_LFE_FLAG = common dso_local global i32 0, align 4
@ff_dca_bits_per_sample = common dso_local global i32* null, align 8
@DCA_PARSE_ERROR_PCM_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_parse_core_frame_header(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i64 @get_bits_long(i32* %6, i32 32)
  %8 = load i64, i64* @DCA_SYNCWORD_CORE_BE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DCA_PARSE_ERROR_SYNC_WORD, align 4
  store i32 %11, i32* %3, align 4
  br label %194

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @get_bits1(i32* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 23
  store i8* %14, i8** %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @get_bits(i32* %17, i32 5)
  %19 = getelementptr i8, i8* %18, i64 1
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DCA_PCMBLOCK_SAMPLES, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i32, i32* @DCA_PARSE_ERROR_DEFICIT_SAMPLES, align 4
  store i32 %29, i32* %3, align 4
  br label %194

30:                                               ; preds = %12
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @get_bits1(i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @get_bits(i32* %35, i32 7)
  %37 = getelementptr i8, i8* %36, i64 1
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DCA_SUBBAND_SAMPLES, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* @DCA_PARSE_ERROR_PCM_BLOCKS, align 4
  store i32 %49, i32* %3, align 4
  br label %194

50:                                               ; preds = %30
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @get_bits(i32* %51, i32 14)
  %53 = getelementptr i8, i8* %52, i64 1
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 96
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @DCA_PARSE_ERROR_FRAME_SIZE, align 4
  store i32 %62, i32* %3, align 4
  br label %194

63:                                               ; preds = %50
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @get_bits(i32* %64, i32 6)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DCA_AMODE_COUNT, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @DCA_PARSE_ERROR_AMODE, align 4
  store i32 %75, i32* %3, align 4
  br label %194

76:                                               ; preds = %63
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @get_bits(i32* %77, i32 4)
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load i32*, i32** @avpriv_dca_sample_rates, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* @DCA_PARSE_ERROR_SAMPLE_RATE, align 4
  store i32 %90, i32* %3, align 4
  br label %194

91:                                               ; preds = %76
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @get_bits(i32* %92, i32 5)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 22
  store i8* %93, i8** %95, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i8* @get_bits1(i32* %96)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @DCA_PARSE_ERROR_RESERVED_BIT, align 4
  store i32 %100, i32* %3, align 4
  br label %194

101:                                              ; preds = %91
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @get_bits1(i32* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 21
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i8* @get_bits1(i32* %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 20
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @get_bits1(i32* %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 19
  store i8* %111, i8** %113, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = call i8* @get_bits1(i32* %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 18
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @get_bits(i32* %118, i32 3)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 17
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i8* @get_bits1(i32* %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 16
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i8* @get_bits1(i32* %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 15
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i8* @get_bits(i32* %130, i32 2)
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DCA_LFE_FLAG_INVALID, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %101
  %141 = load i32, i32* @DCA_PARSE_ERROR_LFE_FLAG, align 4
  store i32 %141, i32* %3, align 4
  br label %194

142:                                              ; preds = %101
  %143 = load i32*, i32** %5, align 8
  %144 = call i8* @get_bits1(i32* %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 14
  store i8* %144, i8** %146, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 13
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @skip_bits(i32* %152, i32 16)
  br label %154

154:                                              ; preds = %151, %142
  %155 = load i32*, i32** %5, align 8
  %156 = call i8* @get_bits1(i32* %155)
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 12
  store i8* %156, i8** %158, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = call i8* @get_bits(i32* %159, i32 4)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 11
  store i8* %160, i8** %162, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i8* @get_bits(i32* %163, i32 2)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 10
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = call i8* @get_bits(i32* %167, i32 3)
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 6
  store i64 %169, i64* %171, align 8
  %172 = load i32*, i32** @ff_dca_bits_per_sample, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %154
  %180 = load i32, i32* @DCA_PARSE_ERROR_PCM_RES, align 4
  store i32 %180, i32* %3, align 4
  br label %194

181:                                              ; preds = %154
  %182 = load i32*, i32** %5, align 8
  %183 = call i8* @get_bits1(i32* %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 9
  store i8* %183, i8** %185, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = call i8* @get_bits1(i32* %186)
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 8
  store i8* %187, i8** %189, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call i8* @get_bits(i32* %190, i32 4)
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %181, %179, %140, %99, %89, %74, %61, %48, %28, %10
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i64 @get_bits_long(i32*, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
