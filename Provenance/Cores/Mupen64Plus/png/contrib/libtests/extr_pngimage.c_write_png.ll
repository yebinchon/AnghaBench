; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_write_png.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_write_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@display_error = common dso_local global i32 0, align 4
@display_warning = common dso_local global i32 0, align 4
@APP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create write png_struct\00", align 1
@write_function = common dso_local global i32 0, align 4
@PNG_TRANSFORM_PACKING = common dso_local global i32 0, align 4
@PNG_TRANSFORM_STRIP_FILLER = common dso_local global i32 0, align 4
@PNG_TRANSFORM_STRIP_FILLER_BEFORE = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i32, i32)* @write_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_png(%struct.display* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.display*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.display*, %struct.display** %4, align 8
  %9 = call i32 @display_clean_write(%struct.display* %8)
  %10 = load %struct.display*, %struct.display** %4, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 10
  %12 = call i32 @buffer_start_write(i32* %11)
  %13 = load %struct.display*, %struct.display** %4, align 8
  %14 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.display*, %struct.display** %4, align 8
  %17 = getelementptr inbounds %struct.display, %struct.display* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %19 = load %struct.display*, %struct.display** %4, align 8
  %20 = load i32, i32* @display_error, align 4
  %21 = load i32, i32* @display_warning, align 4
  %22 = call i32* @png_create_write_struct(i32 %18, %struct.display* %19, i32 %20, i32 %21)
  %23 = load %struct.display*, %struct.display** %4, align 8
  %24 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.display*, %struct.display** %4, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.display*, %struct.display** %4, align 8
  %31 = load i32, i32* @APP_ERROR, align 4
  %32 = call i32 @display_log(%struct.display* %30, i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.display*, %struct.display** %4, align 8
  %35 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.display*, %struct.display** %4, align 8
  %38 = getelementptr inbounds %struct.display, %struct.display* %37, i32 0, i32 10
  %39 = load i32, i32* @write_function, align 4
  %40 = call i32 @png_set_write_fn(i32* %36, i32* %38, i32 %39, i32* null)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PNG_TRANSFORM_PACKING, align 4
  %43 = load i32, i32* @PNG_TRANSFORM_STRIP_FILLER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PNG_TRANSFORM_STRIP_FILLER_BEFORE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %33
  %50 = load %struct.display*, %struct.display** %4, align 8
  %51 = getelementptr inbounds %struct.display, %struct.display* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PNG_TRANSFORM_STRIP_FILLER, align 4
  %55 = load i32, i32* @PNG_TRANSFORM_STRIP_FILLER_BEFORE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %49
  %65 = load %struct.display*, %struct.display** %4, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.display*, %struct.display** %4, align 8
  %70 = getelementptr inbounds %struct.display, %struct.display* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.display*, %struct.display** %4, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.display*, %struct.display** %4, align 8
  %76 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.display*, %struct.display** %4, align 8
  %80 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.display*, %struct.display** %4, align 8
  %83 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.display*, %struct.display** %4, align 8
  %86 = getelementptr inbounds %struct.display, %struct.display* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @png_set_IHDR(i32* %67, i32 %68, i32 %71, i32 %74, i32 %77, i32 %78, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %64, %33
  %90 = load %struct.display*, %struct.display** %4, align 8
  %91 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @png_write_png(i32* %92, i32 %93, i32 %94, i32* null)
  %96 = load %struct.display*, %struct.display** %4, align 8
  %97 = call i32 @display_clean_write(%struct.display* %96)
  ret void
}

declare dso_local i32 @display_clean_write(%struct.display*) #1

declare dso_local i32 @buffer_start_write(i32*) #1

declare dso_local i32* @png_create_write_struct(i32, %struct.display*, i32, i32) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*) #1

declare dso_local i32 @png_set_write_fn(i32*, i32*, i32, i32*) #1

declare dso_local i32 @png_set_IHDR(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @png_write_png(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
