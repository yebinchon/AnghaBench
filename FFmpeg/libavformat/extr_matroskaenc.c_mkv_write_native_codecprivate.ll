; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_native_codecprivate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_native_codecprivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Invalid extradata found, ALAC expects a 36-byte QuickTime atom.\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MAX_PCE_SIZE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PRORES = common dso_local global i32 0, align 4
@ff_codec_movvideo_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_TTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, i32*)* @mkv_write_native_codecprivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_native_codecprivate(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %106 [
    i32 129, label %13
    i32 130, label %13
    i32 133, label %18
    i32 128, label %23
    i32 132, label %27
    i32 131, label %36
    i32 134, label %45
    i32 135, label %63
    i32 136, label %85
  ]

13:                                               ; preds = %4, %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = call i32 @put_xiph_codecpriv(i32* %14, i32* %15, %struct.TYPE_6__* %16)
  store i32 %17, i32* %5, align 4
  br label %149

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = call i32 @put_flac_codecpriv(i32* %19, i32* %20, %struct.TYPE_6__* %21)
  store i32 %22, i32* %5, align 4
  br label %149

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = call i32 @put_wv_codecpriv(i32* %24, %struct.TYPE_6__* %25)
  store i32 %26, i32* %5, align 4
  br label %149

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ff_isom_write_avcc(i32* %28, i32 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %149

36:                                               ; preds = %4
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ff_isom_write_hvcc(i32* %37, i32 %40, i32 %43, i32 0)
  store i32 0, i32* %5, align 4
  br label %149

45:                                               ; preds = %4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ff_isom_write_av1c(i32* %51, i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %149

59:                                               ; preds = %45
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @put_ebml_void(i32* %60, i32 7)
  br label %62

62:                                               ; preds = %59
  br label %148

63:                                               ; preds = %4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 36
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(i32* %69, i32 %70, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %5, align 4
  br label %149

73:                                               ; preds = %63
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 12
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 12
  %83 = call i32 @avio_write(i32* %74, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %73
  br label %148

85:                                               ; preds = %4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @avio_write(i32* %91, i32 %94, i32 %97)
  br label %105

99:                                               ; preds = %85
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @MAX_PCE_SIZE, align 4
  %102 = add nsw i32 %101, 2
  %103 = add nsw i32 %102, 4
  %104 = call i32 @put_ebml_void(i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %99, %90
  br label %148

106:                                              ; preds = %4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AV_CODEC_ID_PRORES, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ff_codec_get_id(i32 %113, i32 %116)
  %118 = load i32, i32* @AV_CODEC_ID_PRORES, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @avio_wl32(i32* %121, i32 %124)
  br label %147

126:                                              ; preds = %112, %106
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AV_CODEC_ID_TTA, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @avio_write(i32* %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %137, %131, %126
  br label %147

147:                                              ; preds = %146, %120
  br label %148

148:                                              ; preds = %147, %105, %84, %62
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %68, %50, %36, %27, %23, %18, %13
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @put_xiph_codecpriv(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @put_flac_codecpriv(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @put_wv_codecpriv(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ff_isom_write_avcc(i32*, i32, i32) #1

declare dso_local i32 @ff_isom_write_hvcc(i32*, i32, i32, i32) #1

declare dso_local i32 @ff_isom_write_av1c(i32*, i32, i32) #1

declare dso_local i32 @put_ebml_void(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
