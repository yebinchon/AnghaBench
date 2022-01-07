; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_rtmp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__**, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }

@STATE_FCPUBLISH = common dso_local global i64 0, align 8
@STATE_HANDSHAKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @rtmp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_close(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_13__* %24)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATE_FCPUBLISH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @gen_fcunpublish_stream(%struct.TYPE_11__* %33, %struct.TYPE_12__* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STATE_HANDSHAKED, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 @gen_delete_stream(%struct.TYPE_11__* %44, %struct.TYPE_12__* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %37
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %85, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %88

51:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %53, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 %71
  %73 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_13__* %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %80, i64 %82
  %84 = call i32 @av_freep(%struct.TYPE_13__** %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %48

88:                                               ; preds = %48
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @free_tracked_methods(%struct.TYPE_12__* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = call i32 @av_freep(%struct.TYPE_13__** %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ffurl_close(i32 %96)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @gen_fcunpublish_stream(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @gen_delete_stream(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

declare dso_local i32 @free_tracked_methods(%struct.TYPE_12__*) #1

declare dso_local i32 @ffurl_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
