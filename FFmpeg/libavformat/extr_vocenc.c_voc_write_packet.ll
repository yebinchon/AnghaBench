; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vocenc.c_voc_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vocenc.c_voc_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__**, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@VOC_TYPE_NEW_VOICE_DATA = common dso_local global i32 0, align 4
@VOC_TYPE_EXTENDED = common dso_local global i32 0, align 4
@VOC_TYPE_VOICE_DATA = common dso_local global i32 0, align 4
@VOC_TYPE_VOICE_DATA_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @voc_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voc_write_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %13, i64 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %140, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @VOC_TYPE_NEW_VOICE_DATA, align 4
  %33 = call i32 @avio_w8(i32* %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 12
  %39 = call i32 @avio_wl24(i32* %34, i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @avio_wl32(i32* %40, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @avio_w8(i32* %45, i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @avio_w8(i32* %50, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @avio_wl16(i32* %55, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @avio_wl32(i32* %60, i32 0)
  br label %137

62:                                               ; preds = %25
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %65, i64 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %110

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @VOC_TYPE_EXTENDED, align 4
  %76 = call i32 @avio_w8(i32* %74, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @avio_wl24(i32* %77, i32 4)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = sdiv i32 %86, 2
  %88 = add nsw i32 256000000, %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = sdiv i32 %88, %95
  %97 = sub nsw i32 65536, %96
  %98 = call i32 @avio_wl16(i32* %79, i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @avio_w8(i32* %99, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @avio_w8(i32* %104, i32 %108)
  br label %110

110:                                              ; preds = %73, %62
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @VOC_TYPE_VOICE_DATA, align 4
  %113 = call i32 @avio_w8(i32* %111, i32 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 2
  %119 = call i32 @avio_wl24(i32* %114, i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 2
  %125 = add nsw i32 1000000, %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %125, %128
  %130 = sub nsw i32 256, %129
  %131 = call i32 @avio_w8(i32* %120, i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @avio_w8(i32* %132, i32 %135)
  br label %137

137:                                              ; preds = %110, %30
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %149

140:                                              ; preds = %2
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @VOC_TYPE_VOICE_DATA_CONT, align 4
  %143 = call i32 @avio_w8(i32* %141, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @avio_wl24(i32* %144, i32 %147)
  br label %149

149:                                              ; preds = %140, %137
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @avio_write(i32* %150, i32 %153, i32 %156)
  ret i32 0
}

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wl24(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
