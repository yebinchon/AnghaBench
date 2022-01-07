; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { float, i64 }

@GL_LINEAR = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_RGBA4 = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_4_4_4_4 = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_R = common dso_local global i32 0, align 4
@GL_BLUE = common dso_local global i32 0, align 4
@GL_TEXTURE_SWIZZLE_B = common dso_local global i32 0, align 4
@GL_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @gl_core_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_core_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %17 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i64 4, i64 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %16, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %127

28:                                               ; preds = %6
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_8__* %29, i32 0)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @GL_LINEAR, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @GL_NEAREST, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = call i32 @glDeleteTextures(i32 1, i64* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = call i32 @glGenTextures(i32 1, i64* %52)
  %54 = load i32, i32* @GL_TEXTURE_2D, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @glBindTexture(i32 %54, i64 %57)
  %59 = load i32, i32* @GL_TEXTURE_2D, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @GL_RGBA8, align 4
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @GL_RGBA4, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @glTexStorage2D(i32 %59, i32 1, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @glPixelStorei(i32 %71, i32 %72)
  %74 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %75 = call i32 @glBindBuffer(i32 %74, i32 0)
  %76 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %77 = call i32 @glPixelStorei(i32 %76, i32 0)
  %78 = load i32, i32* @GL_TEXTURE_2D, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @GL_RGBA, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %66
  %85 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  br label %88

86:                                               ; preds = %66
  %87 = load i32, i32* @GL_UNSIGNED_SHORT_4_4_4_4, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @glTexSubImage2D(i32 %78, i32 0, i32 0, i32 0, i32 %79, i32 %80, i32 %81, i32 %89, i8* %90)
  %92 = load i32, i32* @GL_TEXTURE_2D, align 4
  %93 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %94 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %95 = call i32 @glTexParameteri(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @GL_TEXTURE_2D, align 4
  %97 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %98 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %99 = call i32 @glTexParameteri(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @GL_TEXTURE_2D, align 4
  %101 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @glTexParameteri(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @GL_TEXTURE_2D, align 4
  %105 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @glTexParameteri(i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %88
  %111 = load i32, i32* @GL_TEXTURE_2D, align 4
  %112 = load i32, i32* @GL_TEXTURE_SWIZZLE_R, align 4
  %113 = load i32, i32* @GL_BLUE, align 4
  %114 = call i32 @glTexParameteri(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @GL_TEXTURE_2D, align 4
  %116 = load i32, i32* @GL_TEXTURE_SWIZZLE_B, align 4
  %117 = load i32, i32* @GL_RED, align 4
  %118 = call i32 @glTexParameteri(i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %110, %88
  %120 = load i32, i32* @GL_TEXTURE_2D, align 4
  %121 = call i32 @glBindTexture(i32 %120, i64 0)
  %122 = load float, float* %12, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store float %122, float* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = call i32 @gl_core_context_bind_hw_render(%struct.TYPE_8__* %125, i32 1)
  br label %127

127:                                              ; preds = %119, %27
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @gl_core_context_bind_hw_render(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @glDeleteTextures(i32, i64*) #1

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glTexStorage2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
