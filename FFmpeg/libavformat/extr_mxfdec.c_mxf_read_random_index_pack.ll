; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_random_index_pack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_random_index_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@mxf_random_index_pack_key = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid RIP KLV length\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"bad FooterPartition in RIP - ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @mxf_read_random_index_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_read_random_index_pack(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %135

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = call i32 @avio_size(%struct.TYPE_16__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = sdiv i32 %30, 105
  %32 = mul nsw i32 %31, 12
  %33 = add nsw i32 %32, 28
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = call i32 @FFMIN(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 45, i32* %7, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 4
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i32 @avio_seek(%struct.TYPE_16__* %39, i32 %41, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = call i32 @avio_rb32(%struct.TYPE_16__* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %21
  br label %126

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* @SEEK_SET, align 4
  %64 = call i32 @avio_seek(%struct.TYPE_16__* %59, i32 %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = call i64 @klv_read_packet(%struct.TYPE_14__* %8, %struct.TYPE_16__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @mxf_random_index_pack_key, align 4
  %74 = call i32 @IS_KLV_KEY(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %56
  br label %126

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %84, 4
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 4
  %90 = srem i32 %89, 12
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %82, %77
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = load i32, i32* @AV_LOG_WARNING, align 4
  %95 = call i32 @av_log(%struct.TYPE_15__* %93, i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %126

96:                                               ; preds = %86
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 12
  %103 = call i32 @avio_skip(%struct.TYPE_16__* %99, i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = call i32 @avio_rb64(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load i32, i32* %5, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %96
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = load i32, i32* @AV_LOG_WARNING, align 4
  %122 = call i32 @av_log(%struct.TYPE_15__* %120, i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %96
  br label %126

126:                                              ; preds = %125, %92, %76, %55
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SEEK_SET, align 4
  %134 = call i32 @avio_seek(%struct.TYPE_16__* %129, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %20
  ret void
}

declare dso_local i32 @avio_size(%struct.TYPE_16__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_16__*) #1

declare dso_local i64 @klv_read_packet(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @IS_KLV_KEY(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avio_rb64(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
