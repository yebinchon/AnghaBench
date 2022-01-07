; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_aux_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_aux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32, i32, i32, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DCA_SYNCWORD_REV1AUX = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid auxiliary data sync word\0A\00", align 1
@DCA_DMIX_TYPE_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid primary channel set downmix type\0A\00", align 1
@ff_dca_dmix_primary_nch = common dso_local global i32* null, align 8
@ff_dca_channels = common dso_local global i32* null, align 8
@FF_DCA_DMIXTABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid downmix coefficient index\0A\00", align 1
@ff_dca_dmixtable = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid auxiliary data checksum\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @parse_aux_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_aux_data(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = call i64 @get_bits_left(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %16, i32* %2, align 4
  br label %177

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = call i32 @skip_bits(i32* %19, i32 6)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = call i32 @get_bits_count(i32* %24)
  %26 = sub nsw i32 0, %25
  %27 = and i32 %26, 31
  %28 = call i32 @skip_bits_long(i32* %22, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = call i64 @get_bits_long(i32* %30, i32 32)
  %32 = load i64, i64* @DCA_SYNCWORD_REV1AUX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 @av_log(i32 %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %2, align 4
  br label %177

41:                                               ; preds = %17
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = call i32 @get_bits_count(i32* %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = call i64 @get_bits1(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = call i32 @skip_bits_long(i32* %51, i32 47)
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = call i64 @get_bits1(i32* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i64 %56, i64* %58, align 8
  %59 = icmp ne i64 %56, 0
  br i1 %59, label %60, label %146

60:                                               ; preds = %53
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = call i8* @get_bits(i32* %62, i32 3)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DCA_DMIX_TYPE_COUNT, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %2, align 4
  br label %177

79:                                               ; preds = %60
  %80 = load i32*, i32** @ff_dca_dmix_primary_nch, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %6, align 4
  %86 = load i32*, i32** @ff_dca_channels, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = add nsw i32 %91, %98
  store i32 %99, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %142, %79
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %102, %103
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %100
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = call i8* @get_bits(i32* %108, i32 9)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 8
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 255
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @FF_DCA_DMIXTABLE_SIZE, align 4
  %118 = icmp uge i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(i32 %122, i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %2, align 4
  br label %177

126:                                              ; preds = %106
  %127 = load i32*, i32** @ff_dca_dmixtable, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = xor i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %100

145:                                              ; preds = %100
  br label %146

146:                                              ; preds = %145, %53
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  %151 = call i32 @get_bits_count(i32* %150)
  %152 = sub nsw i32 0, %151
  %153 = and i32 %152, 7
  %154 = call i32 @skip_bits(i32* %148, i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = call i32 @skip_bits(i32* %156, i32 16)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = call i32 @get_bits_count(i32* %165)
  %167 = call i64 @ff_dca_check_crc(i32 %160, i32* %162, i32 %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %146
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = call i32 @av_log(i32 %172, i32 %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %175, i32* %2, align 4
  br label %177

176:                                              ; preds = %146
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %169, %119, %72, %34, %15
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @skip_bits_long(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i64 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i64 @ff_dca_check_crc(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
