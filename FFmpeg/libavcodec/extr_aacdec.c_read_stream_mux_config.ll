; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_stream_mux_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec.c_read_stream_mux_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LATMContext = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Multiple programs\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Multiple layers\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LATMContext*, i32*)* @read_stream_mux_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_stream_mux_config(%struct.LATMContext* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LATMContext*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.LATMContext* %0, %struct.LATMContext** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @get_bits(i32* %10, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %13 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @get_bits(i32* %17, i32 1)
  %19 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %20 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %23 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %137, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @latm_get_value(i32* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @skip_bits(i32* %33, i32 1)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @skip_bits(i32* %35, i32 6)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @get_bits(i32* %37, i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %42 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @avpriv_request_sample(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %46, i32* %3, align 4
  br label %138

47:                                               ; preds = %32
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @get_bits(i32* %48, i32 3)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %53 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @avpriv_request_sample(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %57, i32* %3, align 4
  br label %138

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @latm_decode_audio_specific_config(%struct.LATMContext* %62, i32* %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %138

68:                                               ; preds = %61
  br label %80

69:                                               ; preds = %58
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @latm_get_value(i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @latm_decode_audio_specific_config(%struct.LATMContext* %72, i32* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %138

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @get_bits(i32* %81, i32 3)
  %83 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %84 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %86 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %102 [
    i32 0, label %88
    i32 1, label %91
    i32 3, label %96
    i32 4, label %96
    i32 5, label %96
    i32 6, label %99
    i32 7, label %99
  ]

88:                                               ; preds = %80
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @skip_bits(i32* %89, i32 8)
  br label %102

91:                                               ; preds = %80
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @get_bits(i32* %92, i32 9)
  %94 = load %struct.LATMContext*, %struct.LATMContext** %4, align 8
  %95 = getelementptr inbounds %struct.LATMContext, %struct.LATMContext* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %102

96:                                               ; preds = %80, %80, %80
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @skip_bits(i32* %97, i32 6)
  br label %102

99:                                               ; preds = %80, %80
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @skip_bits(i32* %100, i32 1)
  br label %102

102:                                              ; preds = %80, %99, %96, %91, %88
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @get_bits(i32* %103, i32 1)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @latm_get_value(i32* %110)
  br label %128

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %124, %112
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @get_bits_left(i32* %114)
  %116 = icmp slt i32 %115, 9
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %3, align 4
  br label %138

119:                                              ; preds = %113
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @get_bits(i32* %120, i32 1)
  store i32 %121, i32* %9, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @skip_bits(i32* %122, i32 8)
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %113, label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %109
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @get_bits(i32* %130, i32 1)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @skip_bits(i32* %134, i32 8)
  br label %136

136:                                              ; preds = %133, %129
  br label %137

137:                                              ; preds = %136, %21
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %117, %77, %66, %51, %40
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @latm_get_value(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*) #1

declare dso_local i32 @latm_decode_audio_specific_config(%struct.LATMContext*, i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
