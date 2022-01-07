; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_write_png.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_write_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32, i8*, i32*, i32, i32*, i64, i64, i64 }

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@display_error = common dso_local global i32 0, align 4
@display_warning = common dso_local global i32 0, align 4
@LIBPNG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create write png_struct\00", align 1
@write_function = common dso_local global i32 0, align 4
@SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IDAT-size\00", align 1
@PNGCP_TIME_WRITE = common dso_local global i32 0, align 4
@APP_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: write failed (%s)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IGNORE_INDEX = common dso_local global i32 0, align 4
@PNG_FILTER_TYPE_BASE = common dso_local global i32 0, align 4
@PNG_HANDLE_CHUNK_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*)* @write_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_png(%struct.display* %0, i8* %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.display* %0, %struct.display** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.display*, %struct.display** %3, align 8
  %8 = call i32 @display_clean_write(%struct.display* %7)
  %9 = load %struct.display*, %struct.display** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @display_start_write(%struct.display* %9, i8* %10)
  %12 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %13 = load %struct.display*, %struct.display** %3, align 8
  %14 = load i32, i32* @display_error, align 4
  %15 = load i32, i32* @display_warning, align 4
  %16 = call i32* @png_create_write_struct(i32 %12, %struct.display* %13, i32 %14, i32 %15)
  %17 = load %struct.display*, %struct.display** %3, align 8
  %18 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 5
  store i32* %16, i32** %18, align 8
  %19 = load %struct.display*, %struct.display** %3, align 8
  %20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.display*, %struct.display** %3, align 8
  %25 = load i32, i32* @LIBPNG_ERROR, align 4
  %26 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %24, i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.display*, %struct.display** %3, align 8
  %29 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.display*, %struct.display** %3, align 8
  %32 = load i32, i32* @write_function, align 4
  %33 = call i32 @png_set_write_fn(i32* %30, %struct.display* %31, i32 %32, i32* null)
  %34 = load %struct.display*, %struct.display** %3, align 8
  %35 = call i32 @text_restore(%struct.display* %34)
  %36 = load %struct.display*, %struct.display** %3, align 8
  %37 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.display*, %struct.display** %3, align 8
  %40 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 8
  store i64 %38, i64* %40, align 8
  %41 = load %struct.display*, %struct.display** %3, align 8
  %42 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.display*, %struct.display** %3, align 8
  %44 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.display*, %struct.display** %3, align 8
  %46 = getelementptr inbounds %struct.display, %struct.display* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SEARCH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.display*, %struct.display** %3, align 8
  %53 = call i32 @search_compression(%struct.display* %52)
  br label %57

54:                                               ; preds = %27
  %55 = load %struct.display*, %struct.display** %3, align 8
  %56 = call i32 @set_compression(%struct.display* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.display*, %struct.display** %3, align 8
  %59 = call i32 @set_ICC_profile_compression(%struct.display* %58)
  %60 = load %struct.display*, %struct.display** %3, align 8
  %61 = call i32 @set_text_compression(%struct.display* %60)
  %62 = load %struct.display*, %struct.display** %3, align 8
  %63 = call i64 @get_option(%struct.display* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.display*, %struct.display** %3, align 8
  %67 = getelementptr inbounds %struct.display, %struct.display* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @png_set_IDAT_size(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.display*, %struct.display** %3, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.display*, %struct.display** %3, align 8
  %75 = load i32, i32* @PNGCP_TIME_WRITE, align 4
  %76 = call i32 @start_timer(%struct.display* %74, i32 %75)
  %77 = load %struct.display*, %struct.display** %3, align 8
  %78 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.display*, %struct.display** %3, align 8
  %81 = getelementptr inbounds %struct.display, %struct.display* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @png_write_png(i32* %79, i32 %82, i32 0, i32* null)
  %84 = load %struct.display*, %struct.display** %3, align 8
  %85 = load i32, i32* @PNGCP_TIME_WRITE, align 4
  %86 = call i32 @end_timer(%struct.display* %84, i32 %85)
  %87 = load %struct.display*, %struct.display** %3, align 8
  %88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %71
  %92 = load %struct.display*, %struct.display** %3, align 8
  %93 = getelementptr inbounds %struct.display, %struct.display* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %6, align 8
  %95 = load %struct.display*, %struct.display** %3, align 8
  %96 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 3
  store i32* null, i32** %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @fclose(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load %struct.display*, %struct.display** %3, align 8
  %102 = load i32, i32* @APP_ERROR, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %108

106:                                              ; preds = %100
  %107 = load i8*, i8** %4, align 8
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %105 ], [ %107, %106 ]
  %110 = load i32, i32* @errno, align 4
  %111 = call i32 @strerror(i32 %110)
  %112 = call i32 (%struct.display*, i32, i8*, ...) @display_log(%struct.display* %101, i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %111)
  br label %113

113:                                              ; preds = %108, %91
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.display*, %struct.display** %3, align 8
  %116 = call i32 @display_clean_write(%struct.display* %115)
  %117 = load %struct.display*, %struct.display** %3, align 8
  %118 = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %118, align 8
  ret void
}

declare dso_local i32 @display_clean_write(%struct.display*) #1

declare dso_local i32 @display_start_write(%struct.display*, i8*) #1

declare dso_local i32* @png_create_write_struct(i32, %struct.display*, i32, i32) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, ...) #1

declare dso_local i32 @png_set_write_fn(i32*, %struct.display*, i32, i32*) #1

declare dso_local i32 @text_restore(%struct.display*) #1

declare dso_local i32 @search_compression(%struct.display*) #1

declare dso_local i32 @set_compression(%struct.display*) #1

declare dso_local i32 @set_ICC_profile_compression(%struct.display*) #1

declare dso_local i32 @set_text_compression(%struct.display*) #1

declare dso_local i64 @get_option(%struct.display*, i8*, i32*) #1

declare dso_local i32 @png_set_IDAT_size(i32*, i32) #1

declare dso_local i32 @start_timer(%struct.display*, i32) #1

declare dso_local i32 @png_write_png(i32*, i32, i32, i32*) #1

declare dso_local i32 @end_timer(%struct.display*, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
