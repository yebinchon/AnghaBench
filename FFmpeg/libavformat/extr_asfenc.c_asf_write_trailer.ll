; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_asf_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfenc.c_asf_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @asf_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_write_trailer(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @flush_packet(%struct.TYPE_14__* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = call i64 @avio_tell(%struct.TYPE_16__* %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %23
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @update_index(%struct.TYPE_14__* %38, i64 %42, i32 0, i32 0, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %102

47:                                               ; preds = %37
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @asf_write_index(%struct.TYPE_14__* %48, i32 %51, i32 %54, i64 %57)
  br label %59

59:                                               ; preds = %47, %32, %23
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = call i32 @avio_flush(%struct.TYPE_16__* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68, %59
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = call i32 @put_chunk(%struct.TYPE_14__* %78, i32 17700, i32 0, i32 0)
  br label %98

80:                                               ; preds = %68
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i64 @avio_tell(%struct.TYPE_16__* %83)
  store i64 %84, i64* %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* @SEEK_SET, align 4
  %89 = call i32 @avio_seek(%struct.TYPE_16__* %87, i32 0, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = call i32 @asf_write_header1(%struct.TYPE_14__* %90, i64 %91, i64 %96)
  br label %98

98:                                               ; preds = %80, %77
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = call i32 @av_freep(i32* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %45
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @flush_packet(%struct.TYPE_14__*) #1

declare dso_local i64 @avio_tell(%struct.TYPE_16__*) #1

declare dso_local i32 @update_index(%struct.TYPE_14__*, i64, i32, i32, i32) #1

declare dso_local i32 @asf_write_index(%struct.TYPE_14__*, i32, i32, i64) #1

declare dso_local i32 @avio_flush(%struct.TYPE_16__*) #1

declare dso_local i32 @put_chunk(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @asf_write_header1(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
