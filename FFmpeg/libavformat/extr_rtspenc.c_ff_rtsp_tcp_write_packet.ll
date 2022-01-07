; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_ff_rtsp_tcp_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_ff_rtsp_tcp_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__* }

@RTSP_TCP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_tcp_write_packet(%struct.TYPE_8__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @avio_close_dyn_buf(i32* %22, i8** %7)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %59, %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 4
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @AV_RB32(i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %10, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %30
  br label %84

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @RTP_PT_IS_RTCP(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 36, i8* %61, align 1
  %62 = load i32, i32* %13, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @AV_WB16(i8* %67, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 4, %74
  %76 = call i32 @ffurl_write(i32 %72, i8* %73, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %27

84:                                               ; preds = %44, %27
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @av_free(i8* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* @RTSP_TCP_MAX_PACKET_SIZE, align 4
  %90 = call i32 @ffio_open_dyn_packet_buf(i32** %88, i32 %89)
  ret i32 %90
}

declare dso_local i32 @avio_close_dyn_buf(i32*, i8**) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i64 @RTP_PT_IS_RTCP(i8 signext) #1

declare dso_local i32 @AV_WB16(i8*, i32) #1

declare dso_local i32 @ffurl_write(i32, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @ffio_open_dyn_packet_buf(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
