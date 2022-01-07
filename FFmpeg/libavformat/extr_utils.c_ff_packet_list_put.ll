; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_packet_list_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_packet_list_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FF_PACKETLIST_FLAG_REF_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_packet_list_put(%struct.TYPE_6__** %0, %struct.TYPE_6__** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.TYPE_6__* @av_mallocz(i32 16)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @FF_PACKETLIST_FLAG_REF_PACKET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @av_packet_ref(i32* %25, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = call i32 @av_free(%struct.TYPE_6__* %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %23
  br label %48

34:                                               ; preds = %18
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @av_packet_make_refcounted(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = call i32 @av_free(%struct.TYPE_6__* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @av_packet_move_ref(i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %56, align 8
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %39, %29, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_6__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_ref(i32*, i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_6__*) #1

declare dso_local i32 @av_packet_make_refcounted(i32*) #1

declare dso_local i32 @av_packet_move_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
