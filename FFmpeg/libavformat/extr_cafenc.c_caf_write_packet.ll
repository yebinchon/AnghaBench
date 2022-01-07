; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__**, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @caf_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caf_write_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @avio_write(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %115, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 5
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %58

48:                                               ; preds = %34
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %9, align 4
  %55 = call i32* @av_fast_realloc(i32* %51, i32* %53, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %48, %45
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @av_free(i8* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %116

68:                                               ; preds = %58
  store i32 4, i32* %8, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 7
  %78 = ashr i32 %75, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = or i32 128, %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  store i32 %83, i32* %92, align 4
  br label %93

93:                                               ; preds = %81, %72
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %8, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 127
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  store i32 %101, i32* %110, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %97, %2
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %63
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @avio_write(i32, i32, i32) #1

declare dso_local i32* @av_fast_realloc(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
