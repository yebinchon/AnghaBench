; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_udta_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_udta_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }

@MODE_3GP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"artist\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"titl\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gnre\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dscp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"albm\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"album\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cprt\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"yrrc\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@MODE_MOV = common dso_local global i32 0, align 4
@FF_MOV_FLAG_USE_MDTA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"\A9ART\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\A9nam\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\A9aut\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\A9alb\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\A9day\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\A9swr\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\A9des\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\A9cmt\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\A9gen\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\A9cpy\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\A9mak\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"\A9mod\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\A9xyz\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"\A9key\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"keywords\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"XMP_\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@FF_MOV_FLAG_DISABLE_CHPL = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"udta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @mov_write_udta_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_udta_tag(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %154

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MODE_3GP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = call i32 @mov_write_3gp_udta_tag(i32* %25, %struct.TYPE_13__* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = call i32 @mov_write_3gp_udta_tag(i32* %28, %struct.TYPE_13__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = call i32 @mov_write_3gp_udta_tag(i32* %31, %struct.TYPE_13__* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = call i32 @mov_write_3gp_udta_tag(i32* %34, %struct.TYPE_13__* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = call i32 @mov_write_3gp_udta_tag(i32* %37, %struct.TYPE_13__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = call i32 @mov_write_3gp_udta_tag(i32* %40, %struct.TYPE_13__* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = call i32 @mov_write_3gp_udta_tag(i32* %43, %struct.TYPE_13__* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i32 @mov_write_3gp_udta_tag(i32* %46, %struct.TYPE_13__* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @mov_write_loci_tag(%struct.TYPE_13__* %49, i32* %50)
  br label %120

52:                                               ; preds = %17
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MODE_MOV, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FF_MOV_FLAG_USE_MDTA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %111, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %66, i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %69, i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %72, i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %75, i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %78, i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %81, i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %84, i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %87, i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %90, i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %93, i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %96, i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 0)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %99, i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 0)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %102, i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i32 0)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @mov_write_string_metadata(%struct.TYPE_13__* %105, i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 0)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @mov_write_raw_metadata_tag(%struct.TYPE_13__* %108, i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  br label %119

111:                                              ; preds = %58, %52
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = call i32 @mov_write_meta_tag(i32* %112, %struct.TYPE_12__* %113, %struct.TYPE_13__* %114)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @mov_write_loci_tag(%struct.TYPE_13__* %116, i32* %117)
  br label %119

119:                                              ; preds = %111, %65
  br label %120

120:                                              ; preds = %119, %24
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FF_MOV_FLAG_DISABLE_CHPL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = call i32 @mov_write_chpl_tag(i32* %133, %struct.TYPE_13__* %134)
  br label %136

136:                                              ; preds = %132, %125, %120
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @avio_close_dyn_buf(i32* %137, i32** %11)
  store i32 %138, i32* %10, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 8
  %144 = call i32 @avio_wb32(i32* %141, i32 %143)
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @ffio_wfourcc(i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %147 = load i32*, i32** %5, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @avio_write(i32* %147, i32* %148, i32 %149)
  br label %151

151:                                              ; preds = %140, %136
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @av_free(i32* %152)
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %151, %15
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @mov_write_3gp_udta_tag(i32*, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @mov_write_loci_tag(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @mov_write_string_metadata(%struct.TYPE_13__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @mov_write_raw_metadata_tag(%struct.TYPE_13__*, i32*, i8*, i8*) #1

declare dso_local i32 @mov_write_meta_tag(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mov_write_chpl_tag(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
