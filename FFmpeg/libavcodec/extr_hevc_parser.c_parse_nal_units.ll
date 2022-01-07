; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_parse_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_parse_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_STRUCTURE_UNKNOWN = common dso_local global i32 0, align 4
@AV_CODEC_ID_HEVC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"missing picture in access unit with size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32*)* @parse_nal_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nal_units(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @AV_PICTURE_STRUCTURE_UNKNOWN, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @ff_hevc_reset_sei(i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %46 = call i32 @ff_h2645_packet_split(%struct.TYPE_11__* %35, i32* %36, i32 %37, i32* %38, i32 %41, i32 %44, i32 %45, i32 1, i32 0)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %115

51:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %107, %51
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %52
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %15, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32* %68, i32** %16, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %106 [
    i32 128, label %72
    i32 135, label %77
    i32 142, label %82
    i32 137, label %87
    i32 136, label %87
    i32 132, label %96
    i32 131, label %96
    i32 130, label %96
    i32 129, label %96
    i32 134, label %96
    i32 133, label %96
    i32 147, label %96
    i32 146, label %96
    i32 148, label %96
    i32 143, label %96
    i32 144, label %96
    i32 145, label %96
    i32 141, label %96
    i32 140, label %96
    i32 139, label %96
    i32 138, label %96
  ]

72:                                               ; preds = %59
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @ff_hevc_decode_nal_vps(i32* %73, i32* %74, i32* %75)
  br label %106

77:                                               ; preds = %59
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @ff_hevc_decode_nal_sps(i32* %78, i32* %79, i32* %80, i32 1)
  br label %106

82:                                               ; preds = %59
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @ff_hevc_decode_nal_pps(i32* %83, i32* %84, i32* %85)
  br label %106

87:                                               ; preds = %59, %59
  %88 = load i32*, i32** %16, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ff_hevc_decode_nal_sei(i32* %88, i32* %89, i32* %90, i32* %91, i32 %94)
  br label %106

96:                                               ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @hevc_parse_slice_header(%struct.TYPE_10__* %97, %struct.TYPE_9__* %98, i32* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %115

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %59, %105, %87, %82, %77, %72
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %52

110:                                              ; preds = %52
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @av_log(i32* %111, i32 %112, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %5, align 4
  br label %115

115:                                              ; preds = %110, %103, %49
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ff_hevc_reset_sei(i32*) #1

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_11__*, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_hevc_decode_nal_vps(i32*, i32*, i32*) #1

declare dso_local i32 @ff_hevc_decode_nal_sps(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ff_hevc_decode_nal_pps(i32*, i32*, i32*) #1

declare dso_local i32 @ff_hevc_decode_nal_sei(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @hevc_parse_slice_header(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
