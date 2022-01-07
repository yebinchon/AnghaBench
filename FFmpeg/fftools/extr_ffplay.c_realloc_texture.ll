; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_realloc_texture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_realloc_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@renderer = common dso_local global i32 0, align 4
@SDL_TEXTUREACCESS_STREAMING = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Created %dx%d texture with %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64, i32, i32, i32, i32)* @realloc_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_texture(i32** %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %6
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @SDL_QueryTexture(i32* %25, i64* %14, i32* %15, i32* %16, i32* %17)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36, %32, %28, %23, %6
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @SDL_DestroyTexture(i32* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @renderer, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* @SDL_TEXTUREACCESS_STREAMING, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32* @SDL_CreateTexture(i32 %49, i64 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32**, i32*** %8, align 8
  store i32* %54, i32** %55, align 8
  %56 = icmp ne i32* %54, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %91

58:                                               ; preds = %48
  %59 = load i32**, i32*** %8, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @SDL_SetTextureBlendMode(i32* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %7, align 4
  br label %91

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @SDL_LockTexture(i32* %70, i32* null, i8** %18, i32* %19)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -1, i32* %7, align 4
  br label %91

74:                                               ; preds = %68
  %75 = load i8*, i8** %18, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = call i32 @memset(i8* %75, i32 0, i32 %78)
  %80 = load i32**, i32*** %8, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @SDL_UnlockTexture(i32* %81)
  br label %83

83:                                               ; preds = %74, %65
  %84 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @SDL_GetPixelFormatName(i64 %87)
  %89 = call i32 @av_log(i32* null, i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %83, %36
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %73, %64, %57
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @SDL_QueryTexture(i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @SDL_DestroyTexture(i32*) #1

declare dso_local i32* @SDL_CreateTexture(i32, i64, i32, i32, i32) #1

declare dso_local i64 @SDL_SetTextureBlendMode(i32*, i32) #1

declare dso_local i64 @SDL_LockTexture(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SDL_UnlockTexture(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SDL_GetPixelFormatName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
