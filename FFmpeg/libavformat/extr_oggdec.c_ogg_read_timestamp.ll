; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.ogg* }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, i64, i32* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@OGG_FLAG_BOS = common dso_local global i32 0, align 4
@ff_ogm_video_codec = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32, i64*, i64)* @ogg_read_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ogg_read_timestamp(%struct.TYPE_7__* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ogg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ogg_stream*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.ogg*, %struct.ogg** %18, align 8
  store %struct.ogg* %19, %struct.ogg** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %23, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i32 @avio_seek(i32* %24, i64 %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i32 @ogg_reset(%struct.TYPE_7__* %29)
  br label %31

31:                                               ; preds = %113, %73, %4
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @avio_tell(i32* %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = call i32 @ogg_packet(%struct.TYPE_7__* %37, i32* %13, i32* %14, i32* %15, i64* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i1 [ false, %31 ], [ %41, %36 ]
  br i1 %43, label %44, label %114

44:                                               ; preds = %42
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = load %struct.ogg*, %struct.ogg** %9, align 8
  %50 = getelementptr inbounds %struct.ogg, %struct.ogg* %49, i32 0, i32 0
  %51 = load %struct.ogg_stream*, %struct.ogg_stream** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %51, i64 %53
  store %struct.ogg_stream* %54, %struct.ogg_stream** %16, align 8
  %55 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %56 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OGG_FLAG_EOS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %48
  %62 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %63 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OGG_FLAG_BOS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, @ff_ogm_video_codec
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %31

74:                                               ; preds = %68, %61, %48
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @ogg_calc_pts(%struct.TYPE_7__* %75, i32 %76, i32* null)
  store i64 %77, i64* %11, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @ogg_validate_keyframe(%struct.TYPE_7__* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %84 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  br label %107

92:                                               ; preds = %74
  %93 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %94 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %12, align 8
  %102 = load i64*, i64** %7, align 8
  store i64 %101, i64* %102, align 8
  br label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %104, i64* %11, align 8
  br label %105

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %44
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %114

113:                                              ; preds = %108
  br label %31

114:                                              ; preds = %112, %42
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = call i32 @ogg_reset(%struct.TYPE_7__* %115)
  %117 = load i64, i64* %11, align 8
  ret i64 %117
}

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @ogg_reset(%struct.TYPE_7__*) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @ogg_packet(%struct.TYPE_7__*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @ogg_calc_pts(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ogg_validate_keyframe(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
