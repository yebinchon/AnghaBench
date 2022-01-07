; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_svq3.c_svq3_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_svq3.c_svq3_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SEQH\00", align 1
@AV_CODEC_ID_SVQ3 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32*, i32*, i32, i32, i32)* @svq3_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq3_parse_packet(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %10, align 4
  br label %155

29:                                               ; preds = %9
  %30 = load i32*, i32** %16, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 64
  store i32 %33, i32* %20, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 32
  store i32 %37, i32* %21, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16
  store i32 %41, i32* %22, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = call i32 @av_freep(i64* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %68, label %60

60:                                               ; preds = %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 8
  %66 = call i64 @ff_alloc_extradata(%struct.TYPE_8__* %63, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60, %48
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %10, align 4
  br label %155

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i64, ...) @memcpy(i64 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @AV_WB32(i64 %82, i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 (i64, ...) @memcpy(i64 %90, i32* %91, i32 %92)
  %94 = load i32, i32* @AV_CODEC_ID_SVQ3, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %10, align 4
  br label %155

101:                                              ; preds = %29
  %102 = load i32, i32* %21, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = call i32 @ffio_free_dyn_buf(i32* %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = call i32 @avio_open_dyn_buf(i32* %109)
  store i32 %110, i32* %23, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %23, align 4
  store i32 %113, i32* %10, align 4
  br label %155

114:                                              ; preds = %104
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %101
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %10, align 4
  br label %155

126:                                              ; preds = %119
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @avio_write(i32 %129, i32* %130, i32 %131)
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %126
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ff_rtp_finalize_packet(i32* %136, i32* %138, i32 %141)
  store i32 %142, i32* %24, align 4
  %143 = load i32, i32* %24, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %24, align 4
  store i32 %146, i32* %10, align 4
  br label %155

147:                                              ; preds = %135
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %15, align 8
  store i32 %150, i32* %151, align 4
  store i32 0, i32* %10, align 4
  br label %155

152:                                              ; preds = %126
  %153 = load i32, i32* @EAGAIN, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %152, %147, %145, %124, %112, %70, %68, %27
  %156 = load i32, i32* %10, align 4
  ret i32 %156
}

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i64, ...) #1

declare dso_local i32 @AV_WB32(i64, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffio_free_dyn_buf(i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32*) #1

declare dso_local i32 @avio_write(i32, i32*, i32) #1

declare dso_local i32 @ff_rtp_finalize_packet(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
