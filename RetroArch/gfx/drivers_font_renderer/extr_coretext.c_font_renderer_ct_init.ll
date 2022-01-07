; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_coretext.c_font_renderer_ct_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_coretext.c_font_renderer_ct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCFStringEncodingASCII = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFURLPOSIXPathStyle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, float)* @font_renderer_ct_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @font_renderer_ct_init(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  store i8 0, i8* %5, align 1
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = call i64 @calloc(i32 1, i32 1)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @path_is_valid(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %2
  store i8 1, i8* %5, align 1
  br label %50

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @kCFStringEncodingASCII, align 4
  %24 = call i32* @CFStringCreateWithCString(i32* null, i8* %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8 1, i8* %5, align 1
  br label %50

28:                                               ; preds = %21
  %29 = load i32, i32* @kCFAllocatorDefault, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @kCFURLPOSIXPathStyle, align 4
  %32 = call i32* @CFURLCreateWithFileSystemPath(i32 %29, i32* %30, i32 %31, i32 0)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @CGDataProviderCreateWithURL(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @CGFontCreateWithDataProvider(i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load float, float* %4, align 4
  %39 = call i32* @CTFontCreateWithGraphicsFont(i32* %37, float %38, i32* null, i32* null)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  store i8 1, i8* %5, align 1
  br label %50

43:                                               ; preds = %28
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @coretext_font_renderer_create_atlas(i32* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i8 1, i8* %5, align 1
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %48, %42, %27, %20
  %51 = load i8, i8* %5, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @font_renderer_ct_free(i8* %54)
  store i8* null, i8** %11, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @CFRelease(i32* %60)
  store i32* null, i32** %6, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @CFRelease(i32* %66)
  store i32* null, i32** %7, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @CFRelease(i32* %72)
  store i32* null, i32** %8, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @CFRelease(i32* %78)
  store i32* null, i32** %9, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @CFRelease(i32* %84)
  store i32* null, i32** %10, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i8*, i8** %11, align 8
  ret i8* %87
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32* @CFStringCreateWithCString(i32*, i8*, i32) #1

declare dso_local i32* @CFURLCreateWithFileSystemPath(i32, i32*, i32, i32) #1

declare dso_local i32* @CGDataProviderCreateWithURL(i32*) #1

declare dso_local i32* @CGFontCreateWithDataProvider(i32*) #1

declare dso_local i32* @CTFontCreateWithGraphicsFont(i32*, float, i32*, i32*) #1

declare dso_local i32 @coretext_font_renderer_create_atlas(i32*, i8*) #1

declare dso_local i32 @font_renderer_ct_free(i8*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
