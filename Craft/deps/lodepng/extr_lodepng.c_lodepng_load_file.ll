; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_load_file.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_load_file(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 78, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SEEK_END, align 4
  %20 = call i32 @fseek(i32* %18, i32 0, i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ftell(i32* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @rewind(i32* %23)
  %25 = load i64*, i64** %6, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @lodepng_malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @fread(i8* %38, i32 1, i64 %39, i32* %40)
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %32, %17
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 83, i32* %4, align 4
  br label %54

53:                                               ; preds = %49, %43
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @lodepng_malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
