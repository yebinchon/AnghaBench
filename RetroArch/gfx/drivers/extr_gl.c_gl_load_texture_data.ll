; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl_load_texture_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl_load_texture_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CAPS_MIPMAP = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@RARCH_GL_INTERNAL_FORMAT32 = common dso_local global i32 0, align 4
@RARCH_GL_TEXTURE_TYPE32 = common dso_local global i32 0, align 4
@RARCH_GL_FORMAT32 = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_4_4_4_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i8*, i32)* @gl_load_texture_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_load_texture_data(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %24 = call i32 (...) @video_driver_supports_rgba()
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %16, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %26, 4
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @gl2_wrap_type_to_enum(i32 %29)
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* @GL_CAPS_MIPMAP, align 4
  %32 = call i32 @gl_check_capability(i32 %31)
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %23, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %39 [
    i32 130, label %37
    i32 129, label %38
  ]

37:                                               ; preds = %35
  store i32 131, i32* %11, align 4
  br label %40

38:                                               ; preds = %35
  store i32 128, i32* %11, align 4
  br label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %38, %37
  br label %41

41:                                               ; preds = %40, %8
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %53 [
    i32 130, label %43
    i32 129, label %46
    i32 128, label %49
    i32 131, label %52
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* @GL_LINEAR, align 4
  store i32 %45, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @GL_NEAREST_MIPMAP_NEAREST, align 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @GL_NEAREST, align 4
  store i32 %48, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %56

49:                                               ; preds = %41
  %50 = load i32, i32* @GL_NEAREST, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* @GL_NEAREST, align 4
  store i32 %51, i32* %17, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %41, %52
  %54 = load i32, i32* @GL_LINEAR, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* @GL_LINEAR, align 4
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %53, %49, %46, %43
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @gl_bind_texture(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @glPixelStorei(i32 %62, i32 %63)
  %65 = load i32, i32* @GL_TEXTURE_2D, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %56
  %72 = load i32, i32* @GL_RGBA, align 4
  br label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @RARCH_GL_INTERNAL_FORMAT32, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* @GL_RGBA, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @RARCH_GL_TEXTURE_TYPE32, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @RARCH_GL_FORMAT32, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @GL_UNSIGNED_SHORT_4_4_4_4, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @glTexImage2D(i32 %65, i32 0, i32 %76, i32 %77, i32 %78, i32 0, i32 %89, i32 %97, i8* %98)
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* %23, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @GL_TEXTURE_2D, align 4
  %107 = call i32 @glGenerateMipmap(i32 %106)
  br label %108

108:                                              ; preds = %105, %102, %96
  ret void
}

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i32 @gl2_wrap_type_to_enum(i32) #1

declare dso_local i32 @gl_check_capability(i32) #1

declare dso_local i32 @gl_bind_texture(i32, i32, i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @glGenerateMipmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
