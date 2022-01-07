; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_band_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_parse_band_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid NAVI position\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @parse_band_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_band_data(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = call i32 @chs_alloc_msb_band_data(%struct.TYPE_16__* %21, %struct.TYPE_17__* %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %152

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = call i32 @chs_alloc_lsb_band_data(%struct.TYPE_16__* %28, %struct.TYPE_17__* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %152

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 1
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %10, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = call i32 @get_bits_count(%struct.TYPE_18__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %148, %40
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %151

53:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %144, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %147

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %10, align 8
  br label %64

64:                                               ; preds = %138, %60
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %143

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %70
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_15__* %91, i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %2, align 4
  br label %152

95:                                               ; preds = %76
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @chs_parse_band_data(%struct.TYPE_16__* %102, %struct.TYPE_17__* %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AV_EF_EXPLODE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %152

120:                                              ; preds = %109
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @chs_clear_band_data(%struct.TYPE_16__* %121, %struct.TYPE_17__* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %101, %95
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 5
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 5
  %132 = call i32 @get_bits_count(%struct.TYPE_18__* %131)
  %133 = sub nsw i32 %129, %132
  %134 = call i32 @skip_bits_long(%struct.TYPE_18__* %128, i32 %133)
  br label %135

135:                                              ; preds = %126, %70
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %9, align 8
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 1
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %10, align 8
  br label %64

143:                                              ; preds = %64
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %54

147:                                              ; preds = %54
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %47

151:                                              ; preds = %47
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %118, %88, %32, %25
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @chs_alloc_msb_band_data(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @chs_alloc_lsb_band_data(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @get_bits_count(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @chs_parse_band_data(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @chs_clear_band_data(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @skip_bits_long(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
