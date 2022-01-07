; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.dshow_ctx* }
%struct.dshow_ctx = type { i32, i32*, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@INFINITE = common dso_local global i32 0, align 4
@AVFMT_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @dshow_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_read_packet(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.dshow_ctx*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  store %struct.dshow_ctx* %10, %struct.dshow_ctx** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %11

11:                                               ; preds = %100, %2
  %12 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %101

22:                                               ; preds = %20
  %23 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @INFINITE, align 4
  %27 = call i32 @WaitForSingleObject(i32 %25, i32 %26)
  %28 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %28, i32 0, i32 5
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %22
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_8__* %34 to i8*
  %38 = bitcast %struct.TYPE_8__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %39, i32 0, i32 5
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %44, i32 0, i32 5
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = call i32 @av_free(%struct.TYPE_7__* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %33, %22
  %61 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ResetEvent(i32 %65)
  %67 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ReleaseMutex(i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %60
  %74 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @dshow_check_event_queue(i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %99

82:                                               ; preds = %73
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AVFMT_FLAG_NONBLOCK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %115

92:                                               ; preds = %82
  %93 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %94 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @INFINITE, align 4
  %97 = call i32 @WaitForMultipleObjects(i32 2, i32* %95, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99, %60
  br label %11

101:                                              ; preds = %20
  %102 = load %struct.dshow_ctx*, %struct.dshow_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EIO, align 4
  %108 = call i32 @AVERROR(i32 %107)
  br label %113

109:                                              ; preds = %101
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i32 [ %108, %106 ], [ %112, %109 ]
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %89
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @ReleaseMutex(i32) #1

declare dso_local i64 @dshow_check_event_queue(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
