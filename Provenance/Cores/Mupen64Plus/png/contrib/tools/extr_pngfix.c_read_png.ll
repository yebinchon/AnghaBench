; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_png.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_read_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@error_handler = common dso_local global i32 0, align 4
@warning_handler = common dso_local global i32 0, align 4
@LIBPNG_ERROR_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OOM allocating png_struct\00", align 1
@INTERNAL_ERROR = common dso_local global i32 0, align 4
@read_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"OOM allocating info structure\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" INFO\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.control*)* @read_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_png(%struct.control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.control*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.control* %0, %struct.control** %3, align 8
  store i32* null, i32** %5, align 8
  %11 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %12 = load %struct.control*, %struct.control** %3, align 8
  %13 = load i32, i32* @error_handler, align 4
  %14 = load i32, i32* @warning_handler, align 4
  %15 = call i32* @png_create_read_struct(i32 %11, %struct.control* %12, i32 %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.control*, %struct.control** %3, align 8
  %20 = getelementptr inbounds %struct.control, %struct.control* %19, i32 0, i32 0
  %21 = load i32, i32* @LIBPNG_ERROR_CODE, align 4
  %22 = call i32 @log_error(%struct.TYPE_4__* %20, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @INTERNAL_ERROR, align 4
  %24 = load %struct.control*, %struct.control** %3, align 8
  %25 = getelementptr inbounds %struct.control, %struct.control* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @LIBPNG_ERROR_CODE, align 4
  store i32 %29, i32* %2, align 4
  br label %107

30:                                               ; preds = %1
  %31 = load %struct.control*, %struct.control** %3, align 8
  %32 = getelementptr inbounds %struct.control, %struct.control* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @setjmp(i32 %34) #3
  store volatile i32 %35, i32* %6, align 4
  %36 = load volatile i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.control*, %struct.control** %3, align 8
  %41 = load i32, i32* @read_callback, align 4
  %42 = call i32 @png_set_read_fn(i32* %39, %struct.control* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @png_create_info_struct(i32* %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @png_error(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.control*, %struct.control** %3, align 8
  %52 = getelementptr inbounds %struct.control, %struct.control* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @png_read_info(i32* %62, i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @png_get_image_height(i32* %65, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @png_set_interlace_handling(i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @png_start_read_image(i32* %70)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %86, %61
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %82, %76
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  %81 = icmp sgt i32 %79, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @png_read_row(i32* %83, i32* null, i32* null)
  br label %78

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %72

89:                                               ; preds = %72
  %90 = load %struct.control*, %struct.control** %3, align 8
  %91 = getelementptr inbounds %struct.control, %struct.control* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @png_read_end(i32* %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %30
  %105 = call i32 @png_destroy_read_struct(i32** %4, i32** %5, i32* null)
  %106 = load volatile i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %18
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32* @png_create_read_struct(i32, %struct.control*, i32, i32) #1

declare dso_local i32 @log_error(%struct.TYPE_4__*, i32, i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @png_set_read_fn(i32*, %struct.control*, i32) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_image_height(i32*, i32*) #1

declare dso_local i32 @png_set_interlace_handling(i32*) #1

declare dso_local i32 @png_start_read_image(i32*) #1

declare dso_local i32 @png_read_row(i32*, i32*, i32*) #1

declare dso_local i32 @png_read_end(i32*, i32*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
