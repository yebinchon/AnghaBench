; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvenc.c_flv_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"FLV\00", align 1
@FLV_HEADER_FLAG_HASAUDIO = common dso_local global i32 0, align 4
@FLV_HEADER_FLAG_HASVIDEO = common dso_local global i32 0, align 4
@FLV_NO_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @flv_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_write_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = call i32 @avio_write(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call i32 @avio_w8(%struct.TYPE_16__* %14, i32 1)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = load i32, i32* @FLV_HEADER_FLAG_HASAUDIO, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = mul nsw i32 %17, %24
  %26 = load i32, i32* @FLV_HEADER_FLAG_HASVIDEO, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = mul nsw i32 %26, %33
  %35 = add nsw i32 %25, %34
  %36 = call i32 @avio_w8(%struct.TYPE_16__* %16, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = call i32 @avio_wb32(%struct.TYPE_16__* %37, i32 9)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i32 @avio_wb32(%struct.TYPE_16__* %39, i32 0)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %74, %1
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %50, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = call i32 @avio_w8(%struct.TYPE_16__* %61, i32 8)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = call i32 @avio_wb24(%struct.TYPE_16__* %63, i32 0)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = call i32 @avio_wb24(%struct.TYPE_16__* %65, i32 0)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = call i32 @avio_wb32(%struct.TYPE_16__* %67, i32 0)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @avio_wb32(%struct.TYPE_16__* %69, i32 11)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i32 5, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %41

77:                                               ; preds = %41
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FLV_NO_METADATA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %90

87:                                               ; preds = %77
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = call i32 @write_metadata(%struct.TYPE_17__* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 %103
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = call i32 @flv_write_codec_header(%struct.TYPE_17__* %98, %struct.TYPE_18__* %107, i32 0)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = call i32 @avio_tell(%struct.TYPE_16__* %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  ret i32 0
}

declare dso_local i32 @avio_write(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @avio_w8(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_wb24(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @write_metadata(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @flv_write_codec_header(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
