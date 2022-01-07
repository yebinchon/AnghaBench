; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_save.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.ogg* }
%struct.ogg = type { i32, %struct.ogg_state*, %struct.ogg_stream*, i32 }
%struct.ogg_state = type { i32, %struct.TYPE_7__*, %struct.ogg_state*, i32, i32 }
%struct.TYPE_7__ = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i32*, %struct.TYPE_7__*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ogg_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_save(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ogg*, align 8
  %5 = alloca %struct.ogg_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ogg_stream*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.ogg*, %struct.ogg** %10, align 8
  store %struct.ogg* %11, %struct.ogg** %4, align 8
  %12 = load %struct.ogg*, %struct.ogg** %4, align 8
  %13 = getelementptr inbounds %struct.ogg, %struct.ogg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 40
  %18 = add i64 32, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.ogg_state* @av_malloc(i32 %19)
  store %struct.ogg_state* %20, %struct.ogg_state** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %22 = icmp ne %struct.ogg_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @avio_tell(i32 %29)
  %31 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %32 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ogg*, %struct.ogg** %4, align 8
  %34 = getelementptr inbounds %struct.ogg, %struct.ogg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %37 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ogg*, %struct.ogg** %4, align 8
  %39 = getelementptr inbounds %struct.ogg, %struct.ogg* %38, i32 0, i32 1
  %40 = load %struct.ogg_state*, %struct.ogg_state** %39, align 8
  %41 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %42 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %41, i32 0, i32 2
  store %struct.ogg_state* %40, %struct.ogg_state** %42, align 8
  %43 = load %struct.ogg*, %struct.ogg** %4, align 8
  %44 = getelementptr inbounds %struct.ogg, %struct.ogg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %47 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %49 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.ogg*, %struct.ogg** %4, align 8
  %52 = getelementptr inbounds %struct.ogg, %struct.ogg* %51, i32 0, i32 2
  %53 = load %struct.ogg_stream*, %struct.ogg_stream** %52, align 8
  %54 = load %struct.ogg*, %struct.ogg** %4, align 8
  %55 = getelementptr inbounds %struct.ogg, %struct.ogg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 40
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(%struct.TYPE_7__* %50, %struct.ogg_stream* %53, i32 %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %110, %26
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ogg*, %struct.ogg** %4, align 8
  %64 = getelementptr inbounds %struct.ogg, %struct.ogg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = load %struct.ogg*, %struct.ogg** %4, align 8
  %69 = getelementptr inbounds %struct.ogg, %struct.ogg* %68, i32 0, i32 2
  %70 = load %struct.ogg_stream*, %struct.ogg_stream** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %70, i64 %72
  store %struct.ogg_stream* %73, %struct.ogg_stream** %8, align 8
  %74 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %75 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %78 = add nsw i64 %76, %77
  %79 = call %struct.TYPE_7__* @av_mallocz(i64 %78)
  %80 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %81 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %80, i32 0, i32 3
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %83 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = icmp ne %struct.TYPE_7__* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %67
  %87 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %88 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %91 = getelementptr inbounds %struct.ogg_state, %struct.ogg_state* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.ogg_stream*, %struct.ogg_stream** %96, align 8
  %98 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %99 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(%struct.TYPE_7__* %89, %struct.ogg_stream* %97, i32 %100)
  br label %105

102:                                              ; preds = %67
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %86
  %106 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %107 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %109 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %61

113:                                              ; preds = %61
  %114 = load %struct.ogg_state*, %struct.ogg_state** %5, align 8
  %115 = load %struct.ogg*, %struct.ogg** %4, align 8
  %116 = getelementptr inbounds %struct.ogg, %struct.ogg* %115, i32 0, i32 1
  store %struct.ogg_state* %114, %struct.ogg_state** %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = call i32 @ogg_restore(%struct.TYPE_6__* %120)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %23
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.ogg_state* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.ogg_stream*, i32) #1

declare dso_local %struct.TYPE_7__* @av_mallocz(i64) #1

declare dso_local i32 @ogg_restore(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
