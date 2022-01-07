; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_update_odml_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_update_odml_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__**, %struct.TYPE_12__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"indx\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"OpenDML index duration for audio packets with partial frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i64, i32)* @update_odml_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_odml_entry(%struct.TYPE_13__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %25, i64 %27
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %11, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @avio_flush(i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @avio_tell(i32* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 8
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i32 @avio_seek(i32* %36, i64 %41, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @ffio_wfourcc(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @avio_skip(i32* %46, i32 8)
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %51, %55
  %57 = call i32 @avio_wl32(i32* %48, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %61, %65
  %67 = mul nsw i32 16, %66
  %68 = call i32 @avio_skip(i32* %58, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @avio_wl64(i32* %69, i64 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @avio_wl32(i32* %72, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = call i32 @ff_parse_specific_params(%struct.TYPE_14__* %81, i32* %13, i32* %14, i32* %15)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %4
  %97 = load i32, i32* %14, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %96
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %14, align 4
  %110 = srem i32 %108, %109
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %99
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %118, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %112, %99
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sdiv i32 %124, %125
  %127 = call i32 @avio_wl32(i32* %123, i32 %126)
  br label %135

128:                                              ; preds = %96, %4
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @avio_wl32(i32* %129, i32 %133)
  br label %135

135:                                              ; preds = %128, %122
  %136 = load i32*, i32** %9, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i32, i32* @SEEK_SET, align 4
  %139 = call i32 @avio_seek(i32* %136, i64 %137, i32 %138)
  ret void
}

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_wl64(i32*, i64) #1

declare dso_local i32 @ff_parse_specific_params(%struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
