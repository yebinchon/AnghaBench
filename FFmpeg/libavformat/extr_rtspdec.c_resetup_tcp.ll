; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_resetup_tcp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_resetup_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@RTSP_LOWER_TRANSPORT_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @resetup_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resetup_tcp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %9, i32 1024, i32* %5, i32* null, i32 0, i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @ff_rtsp_undo_setup(%struct.TYPE_7__* %14, i32 0)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @RTSP_LOWER_TRANSPORT_TCP, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ff_rtsp_make_setup_request(%struct.TYPE_7__* %16, i8* %17, i32 %18, i32 %19, i32 %22)
  ret i32 %23
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_rtsp_undo_setup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ff_rtsp_make_setup_request(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
