; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_system_item.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_system_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__**, i32*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@system_metadata_pack_key = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@multiple_desc_ul = common dso_local global i32 0, align 4
@mxf_essence_container_uls = common dso_local global %struct.TYPE_15__* null, align 8
@system_metadata_package_set_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @mxf_write_system_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_system_item(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i32 88, i32* %8, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @system_metadata_pack_key, align 4
  %25 = call i32 @avio_write(i32* %23, i32 %24, i32 16)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @klv_encode_ber4_length(i32* %26, i32 57)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %70, %1
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %37, i64 %39
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 4
  store i32 %50, i32* %8, align 4
  br label %69

51:                                               ; preds = %34
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, 2
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %51
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @avio_w8(i32* %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @avio_w8(i32* %77, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @avio_w8(i32* %82, i32 0)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @avio_wb16(i32* %84, i32 0)
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %90, %91
  %93 = and i32 %92, 65535
  %94 = call i32 @avio_wb16(i32* %86, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %73
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @multiple_desc_ul, align 4
  %102 = call i32 @avio_write(i32* %100, i32 %101, i32 16)
  br label %120

103:                                              ; preds = %73
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %106, i64 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %9, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mxf_essence_container_uls, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @avio_write(i32* %111, i32 %118, i32 16)
  br label %120

120:                                              ; preds = %103, %99
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @avio_w8(i32* %121, i32 0)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @avio_wb64(i32* %123, i32 0)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @avio_wb64(i32* %125, i32 0)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @avio_w8(i32* %127, i32 129)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @av_timecode_get_smpte_from_framenum(%struct.TYPE_16__* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @avio_wb32(i32* %133, i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @avio_wb32(i32* %136, i32 0)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @avio_wb64(i32* %138, i32 0)
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* @system_metadata_package_set_key, align 4
  %142 = call i32 @avio_write(i32* %140, i32 %141, i32 16)
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @klv_encode_ber4_length(i32* %143, i32 35)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @avio_w8(i32* %145, i32 131)
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @avio_wb16(i32* %147, i32 32)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = call i32 @mxf_write_umid(%struct.TYPE_14__* %149, i32 1)
  ret void
}

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @klv_encode_ber4_length(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @av_timecode_get_smpte_from_framenum(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @mxf_write_umid(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
