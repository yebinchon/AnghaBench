; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_readpng.c_read_png.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_readpng.c_read_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OOM allocating info structure\00", align 1
@PNG_HANDLE_CHUNK_ALWAYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"OOM allocating row buffers\00", align 1
@PNG_INTERLACE_ADAM7 = common dso_local global i64 0, align 8
@PNG_INTERLACE_ADAM7_PASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @read_png to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_png(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %14 = call i32* @png_create_read_struct(i32 %13, i32 0, i32 0, i32 0)
  store i32* %14, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @png_jmpbuf(i32* %19)
  %21 = call i64 @setjmp(i32 %20) #3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = call i32 @png_destroy_read_struct(i32** %4, i32** %5, i32* null)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @free(i32* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @free(i32* %34)
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %122

37:                                               ; preds = %18
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @png_init_io(i32* %38, i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @png_create_info_struct(i32* %41)
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @png_error(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @PNG_HANDLE_CHUNK_ALWAYS, align 4
  %51 = call i32 @png_set_keep_unknown_chunks(i32* %49, i32 %50, i32* null, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @png_read_info(i32* %52, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @png_get_rowbytes(i32* %55, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32* @malloc(i32 %58)
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32* @malloc(i32 %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %48
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %48
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @png_error(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @png_get_image_height(i32* %71, i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @png_get_interlace_type(i32* %74, i32* %75)
  %77 = load i64, i64* @PNG_INTERLACE_ADAM7, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @PNG_INTERLACE_ADAM7_PASSES, align 4
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 1, %81 ]
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @png_start_read_image(i32* %84)
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %110, %82
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @PNG_INTERLACE_ADAM7_PASSES, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @PNG_PASS_ROWS(i32 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %12, align 4
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %4, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @png_read_row(i32* %105, i32* %106, i32* %107)
  br label %100

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %86

113:                                              ; preds = %86
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @png_read_end(i32* %114, i32* %115)
  %117 = call i32 @png_destroy_read_struct(i32** %4, i32** %5, i32* null)
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @free(i32* %120)
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %113, %36, %17
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32* @png_create_read_struct(i32, i32, i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @png_init_io(i32*, i32*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @png_set_keep_unknown_chunks(i32*, i32, i32*, i32) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_rowbytes(i32*, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @png_get_image_height(i32*, i32*) #1

declare dso_local i64 @png_get_interlace_type(i32*, i32*) #1

declare dso_local i32 @png_start_read_image(i32*) #1

declare dso_local i32 @PNG_PASS_ROWS(i32, i32) #1

declare dso_local i32 @png_read_row(i32*, i32*, i32*) #1

declare dso_local i32 @png_read_end(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
