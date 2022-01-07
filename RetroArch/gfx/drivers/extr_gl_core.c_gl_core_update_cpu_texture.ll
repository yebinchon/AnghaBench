; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_update_cpu_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_update_cpu_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.gl_core_streamed_texture = type { i32, i32, i64 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_RGB565 = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_R = common dso_local global i32 0, align 4
@GL_BLUE = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_B = common dso_local global i32 0, align 4
@GL_RED = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.gl_core_streamed_texture*, i8*, i32, i32, i32)* @gl_core_update_cpu_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_core_update_cpu_texture(%struct.TYPE_5__* %0, %struct.gl_core_streamed_texture* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.gl_core_streamed_texture*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.gl_core_streamed_texture* %1, %struct.gl_core_streamed_texture** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %15 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %21 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %18, %6
  %25 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %26 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %31 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %30, i32 0, i32 2
  %32 = call i32 @glDeleteTextures(i32 1, i64* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %35 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %34, i32 0, i32 2
  %36 = call i32 @glGenTextures(i32 1, i64* %35)
  %37 = load i32, i32* @GL_TEXTURE_2D, align 4
  %38 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %39 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @glBindTexture(i32 %37, i64 %40)
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @GL_RGBA8, align 4
  br label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @GL_RGB565, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @glTexStorage2D(i32 %42, i32 1, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %59 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %62 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %52
  %69 = load i32, i32* @GL_TEXTURE_2D, align 4
  %70 = load i32, i32* @GL_TEXTURE_SWIZZLE_R, align 4
  %71 = load i32, i32* @GL_BLUE, align 4
  %72 = call i32 @glTexParameteri(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @GL_TEXTURE_2D, align 4
  %74 = load i32, i32* @GL_TEXTURE_SWIZZLE_B, align 4
  %75 = load i32, i32* @GL_RED, align 4
  %76 = call i32 @glTexParameteri(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %52
  br label %84

78:                                               ; preds = %18
  %79 = load i32, i32* @GL_TEXTURE_2D, align 4
  %80 = load %struct.gl_core_streamed_texture*, %struct.gl_core_streamed_texture** %8, align 8
  %81 = getelementptr inbounds %struct.gl_core_streamed_texture, %struct.gl_core_streamed_texture* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @glBindTexture(i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %78, %77
  %85 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %86 = call i32 @glBindBuffer(i32 %85, i32 0)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %84
  %93 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %94 = load i32, i32* %12, align 4
  %95 = lshr i32 %94, 2
  %96 = call i32 @glPixelStorei(i32 %93, i32 %95)
  %97 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %98 = call i32 @glPixelStorei(i32 %97, i32 4)
  %99 = load i32, i32* @GL_TEXTURE_2D, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @GL_RGBA, align 4
  %103 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @glTexSubImage2D(i32 %99, i32 0, i32 0, i32 0, i32 %100, i32 %101, i32 %102, i32 %103, i8* %104)
  br label %120

106:                                              ; preds = %84
  %107 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %108 = load i32, i32* %12, align 4
  %109 = lshr i32 %108, 1
  %110 = call i32 @glPixelStorei(i32 %107, i32 %109)
  %111 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %112 = call i32 @glPixelStorei(i32 %111, i32 2)
  %113 = load i32, i32* @GL_TEXTURE_2D, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @GL_RGB, align 4
  %117 = load i32, i32* @GL_UNSIGNED_SHORT_5_6_5, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @glTexSubImage2D(i32 %113, i32 0, i32 0, i32 0, i32 %114, i32 %115, i32 %116, i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %106, %92
  ret void
}

declare dso_local i32 @glDeleteTextures(i32, i64*) #1

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
