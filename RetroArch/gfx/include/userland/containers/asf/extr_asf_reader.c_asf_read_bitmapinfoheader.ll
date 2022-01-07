; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_bitmapinfoheader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_bitmapinfoheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Encoded Image Width\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Encoded Image Height\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Reserved Flags\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Format Data Size\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Image Width\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Image Height\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Bits Per Pixel Count\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Compression ID: %4.4s\00", align 1
@VC_CONTAINER_CODEC_UNKNOWN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"Image Size\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Horizontal Pixels Per Meter\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Vertical Pixels Per Meter\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Colors Used Count\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Important Colors Count\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@ASF_EXTRADATA_MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"extradata truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32)* @asf_read_bitmapinfoheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_bitmapinfoheader(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 51
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %14, i32* %4, align 4
  br label %159

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ASF_SKIP_U32(i32* %16, i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ASF_SKIP_U32(i32* %19, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ASF_SKIP_U8(i32* %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ASF_READ_U16(i32* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 40
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %15
  %35 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %35, i32* %4, align 4
  br label %159

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @ASF_READ_U32(i32* %37, i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 40
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %36
  %48 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %48, i32* %4, align 4
  br label %159

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @ASF_READ_U32(i32* %50, i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i8* %52, i8** %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @ASF_READ_U32(i32* %60, i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i8* %62, i8** %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ASF_SKIP_U16(i32* %70, i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ASF_SKIP_U16(i32* %73, i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = bitcast i32* %10 to i8*
  %79 = call i32 @ASF_READ_BYTES(i32* %76, i32 %77, i8* %78, i32 4)
  %80 = load i32*, i32** %5, align 8
  %81 = bitcast i32* %10 to i8*
  %82 = call i32 @LOG_FORMAT(i32* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @vfw_fourcc_to_codec(i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VC_CONTAINER_CODEC_UNKNOWN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %49
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i64 %98, i64* %102, align 8
  br label %103

103:                                              ; preds = %96, %49
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @ASF_SKIP_U32(i32* %104, i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @ASF_SKIP_U32(i32* %107, i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @ASF_SKIP_U32(i32* %110, i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ASF_SKIP_U32(i32* %113, i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @ASF_SKIP_U32(i32* %116, i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 40
  store i32 %120, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %103
  %123 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %123, i32* %4, align 4
  br label %159

124:                                              ; preds = %103
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @ASF_EXTRADATA_MAX, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @LOG_DEBUG(i32* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %131 = load i32, i32* @ASF_EXTRADATA_MAX, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  store i8* %139, i8** %143, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @ASF_READ_BYTES(i32* %144, i32 %145, i8* %150, i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  store i32 %152, i32* %156, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @STREAM_STATUS(i32* %157)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %132, %122, %47, %34, %13
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ASF_SKIP_U32(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U8(i32*, i32, i8*) #1

declare dso_local i32 @ASF_READ_U16(i32*, i32, i8*) #1

declare dso_local i8* @ASF_READ_U32(i32*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U16(i32*, i32, i8*) #1

declare dso_local i32 @ASF_READ_BYTES(i32*, i32, i8*, i32) #1

declare dso_local i32 @LOG_FORMAT(i32*, i8*, i8*) #1

declare dso_local i64 @vfw_fourcc_to_codec(i32) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
