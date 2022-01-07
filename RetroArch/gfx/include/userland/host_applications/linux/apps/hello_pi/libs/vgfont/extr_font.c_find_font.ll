; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_find_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_font.c_find_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }

@fonts = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"font\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@default_font = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not load font from memory: %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not convert font '%s' at size %d\00", align 1
@fname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @find_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_font(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 6
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  br label %14

14:                                               ; preds = %27, %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* %25, i32** %3, align 8
  br label %93

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %10, align 8
  br label %14

31:                                               ; preds = %14
  %32 = call %struct.TYPE_6__* @vcos_malloc(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %93

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i64 @vgft_font_init(i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @VCOS_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = call i32 @vcos_free(%struct.TYPE_6__* %47)
  store i32* null, i32** %3, align 8
  br label %93

49:                                               ; preds = %36
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_font, i32 0, i32 1), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_font, i32 0, i32 0), align 4
  %54 = call i64 @vgft_font_load_mem(i32* %51, i32 %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @VCOS_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (i8*, i64, ...) @GX_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = call i32 @vgft_font_term(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = call i32 @vcos_free(%struct.TYPE_6__* %64)
  store i32* null, i32** %3, align 8
  br label %93

66:                                               ; preds = %49
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @vgft_font_convert_glyphs(i32* %68, i32 %69, i32 %70, i32 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @VCOS_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load i32, i32* @fname, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, i64, ...) @GX_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %78, i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @vgft_font_term(i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = call i32 @vcos_free(%struct.TYPE_6__* %84)
  store i32* null, i32** %3, align 8
  br label %93

86:                                               ; preds = %66
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** @fonts, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32* %92, i32** %3, align 8
  br label %93

93:                                               ; preds = %86, %76, %58, %46, %35, %23
  %94 = load i32*, i32** %3, align 8
  ret i32* %94
}

declare dso_local %struct.TYPE_6__* @vcos_malloc(i32, i8*) #1

declare dso_local i64 @vgft_font_init(i32*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_6__*) #1

declare dso_local i64 @vgft_font_load_mem(i32*, i32, i32) #1

declare dso_local i32 @GX_LOG(i8*, i64, ...) #1

declare dso_local i32 @vgft_font_term(i32*) #1

declare dso_local i64 @vgft_font_convert_glyphs(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
