; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_cafenc.c_caf_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__**, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pakt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @caf_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caf_write_trailer(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %15, i64 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i32 @avio_tell(%struct.TYPE_16__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @avio_seek(%struct.TYPE_16__* %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  %41 = sub nsw i32 %40, 8
  %42 = call i32 @avio_wb64(%struct.TYPE_16__* %35, i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @avio_seek(%struct.TYPE_16__* %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %95, label %51

51:                                               ; preds = %26
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = call i32 @ffio_wfourcc(%struct.TYPE_16__* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 24
  %59 = call i32 @avio_wb64(%struct.TYPE_16__* %54, i32 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @avio_wb64(%struct.TYPE_16__* %60, i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @samples_per_packet(i32 %71, i32 %74, i32 %77)
  %79 = mul nsw i32 %68, %78
  %80 = call i32 @avio_wb64(%struct.TYPE_16__* %65, i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i32 @avio_wb32(%struct.TYPE_16__* %81, i32 0)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = call i32 @avio_wb32(%struct.TYPE_16__* %83, i32 0)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @avio_write(%struct.TYPE_16__* %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %51, %26
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = call i32 @avio_flush(%struct.TYPE_16__* %96)
  br label %98

98:                                               ; preds = %95, %1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = call i32 @av_freep(i32* %100)
  ret i32 0
}

declare dso_local i32 @avio_tell(%struct.TYPE_16__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @samples_per_packet(i32, i32, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @avio_flush(%struct.TYPE_16__*) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
