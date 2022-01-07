; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@WTV_TIMELINE = common dso_local global i32 0, align 4
@WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS = common dso_local global i32 0, align 4
@WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB = common dso_local global i32 0, align 4
@WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB = common dso_local global i32 0, align 4
@WTV_TABLE_0_ENTRIES_TIME = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@WTV_SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_trailer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load i32, i32* @WTV_TIMELINE, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @finish_file(%struct.TYPE_11__* %16, i32 %17, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %111

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_tell(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @write_table_entries_events(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load i32, i32* @WTV_TIMELINE_TABLE_0_ENTRIES_EVENTS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @finish_file(%struct.TYPE_11__* %29, i32 %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %111

35:                                               ; preds = %24
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @avio_tell(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @write_table_entries_attrib(%struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load i32, i32* @WTV_TABLE_0_ENTRIES_LEGACY_ATTRIB, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @finish_file(%struct.TYPE_11__* %40, i32 %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %111

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @avio_tell(i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @write_table_redirector_legacy_attrib(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load i32, i32* @WTV_TABLE_0_REDIRECTOR_LEGACY_ATTRIB, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @finish_file(%struct.TYPE_11__* %51, i32 %52, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %111

57:                                               ; preds = %46
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @avio_tell(i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i32 @write_table_entries_time(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load i32, i32* @WTV_TABLE_0_ENTRIES_TIME, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @finish_file(%struct.TYPE_11__* %62, i32 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %111

68:                                               ; preds = %57
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @avio_tell(i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @write_root_table(%struct.TYPE_11__* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @avio_tell(i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @avio_seek(i32* %76, i32 48, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @avio_wl32(i32* %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @SEEK_CUR, align 4
  %84 = call i32 @avio_seek(i32* %82, i32 4, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %88 = ashr i32 %86, %87
  %89 = call i32 @avio_wl32(i32* %85, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @SEEK_SET, align 4
  %92 = call i32 @avio_seek(i32* %90, i32 92, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %96 = ashr i32 %94, %95
  %97 = call i32 @avio_wl32(i32* %93, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @avio_flush(i32* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @av_free(i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @av_free(i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = call i32 @av_packet_unref(i32* %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %68, %67, %56, %45, %34, %23
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @finish_file(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @write_table_entries_events(%struct.TYPE_11__*) #1

declare dso_local i32 @write_table_entries_attrib(%struct.TYPE_11__*) #1

declare dso_local i32 @write_table_redirector_legacy_attrib(%struct.TYPE_11__*) #1

declare dso_local i32 @write_table_entries_time(%struct.TYPE_11__*) #1

declare dso_local i32 @write_root_table(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @av_free(i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
