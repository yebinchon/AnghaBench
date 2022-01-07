; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ffprobe_show_pixel_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ffprobe_show_pixel_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@SECTION_ID_PIXEL_FORMATS = common dso_local global i32 0, align 4
@SECTION_ID_PIXEL_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"nb_components\00", align 1
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"log2_chroma_w\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"log2_chroma_h\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bits_per_pixel\00", align 1
@do_show_pixel_format_flags = common dso_local global i64 0, align 8
@SECTION_ID_PIXEL_FORMAT_FLAGS = common dso_local global i32 0, align 4
@BE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"big_endian\00", align 1
@PAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@BITSTREAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"bitstream\00", align 1
@HWACCEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"hwaccel\00", align 1
@PLANAR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"planar\00", align 1
@RGB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@ALPHA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@do_show_pixel_format_components = common dso_local global i64 0, align 8
@SECTION_ID_PIXEL_FORMAT_COMPONENTS = common dso_local global i32 0, align 4
@SECTION_ID_PIXEL_FORMAT_COMPONENT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"bit_depth\00", align 1
@PSEUDOPAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ffprobe_show_pixel_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffprobe_show_pixel_formats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @SECTION_ID_PIXEL_FORMATS, align 4
  %8 = call i32 @writer_print_section_header(i32* %6, i32 %7)
  br label %9

9:                                                ; preds = %123, %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call %struct.TYPE_7__* @av_pix_fmt_desc_next(%struct.TYPE_7__* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %126

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @SECTION_ID_PIXEL_FORMAT, align 4
  %16 = call i32 @writer_print_section_header(i32* %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @print_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @print_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %45

29:                                               ; preds = %13
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @print_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @print_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %48

45:                                               ; preds = %29, %13
  %46 = call i32 @print_str_opt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @print_str_opt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 @av_get_bits_per_pixel(%struct.TYPE_7__* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @print_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %58

56:                                               ; preds = %48
  %57 = call i32 @print_str_opt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i64, i64* @do_show_pixel_format_flags, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @SECTION_ID_PIXEL_FORMAT_FLAGS, align 4
  %64 = call i32 @writer_print_section_header(i32* %62, i32 %63)
  %65 = load i32, i32* @BE, align 4
  %66 = call i32 @PRINT_PIX_FMT_FLAG(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @PAL, align 4
  %68 = call i32 @PRINT_PIX_FMT_FLAG(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32, i32* @BITSTREAM, align 4
  %70 = call i32 @PRINT_PIX_FMT_FLAG(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %71 = load i32, i32* @HWACCEL, align 4
  %72 = call i32 @PRINT_PIX_FMT_FLAG(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i32, i32* @PLANAR, align 4
  %74 = call i32 @PRINT_PIX_FMT_FLAG(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i32, i32* @RGB, align 4
  %76 = call i32 @PRINT_PIX_FMT_FLAG(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %77 = load i32, i32* @ALPHA, align 4
  %78 = call i32 @PRINT_PIX_FMT_FLAG(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @writer_print_section_footer(i32* %79)
  br label %81

81:                                               ; preds = %61, %58
  %82 = load i64, i64* @do_show_pixel_format_components, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %84
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* @SECTION_ID_PIXEL_FORMAT_COMPONENTS, align 4
  %92 = call i32 @writer_print_section_header(i32* %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %117, %89
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %93
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @SECTION_ID_PIXEL_FORMAT_COMPONENT, align 4
  %102 = call i32 @writer_print_section_header(i32* %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @print_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @print_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @writer_print_section_footer(i32* %115)
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %93

120:                                              ; preds = %93
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @writer_print_section_footer(i32* %121)
  br label %123

123:                                              ; preds = %120, %84, %81
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @writer_print_section_footer(i32* %124)
  br label %9

126:                                              ; preds = %9
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @writer_print_section_footer(i32* %127)
  ret void
}

declare dso_local i32 @writer_print_section_header(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_next(%struct.TYPE_7__*) #1

declare dso_local i32 @print_str(i8*, i32) #1

declare dso_local i32 @print_int(i8*, i32) #1

declare dso_local i32 @print_str_opt(i8*, i8*) #1

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_7__*) #1

declare dso_local i32 @PRINT_PIX_FMT_FLAG(i32, i8*) #1

declare dso_local i32 @writer_print_section_footer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
