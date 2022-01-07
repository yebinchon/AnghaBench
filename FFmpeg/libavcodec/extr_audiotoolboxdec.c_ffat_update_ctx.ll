; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_update_ctx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_update_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_16__*, i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }

@kAudioConverterCurrentInputStreamDescription = common dso_local global i32 0, align 4
@kAudioConverterCurrentOutputStreamDescription = common dso_local global i32 0, align 4
@kAudioConverterOutputChannelLayout = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ffat_compare_channel_descriptions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ffat_update_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffat_update_ctx(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %4, align 8
  store i32 32, i32* %6, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @kAudioConverterCurrentInputStreamDescription, align 4
  %18 = call i32 @AudioConverterGetProperty(i32 %16, i32 %17, i32* %6, %struct.TYPE_13__* %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @av_get_default_channel_layout(i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @kAudioConverterCurrentOutputStreamDescription, align 4
  %49 = call i32 @AudioConverterGetProperty(i32 %47, i32 %48, i32* %6, %struct.TYPE_13__* %5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  store i64 %54, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @kAudioConverterCurrentOutputStreamDescription, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @AudioConverterSetProperty(i32 %62, i32 %63, i32 %64, %struct.TYPE_13__* %5)
  br label %66

66:                                               ; preds = %51, %44
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @kAudioConverterOutputChannelLayout, align 4
  %71 = call i32 @AudioConverterGetPropertyInfo(i32 %69, i32 %70, i32* %6, i32* null)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %179, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %179

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = call %struct.TYPE_13__* @av_malloc(i32 %77)
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %8, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = icmp ne %struct.TYPE_13__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %188

84:                                               ; preds = %76
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @kAudioConverterOutputChannelLayout, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = call i32 @AudioConverterGetProperty(i32 %87, i32 %88, i32* %6, %struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call %struct.TYPE_13__* @ffat_convert_layout(%struct.TYPE_13__* %91, i32* %6)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %7, align 8
  %93 = icmp ne %struct.TYPE_13__* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %188

97:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %137, %97
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %98
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ffat_get_channel_id(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %176

117:                                              ; preds = %104
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %176

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %98

140:                                              ; preds = %98
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @qsort(%struct.TYPE_16__* %146, i32 %149, i32 4, i32* @ffat_compare_channel_descriptions)
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %172, %140
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %151
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %151

175:                                              ; preds = %151
  br label %176

176:                                              ; preds = %175, %123, %116
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = call i32 @av_free(%struct.TYPE_13__* %177)
  br label %179

179:                                              ; preds = %176, %73, %66
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  store i32 2048, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %179
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %94, %81
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @AudioConverterGetProperty(i32, i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @AudioConverterSetProperty(i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @AudioConverterGetPropertyInfo(i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_13__* @ffat_convert_layout(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ffat_get_channel_id(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
