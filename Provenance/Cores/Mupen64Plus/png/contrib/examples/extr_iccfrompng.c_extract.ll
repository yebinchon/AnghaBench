; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_iccfrompng.c_extract.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_iccfrompng.c_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"iccfrompng: version library mismatch?\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"OOM allocating info structure\00", align 1
@PNG_INFO_iCCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"OOM allocating profile buffer\00", align 1
@no_profile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64*)* @extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extract(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %13 = call i32* @png_create_read_struct(i32 %12, i32 0, i32 0, i32 0)
  store i32* %13, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %70

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @png_jmpbuf(i32* %21)
  %23 = call i64 @setjmp(i32 %22) #3
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @png_destroy_read_struct(i32** %6, i32** %7, i32* null)
  store i32* null, i32** %3, align 8
  br label %70

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @png_init_io(i32* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @png_create_info_struct(i32* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @png_error(i32* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @png_read_info(i32* %39, i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = call i32 @png_get_iCCP(i32* %42, i32* %43, i32* %9, i32* %10, i32** %11, i64* %44)
  %46 = load i32, i32* @PNG_INFO_iCCP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %38
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32* @malloc(i64 %51)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memcpy(i32* %56, i32* %57, i64 %59)
  br label %64

61:                                               ; preds = %49
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @png_error(i32* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  br label %67

65:                                               ; preds = %38
  %66 = load i32*, i32** @no_profile, align 8
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = call i32 @png_destroy_read_struct(i32** %6, i32** %7, i32* null)
  %69 = load i32*, i32** %8, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %67, %25, %17
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32* @png_create_read_struct(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32*) #1

declare dso_local i32 @png_init_io(i32*, i32*) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_error(i32*, i8*) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_iCCP(i32*, i32*, i32*, i32*, i32**, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
