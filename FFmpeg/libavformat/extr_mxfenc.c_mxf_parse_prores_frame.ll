; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_parse_prores_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_parse_prores_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32 }

@mxf_prores_codec_uls = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*)* @mxf_parse_prores_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_parse_prores_frame(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %54, %23
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mxf_prores_codec_uls, align 8
  %34 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_18__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mxf_prores_codec_uls, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mxf_prores_codec_uls, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  br label %57

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %31

57:                                               ; preds = %45, %31
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %62, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
