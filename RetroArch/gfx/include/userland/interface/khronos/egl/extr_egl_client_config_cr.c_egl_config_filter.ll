; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_NONE = common dso_local global i64 0, align 8
@EGL_DONT_CARE = common dso_local global i64 0, align 8
@EGL_FORMAT_RGBA_8888_EXACT_KHR = common dso_local global i64 0, align 8
@EGL_FORMAT_RGBA_8888_KHR = common dso_local global i64 0, align 8
@EGL_FORMAT_RGB_565_EXACT_KHR = common dso_local global i64 0, align 8
@EGL_FORMAT_RGB_565_KHR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_config_filter(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %105, %14
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EGL_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %15
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %5, align 8
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %5, align 8
  %26 = load i64, i64* %24, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @egl_config_get_attrib(i32 %27, i64 %28, i64* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %3, align 4
  br label %107

33:                                               ; preds = %20
  %34 = load i64, i64* %6, align 8
  switch i64 %34, label %103 [
    i64 157, label %35
    i64 137, label %35
    i64 151, label %35
    i64 158, label %35
    i64 149, label %35
    i64 161, label %35
    i64 162, label %35
    i64 152, label %35
    i64 134, label %35
    i64 135, label %35
    i64 133, label %35
    i64 160, label %45
    i64 159, label %45
    i64 156, label %45
    i64 155, label %45
    i64 154, label %45
    i64 143, label %45
    i64 142, label %45
    i64 141, label %45
    i64 128, label %45
    i64 150, label %55
    i64 153, label %61
    i64 136, label %61
    i64 132, label %61
    i64 147, label %73
    i64 144, label %102
    i64 146, label %102
    i64 145, label %102
    i64 140, label %102
    i64 139, label %102
    i64 131, label %102
    i64 130, label %102
    i64 129, label %102
  ]

35:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33, %33, %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @EGL_DONT_CARE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %107

44:                                               ; preds = %39, %35
  br label %105

45:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33, %33
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @EGL_DONT_CARE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %107

54:                                               ; preds = %49, %45
  br label %105

55:                                               ; preds = %33
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %107

60:                                               ; preds = %55
  br label %105

61:                                               ; preds = %33, %33, %33
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @EGL_DONT_CARE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %107

72:                                               ; preds = %65, %61
  br label %105

73:                                               ; preds = %33
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @EGL_DONT_CARE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @platform_get_pixmap_info(i32 %80, i32* %10)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = call i32 (...) @UNREACHABLE()
  store i32 0, i32* %3, align 4
  br label %107

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @egl_config_match_pixmap_info(i32 %86, i32* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @egl_config_get_api_support(i32 %91)
  %93 = call i32 @platform_match_pixmap_api_support(i32 %90, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @khrn_platform_release_pixmap_info(i32 %96, i32* %10)
  store i32 0, i32* %3, align 4
  br label %107

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @khrn_platform_release_pixmap_info(i32 %99, i32* %10)
  br label %101

101:                                              ; preds = %98, %73
  br label %105

102:                                              ; preds = %33, %33, %33, %33, %33, %33, %33, %33
  br label %105

103:                                              ; preds = %33
  %104 = call i32 (...) @UNREACHABLE()
  br label %105

105:                                              ; preds = %103, %102, %101, %72, %60, %54, %44
  br label %15

106:                                              ; preds = %15
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %95, %83, %71, %59, %53, %43, %31, %13
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @egl_config_get_attrib(i32, i64, i64*) #1

declare dso_local i32 @UNREACHABLE(...) #1

declare dso_local i32 @platform_get_pixmap_info(i32, i32*) #1

declare dso_local i32 @egl_config_match_pixmap_info(i32, i32*) #1

declare dso_local i32 @platform_match_pixmap_api_support(i32, i32) #1

declare dso_local i32 @egl_config_get_api_support(i32) #1

declare dso_local i32 @khrn_platform_release_pixmap_info(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
