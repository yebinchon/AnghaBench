; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng.c_readpng_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_readpng.c_readpng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_ptr = common dso_local global i32 0, align 4
@info_ptr = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@bit_depth = common dso_local global i32 0, align 4
@color_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readpng_init(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [8 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @fread(i32* %9, i32 1, i32 8, i32* %10)
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %13 = call i64 @png_sig_cmp(i32* %12, i32 0, i32 8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = call i32 @png_get_libpng_ver(i32* null)
  %18 = call i32 @png_create_read_struct(i32 %17, i32* null, i32* null, i32* null)
  store i32 %18, i32* @png_ptr, align 4
  %19 = load i32, i32* @png_ptr, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 4, i32* %4, align 4
  br label %52

22:                                               ; preds = %16
  %23 = load i32, i32* @png_ptr, align 4
  %24 = call i32 @png_create_info_struct(i32 %23)
  store i32 %24, i32* @info_ptr, align 4
  %25 = load i32, i32* @info_ptr, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @png_destroy_read_struct(i32* @png_ptr, i32* null, i32* null)
  store i32 4, i32* %4, align 4
  br label %52

29:                                               ; preds = %22
  %30 = load i32, i32* @png_ptr, align 4
  %31 = call i32 @png_jmpbuf(i32 %30)
  %32 = call i64 @setjmp(i32 %31) #3
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @png_destroy_read_struct(i32* @png_ptr, i32* @info_ptr, i32* null)
  store i32 2, i32* %4, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load i32, i32* @png_ptr, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @png_init_io(i32 %37, i32* %38)
  %40 = load i32, i32* @png_ptr, align 4
  %41 = call i32 @png_set_sig_bytes(i32 %40, i32 8)
  %42 = load i32, i32* @png_ptr, align 4
  %43 = load i32, i32* @info_ptr, align 4
  %44 = call i32 @png_read_info(i32 %42, i32 %43)
  %45 = load i32, i32* @png_ptr, align 4
  %46 = load i32, i32* @info_ptr, align 4
  %47 = call i32 @png_get_IHDR(i32 %45, i32 %46, i32* @width, i32* @height, i32* @bit_depth, i32* @color_type, i32* null, i32* null, i32* null)
  %48 = load i32, i32* @width, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @height, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %36, %34, %27, %21, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @png_sig_cmp(i32*, i32, i32) #1

declare dso_local i32 @png_create_read_struct(i32, i32*, i32*, i32*) #1

declare dso_local i32 @png_get_libpng_ver(i32*) #1

declare dso_local i32 @png_create_info_struct(i32) #1

declare dso_local i32 @png_destroy_read_struct(i32*, i32*, i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @png_jmpbuf(i32) #1

declare dso_local i32 @png_init_io(i32, i32*) #1

declare dso_local i32 @png_set_sig_bytes(i32, i32) #1

declare dso_local i32 @png_read_info(i32, i32) #1

declare dso_local i32 @png_get_IHDR(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
