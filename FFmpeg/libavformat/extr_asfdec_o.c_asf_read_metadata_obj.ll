; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_metadata_obj.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_asf_read_metadata_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AspectRatioX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"AspectRatioY\00", align 1
@ASF_MAX_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @asf_read_metadata_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_metadata_obj(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @avio_rl64(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @avio_rl16(i32* %26)
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %106, %2
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  store i32* null, i32** %17, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @avio_skip(i32* %33, i32 2)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @avio_rl16(i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @avio_rl16(i32* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %109

45:                                               ; preds = %32
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @avio_rl16(i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @avio_rl32(i32* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32* @av_malloc(i32 %50)
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %116

57:                                               ; preds = %45
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @avio_get_str16le(i32* %58, i32 %59, i32* %60, i32 %61)
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @strcmp(i32* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @strcmp(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %66, %57
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @asf_store_aspect_ratio(%struct.TYPE_8__* %71, i32 %72, i32* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @av_freep(i32** %17)
  br label %109

80:                                               ; preds = %70
  br label %104

81:                                               ; preds = %66
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @ASF_MAX_STREAMS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32 @process_metadata(%struct.TYPE_8__* %86, i32* %87, i32 %88, i32 %89, i32 %90, i32* %97)
  store i32 %98, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = call i32 @av_freep(i32** %17)
  br label %109

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %103, %80
  %105 = call i32 @av_freep(i32** %17)
  br label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %28

109:                                              ; preds = %100, %78, %44, %28
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @align_position(i32* %110, i32 %113, i32 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %54
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_get_str16le(i32*, i32, i32*, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @asf_store_aspect_ratio(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @process_metadata(%struct.TYPE_8__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @align_position(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
