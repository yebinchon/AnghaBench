; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_decode_callback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_decode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__**, i8*)* @ffat_decode_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffat_decode_callback(i32 %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_11__** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %12, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %13, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %5
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %26 = icmp ne %struct.TYPE_11__** %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %23
  store i32 0, i32* %6, align 4
  br label %92

35:                                               ; preds = %5
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = call i32 @av_packet_unref(%struct.TYPE_15__* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = call i32 @av_packet_move_ref(%struct.TYPE_15__* %40, i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = load i32*, i32** %8, align 8
  store i32 0, i32* %50, align 4
  store i32 1, i32* %6, align 4
  br label %92

51:                                               ; preds = %35
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i64 %62, i64* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i64 %71, i64* %76, align 8
  %77 = load i32*, i32** %8, align 8
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %79 = icmp ne %struct.TYPE_11__** %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %51
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %80, %51
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %49, %34
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @av_packet_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
