; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_choose_pix_fmts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_choose_pix_fmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@AVFILTER_AUTO_CONVERT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@FF_COMPLIANCE_UNOFFICIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*)* @choose_pix_fmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @choose_pix_fmts(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_13__* @av_dict_get(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @av_opt_set(%struct.TYPE_14__* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AVFILTER_AUTO_CONVERT_NONE, align 4
  %40 = call i32 @avfilter_graph_set_auto_convert(i32 %38, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %149

49:                                               ; preds = %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @av_get_pix_fmt_name(i32 %55)
  %57 = call i8* @av_strdup(i8* %56)
  store i8* %57, i8** %2, align 8
  br label %149

58:                                               ; preds = %28
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @choose_pixel_fmt(i32 %69, %struct.TYPE_14__* %72, %struct.TYPE_15__* %75, i64 %80)
  %82 = call i8* @av_get_pix_fmt_name(i32 %81)
  %83 = call i8* @av_strdup(i8* %82)
  store i8* %83, i8** %2, align 8
  br label %149

84:                                               ; preds = %58
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = icmp ne %struct.TYPE_15__* %87, null
  br i1 %88, label %89, label %148

89:                                               ; preds = %84
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %148

96:                                               ; preds = %89
  store i32* null, i32** %7, align 8
  %97 = call i64 @avio_open_dyn_buf(i32** %7)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @exit_program(i32 1)
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %6, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @FF_COMPLIANCE_UNOFFICIAL, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %101
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = call i32* @get_compliance_unofficial_pix_fmts(i32 %119, i32* %120)
  store i32* %121, i32** %6, align 8
  br label %122

122:                                              ; preds = %114, %101
  br label %123

123:                                              ; preds = %136, %122
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @av_get_pix_fmt_name(i32 %131)
  store i8* %132, i8** %10, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @avio_printf(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %6, align 8
  br label %123

139:                                              ; preds = %123
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @avio_close_dyn_buf(i32* %140, i8** %8)
  store i32 %141, i32* %9, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load i8*, i8** %8, align 8
  store i8* %147, i8** %2, align 8
  br label %149

148:                                              ; preds = %89, %84
  store i8* null, i8** %2, align 8
  br label %149

149:                                              ; preds = %148, %139, %66, %49, %48
  %150 = load i8*, i8** %2, align 8
  ret i8* %150
}

declare dso_local %struct.TYPE_13__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @avfilter_graph_set_auto_convert(i32, i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @choose_pixel_fmt(i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i64) #1

declare dso_local i64 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32* @get_compliance_unofficial_pix_fmts(i32, i32*) #1

declare dso_local i32 @avio_printf(i32*, i8*, i8*) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
