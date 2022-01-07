; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_apetag.c_ff_ape_write_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_apetag.c_ff_ape_write_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Non ASCII keys are not allowed\0A\00", align 1
@APE_TAG_FOOTER_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"APETAGEX\00", align 1
@APE_TAG_VERSION = common dso_local global i32 0, align 4
@APE_TAG_FLAG_CONTAINS_HEADER = common dso_local global i32 0, align 4
@APE_TAG_FLAG_IS_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ape_write_tag(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %10, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %137

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i32 @ff_standardize_creation_time(%struct.TYPE_8__* %14)
  br label %16

16:                                               ; preds = %34, %30, %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %22 = call %struct.TYPE_9__* @av_dict_get(i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %20, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %3, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @string_is_ascii(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load i32, i32* @AV_LOG_WARNING, align 4
  %33 = call i32 @av_log(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %16

34:                                               ; preds = %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @avio_wl32(i32* %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @avio_wl32(i32* %42, i32 0)
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @avio_put_str(i32* %44, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @avio_write(i32* %49, i8* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %137

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @avio_close_dyn_buf(i32* %62, i8** %8)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %137

67:                                               ; preds = %61
  %68 = load i32, i32* @APE_TAG_FOOTER_BYTES, align 4
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @avio_write(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @APE_TAG_VERSION, align 4
  %79 = call i32 @avio_wl32(i32* %77, i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @avio_wl32(i32* %82, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @avio_wl32(i32* %87, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @APE_TAG_FLAG_CONTAINS_HEADER, align 4
  %94 = load i32, i32* @APE_TAG_FLAG_IS_HEADER, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @avio_wl32(i32* %92, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ffio_fill(i32* %99, i32 0, i32 8)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @APE_TAG_FOOTER_BYTES, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @avio_write(i32* %103, i8* %104, i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @avio_write(i32* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @APE_TAG_VERSION, align 4
  %117 = call i32 @avio_wl32(i32* %115, i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @avio_wl32(i32* %120, i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @avio_wl32(i32* %125, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @APE_TAG_FLAG_CONTAINS_HEADER, align 4
  %132 = call i32 @avio_wl32(i32* %130, i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @ffio_fill(i32* %135, i32 0, i32 8)
  br label %137

137:                                              ; preds = %67, %66, %60, %12
  %138 = load i32*, i32** %7, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @avio_close_dyn_buf(i32* %144, i8** %8)
  br label %146

146:                                              ; preds = %143, %140, %137
  %147 = call i32 @av_freep(i8** %8)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @av_dict_get(i32, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @string_is_ascii(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_put_str(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i8**) #1

declare dso_local i32 @ffio_fill(i32*, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
