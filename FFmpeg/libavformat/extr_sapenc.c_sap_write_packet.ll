; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sapenc.c_sap_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__**, %struct.SAPState* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.SAPState = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @sap_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sap_write_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.SAPState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.SAPState*, %struct.SAPState** %11, align 8
  store %struct.SAPState* %12, %struct.SAPState** %7, align 8
  %13 = call i32 (...) @av_gettime_relative()
  store i32 %13, i32* %8, align 4
  %14 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %15 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %21 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = icmp sgt i32 %23, 5000000
  br i1 %24, label %25, label %49

25:                                               ; preds = %18, %2
  %26 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %27 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %30 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %33 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ffurl_write(i32 %28, i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ECONNREFUSED, align 4
  %41 = call i32 @AVERROR(i32 %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %38, %25
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.SAPState*, %struct.SAPState** %7, align 8
  %48 = getelementptr inbounds %struct.SAPState, %struct.SAPState* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %18
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = call i32 @ff_write_chained(%struct.TYPE_11__* %60, i32 0, %struct.TYPE_10__* %61, %struct.TYPE_11__* %62, i32 0)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %49, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @ffurl_write(i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_write_chained(%struct.TYPE_11__*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
