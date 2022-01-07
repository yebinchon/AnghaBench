; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_aiff_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffenc.c_aiff_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__**, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i64 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @aiff_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiff_write_trailer(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %18, i64 %21
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %7, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = call i32 @avio_tell(%struct.TYPE_15__* %26)
  store i32 %27, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = call i32 @avio_w8(%struct.TYPE_15__* %32, i32 0)
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %36
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @avio_seek(%struct.TYPE_15__* %46, i32 %49, i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = sub nsw i32 %57, 12
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %58, %61
  %63 = call i32 @avio_wb32(%struct.TYPE_15__* %52, i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SEEK_SET, align 4
  %69 = call i32 @avio_seek(%struct.TYPE_15__* %64, i32 %67, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = sub nsw i32 %75, 4
  %77 = call i32 @avio_wb32(%struct.TYPE_15__* %70, i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SEEK_SET, align 4
  %81 = call i32 @avio_seek(%struct.TYPE_15__* %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %45
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = call i32 @put_id3v2_tags(%struct.TYPE_16__* %87, %struct.TYPE_18__* %88)
  store i32 %89, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %115

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %45
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = call i32 @avio_tell(%struct.TYPE_15__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SEEK_SET, align 4
  %102 = call i32 @avio_seek(%struct.TYPE_15__* %97, i32 %100, i32 %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %104, %107
  %109 = sub nsw i32 %108, 4
  %110 = call i32 @avio_wb32(%struct.TYPE_15__* %103, i32 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = call i32 @avio_flush(%struct.TYPE_15__* %111)
  br label %113

113:                                              ; preds = %94, %36
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %91
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @avio_tell(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_w8(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @put_id3v2_tags(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @avio_flush(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
