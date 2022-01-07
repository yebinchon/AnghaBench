; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_font/extr_main.c_render_subtitle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_font/extr_main.c_render_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRAPHICS_RESOURCE_WIDTH = common dso_local global i32 0, align 4
@GRAPHICS_RESOURCE_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @render_subtitle(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @graphics_get_resource_size(i32 %26, i32* %18, i32* %19)
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %141

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %94, %31
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sub nsw i64 %41, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @graphics_resource_text_dimensions_ext(i32 %38, i8* %39, i32 %48, i32* %13, i32* %14, i32 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i64, i64* %16, align 8
  store i64 %54, i64* %6, align 8
  br label %141

55:                                               ; preds = %37
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sub nsw i64 %62, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @strnchr(i8* %60, i32 %69, i8 signext 32)
  store i8* %70, i8** %20, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %59
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %8, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %15, align 8
  br label %92

83:                                               ; preds = %59
  %84 = load i8*, i8** %20, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = load i8*, i8** %20, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %15, align 8
  br label %92

92:                                               ; preds = %83, %73
  br label %94

93:                                               ; preds = %55
  br label %95

94:                                               ; preds = %92
  br label %32

95:                                               ; preds = %93, %32
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %100, %101
  %103 = ashr i32 %102, 1
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* @GRAPHICS_RESOURCE_WIDTH, align 4
  %108 = load i32, i32* @GRAPHICS_RESOURCE_HEIGHT, align 4
  %109 = call i32 @GRAPHICS_RGBA32(i32 255, i32 255, i32 255, i32 255)
  %110 = call i32 @GRAPHICS_RGBA32(i32 0, i32 0, i32 0, i32 128)
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = load i8*, i8** %15, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %113, %118
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* %10, align 4
  %122 = call i64 @graphics_resource_render_text_ext(i32 %99, i32 %103, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i8* %111, i32 %120, i32 %121)
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %98
  %126 = load i64, i64* %16, align 8
  store i64 %126, i64* %6, align 8
  br label %141

127:                                              ; preds = %98
  br label %128

128:                                              ; preds = %127, %95
  %129 = load i32, i32* %7, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %17, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i64 @render_subtitle(i32 %129, i8* %130, i32 %135, i32 %136, i32 %139)
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %128, %125, %53, %30
  %142 = load i64, i64* %6, align 8
  ret i64 %142
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @graphics_get_resource_size(i32, i32*, i32*) #1

declare dso_local i64 @graphics_resource_text_dimensions_ext(i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #1

declare dso_local i64 @graphics_resource_render_text_ext(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @GRAPHICS_RGBA32(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
