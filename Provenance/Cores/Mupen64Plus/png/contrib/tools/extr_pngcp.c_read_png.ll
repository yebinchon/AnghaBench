; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_read_png.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_read_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32, i64, i32, i32, i8*, i32*, i32*, i32 }

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@display_error = common dso_local global i32 0, align 4
@display_warning = common dso_local global i32 0, align 4
@LIBPNG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create read struct\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create info struct\00", align 1
@read_function = common dso_local global i32 0, align 4
@PNGCP_TIME_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid row byte count from libpng\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@FIX_INDEX = common dso_local global i32 0, align 4
@IGNORE_INDEX = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_HANDLE_CHUNK_ALWAYS = common dso_local global i32 0, align 4
@PNG_INFO_PLTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*)* @read_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_png(%struct.display* %0, i8* %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.display*, %struct.display** %3, align 8
  %7 = call i32 @display_clean_read(%struct.display* %6)
  %8 = load %struct.display*, %struct.display** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @display_start_read(%struct.display* %8, i8* %9)
  %11 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %12 = load %struct.display*, %struct.display** %3, align 8
  %13 = load i32, i32* @display_error, align 4
  %14 = load i32, i32* @display_warning, align 4
  %15 = call i32* @png_create_read_struct(i32 %11, %struct.display* %12, i32 %13, i32 %14)
  %16 = load %struct.display*, %struct.display** %3, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load %struct.display*, %struct.display** %3, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.display*, %struct.display** %3, align 8
  %24 = load i32, i32* @LIBPNG_ERROR, align 4
  %25 = call i32 @display_log(%struct.display* %23, i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.display*, %struct.display** %3, align 8
  %28 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @png_create_info_struct(i32* %29)
  %31 = load %struct.display*, %struct.display** %3, align 8
  %32 = getelementptr inbounds %struct.display, %struct.display* %31, i32 0, i32 6
  store i32* %30, i32** %32, align 8
  %33 = load %struct.display*, %struct.display** %3, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.display*, %struct.display** %3, align 8
  %39 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @png_error(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %26
  %43 = load %struct.display*, %struct.display** %3, align 8
  %44 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.display*, %struct.display** %3, align 8
  %47 = load i32, i32* @read_function, align 4
  %48 = call i32 @png_set_read_fn(i32* %45, %struct.display* %46, i32 %47)
  %49 = load %struct.display*, %struct.display** %3, align 8
  %50 = load i32, i32* @PNGCP_TIME_READ, align 4
  %51 = call i32 @start_timer(%struct.display* %49, i32 %50)
  %52 = load %struct.display*, %struct.display** %3, align 8
  %53 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.display*, %struct.display** %3, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @png_read_png(i32* %54, i32* %57, i32 0, i32* null)
  %59 = load %struct.display*, %struct.display** %3, align 8
  %60 = load i32, i32* @PNGCP_TIME_READ, align 4
  %61 = call i32 @end_timer(%struct.display* %59, i32 %60)
  %62 = load %struct.display*, %struct.display** %3, align 8
  %63 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.display*, %struct.display** %3, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @png_get_image_width(i32* %64, i32* %67)
  %69 = load %struct.display*, %struct.display** %3, align 8
  %70 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.display*, %struct.display** %3, align 8
  %72 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.display*, %struct.display** %3, align 8
  %75 = getelementptr inbounds %struct.display, %struct.display* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @png_get_image_height(i32* %73, i32* %76)
  %78 = load %struct.display*, %struct.display** %3, align 8
  %79 = getelementptr inbounds %struct.display, %struct.display* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.display*, %struct.display** %3, align 8
  %81 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.display*, %struct.display** %3, align 8
  %84 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @png_get_color_type(i32* %82, i32* %85)
  %87 = load %struct.display*, %struct.display** %3, align 8
  %88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.display*, %struct.display** %3, align 8
  %90 = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.display*, %struct.display** %3, align 8
  %93 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @png_get_bit_depth(i32* %91, i32* %94)
  %96 = load %struct.display*, %struct.display** %3, align 8
  %97 = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.display*, %struct.display** %3, align 8
  %100 = getelementptr inbounds %struct.display, %struct.display* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @png_get_channels(i32* %98, i32* %101)
  %103 = mul nsw i32 %95, %102
  %104 = load %struct.display*, %struct.display** %3, align 8
  %105 = getelementptr inbounds %struct.display, %struct.display* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.display*, %struct.display** %3, align 8
  %107 = getelementptr inbounds %struct.display, %struct.display* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.display*, %struct.display** %3, align 8
  %110 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @png_get_rowbytes(i32* %108, i32* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %42
  %116 = load %struct.display*, %struct.display** %3, align 8
  %117 = getelementptr inbounds %struct.display, %struct.display* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @png_error(i32* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %42
  %121 = load i32, i32* @MAX_SIZE, align 4
  %122 = load %struct.display*, %struct.display** %3, align 8
  %123 = getelementptr inbounds %struct.display, %struct.display* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  %126 = load i32, i32* %5, align 4
  %127 = sdiv i32 %125, %126
  %128 = load %struct.display*, %struct.display** %3, align 8
  %129 = getelementptr inbounds %struct.display, %struct.display* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load %struct.display*, %struct.display** %3, align 8
  %134 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @png_error(i32* %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %120
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.display*, %struct.display** %3, align 8
  %140 = getelementptr inbounds %struct.display, %struct.display* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = load %struct.display*, %struct.display** %3, align 8
  %144 = getelementptr inbounds %struct.display, %struct.display* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load %struct.display*, %struct.display** %3, align 8
  %148 = getelementptr inbounds %struct.display, %struct.display* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.display*, %struct.display** %3, align 8
  %150 = call i32 @display_clean_read(%struct.display* %149)
  %151 = load %struct.display*, %struct.display** %3, align 8
  %152 = getelementptr inbounds %struct.display, %struct.display* %151, i32 0, i32 5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %152, align 8
  ret void
}

declare dso_local i32 @display_clean_read(%struct.display*) #1

declare dso_local i32 @display_start_read(%struct.display*, i8*) #1

declare dso_local i32* @png_create_read_struct(i32, %struct.display*, i32, i32) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @png_set_read_fn(i32*, %struct.display*, i32) #1

declare dso_local i32 @start_timer(%struct.display*, i32) #1

declare dso_local i32 @png_read_png(i32*, i32*, i32, i32*) #1

declare dso_local i32 @end_timer(%struct.display*, i32) #1

declare dso_local i32 @png_get_image_width(i32*, i32*) #1

declare dso_local i32 @png_get_image_height(i32*, i32*) #1

declare dso_local i64 @png_get_color_type(i32*, i32*) #1

declare dso_local i32 @png_get_bit_depth(i32*, i32*) #1

declare dso_local i32 @png_get_channels(i32*, i32*) #1

declare dso_local i32 @png_get_rowbytes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
