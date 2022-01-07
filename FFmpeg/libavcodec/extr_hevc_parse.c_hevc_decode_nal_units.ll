; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parse.c_hevc_decode_nal_units.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parse.c_hevc_decode_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AV_CODEC_ID_HEVC = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Ignoring NAL type %d in extradata\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32, i32, i32, i32, i8*)* @hevc_decode_nal_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_decode_nal_units(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_5__, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32 0, i32* %21, align 4
  %24 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %19, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @AV_CODEC_ID_HEVC, align 4
  %31 = call i32 @ff_h2645_packet_split(%struct.TYPE_5__* %22, i32* %25, i32 %26, i8* %27, i32 %28, i32 %29, i32 %30, i32 1, i32 0)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %9
  br label %107

35:                                               ; preds = %9
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %103, %35
  %37 = load i32, i32* %20, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %23, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %95 [
    i32 128, label %50
    i32 129, label %60
    i32 132, label %71
    i32 131, label %81
    i32 130, label %81
  ]

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i8*, i8** %19, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @ff_hevc_decode_nal_vps(i32* %52, i8* %53, i32* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %107

59:                                               ; preds = %50
  br label %102

60:                                               ; preds = %41
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %19, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @ff_hevc_decode_nal_sps(i32* %62, i8* %63, i32* %64, i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %107

70:                                               ; preds = %60
  br label %102

71:                                               ; preds = %41
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8*, i8** %19, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @ff_hevc_decode_nal_pps(i32* %73, i8* %74, i32* %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %107

80:                                               ; preds = %71
  br label %102

81:                                               ; preds = %41, %41
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %19, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ff_hevc_decode_nal_sei(i32* %83, i8* %84, i32* %85, i32* %86, i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %107

94:                                               ; preds = %81
  br label %102

95:                                               ; preds = %41
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_log(i8* %96, i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %95, %94, %80, %70, %59
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %36

106:                                              ; preds = %36
  br label %107

107:                                              ; preds = %106, %93, %79, %69, %58, %34
  %108 = call i32 @ff_h2645_packet_uninit(%struct.TYPE_5__* %22)
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @AV_EF_EXPLODE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %21, align 4
  store i32 %114, i32* %10, align 4
  br label %116

115:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %113
  %117 = load i32, i32* %10, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_h2645_packet_split(%struct.TYPE_5__*, i32*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ff_hevc_decode_nal_vps(i32*, i8*, i32*) #2

declare dso_local i32 @ff_hevc_decode_nal_sps(i32*, i8*, i32*, i32) #2

declare dso_local i32 @ff_hevc_decode_nal_pps(i32*, i8*, i32*) #2

declare dso_local i32 @ff_hevc_decode_nal_sei(i32*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @av_log(i8*, i32, i8*, i32) #2

declare dso_local i32 @ff_h2645_packet_uninit(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
