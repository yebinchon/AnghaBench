; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_generic_sound_common.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_generic_sound_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@ff_mxf_opatom_muxer = common dso_local global i32 0, align 4
@ff_mxf_d10_muxer = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [128 x i8] c"the number of audio channels shall be 4 or 8 : the output will not comply to MXF D-10 specs, use -d10_channelcount to fix this\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"d10_channelcount < actual number of audio channels : some channels will be discarded\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"d10_channelcount shall be set to 4 or 8 : the output will not comply to MXF D-10 specs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @mxf_write_generic_sound_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_generic_sound_common(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mxf_write_generic_desc(%struct.TYPE_13__* %23, %struct.TYPE_12__* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, @ff_mxf_opatom_muxer
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @mxf_write_local_tag(i32* %32, i32 8, i32 12290)
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = call i32 @avio_wb64(i32* %34, i32 %41)
  br label %43

43:                                               ; preds = %31, %3
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @mxf_write_local_tag(i32* %44, i32 1, i32 15618)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @avio_w8(i32* %46, i32 1)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @mxf_write_local_tag(i32* %48, i32 8, i32 15619)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @avio_wb32(i32* %50, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @avio_wb32(i32* %57, i32 1)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, @ff_mxf_d10_muxer
  br i1 %62, label %63, label %68

63:                                               ; preds = %43
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @mxf_write_local_tag(i32* %64, i32 1, i32 15620)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @avio_w8(i32* %66, i32 0)
  br label %68

68:                                               ; preds = %63, %43
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @mxf_write_local_tag(i32* %69, i32 4, i32 15623)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %109

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, @ff_mxf_d10_muxer
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 4
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 8
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = load i32, i32* @AV_LOG_WARNING, align 4
  %100 = call i32 @av_log(%struct.TYPE_13__* %98, i32 %99, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %90, %83, %78, %75
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @avio_wb32(i32* %102, i32 %107)
  br label %163

109:                                              ; preds = %68
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, @ff_mxf_d10_muxer
  br i1 %113, label %114, label %154

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = load i32, i32* @AV_LOG_WARNING, align 4
  %130 = call i32 @av_log(%struct.TYPE_13__* %128, i32 %129, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %117, %114
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 4
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 8
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = load i32, i32* @AV_LOG_WARNING, align 4
  %147 = call i32 @av_log(%struct.TYPE_13__* %145, i32 %146, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %139, %134, %131
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @avio_wb32(i32* %149, i32 %152)
  br label %162

154:                                              ; preds = %109
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @avio_wb32(i32* %155, i32 %160)
  br label %162

162:                                              ; preds = %154, %148
  br label %163

163:                                              ; preds = %162, %101
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @mxf_write_local_tag(i32* %164, i32 4, i32 15617)
  %166 = load i32*, i32** %7, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @av_get_bits_per_sample(i32 %171)
  %173 = call i32 @avio_wb32(i32* %166, i32 %172)
  %174 = load i32, i32* %10, align 4
  ret i32 %174
}

declare dso_local i32 @mxf_write_generic_desc(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(i32*, i32, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
