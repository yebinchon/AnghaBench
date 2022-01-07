; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ilst_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_ilst_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ilst\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\A9nam\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\A9ART\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"artist\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"aART\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"album_artist\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\A9wrt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"composer\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\A9alb\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"album\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\A9day\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\A9too\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"encoding_tool\00", align 1
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@LIBAVFORMAT_IDENT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"\A9cmt\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\A9gen\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"cprt\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\A9grp\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"grouping\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\A9lyr\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"lyrics\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ldes\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"synopsis\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"tvsh\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"tven\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"episode_id\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"tvnn\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"keyw\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"keywords\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"tves\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"episode_sort\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"tvsn\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"season_number\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"stik\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"media_type\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"hdvd\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"hd_video\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"pgap\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"gapless_playback\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"cpil\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"compilation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*)* @mov_write_ilst_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_ilst_tag(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @avio_tell(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @avio_wb32(i32* %10, i32 0)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ffio_wfourcc(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %14, i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %17, i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %20, i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %23, i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %26, i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %29, i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %32, i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @LIBAVFORMAT_IDENT, align 4
  %46 = call i32 @mov_write_string_tag(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %45, i32 0, i32 1)
  br label %47

47:                                               ; preds = %43, %36
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %49, i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %52, i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 1)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %55, i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 1)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %58, i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 1)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %61, i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 1)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %64, i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %67, i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 1)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %70, i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 1)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %73, i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 1)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %76, i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 1)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @mov_write_string_metadata(%struct.TYPE_8__* %79, i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32 1)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %82, i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 4)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %85, i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %88, i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 1)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %91, i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32 1)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %94, i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 1)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @mov_write_int8_metadata(%struct.TYPE_8__* %97, i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 1)
  %100 = load i32*, i32** %4, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = call i32 @mov_write_covr(i32* %100, %struct.TYPE_8__* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = call i32 @mov_write_trkn_tag(i32* %103, i32* %104, %struct.TYPE_8__* %105, i32 0)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = call i32 @mov_write_trkn_tag(i32* %107, i32* %108, %struct.TYPE_8__* %109, i32 1)
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = call i32 @mov_write_tmpo_tag(i32* %111, %struct.TYPE_8__* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @update_size(i32* %114, i32 %115)
  ret i32 %116
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_string_metadata(%struct.TYPE_8__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @mov_write_string_tag(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mov_write_int8_metadata(%struct.TYPE_8__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @mov_write_covr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mov_write_trkn_tag(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mov_write_tmpo_tag(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
