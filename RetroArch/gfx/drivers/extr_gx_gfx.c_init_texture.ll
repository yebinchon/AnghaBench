; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_init_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_init_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@g_tex = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@menu_tex = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GX_LINEAR = common dso_local global i32 0, align 4
@GX_NEAR = common dso_local global i32 0, align 4
@GX_TF_RGBA8 = common dso_local global i32 0, align 4
@GX_TF_RGB5A3 = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @init_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_texture(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  store i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_tex, i32 0, i32 1), i32** %11, align 8
  store i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @menu_tex, i32 0, i32 1), i32** %12, align 8
  %17 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @GX_LINEAR, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @GX_NEAR, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, -4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, -4
  store i32 %32, i32* %6, align 4
  %33 = call i32 @menu_display_get_fb_size(i32* %8, i32* %9, i64* %7)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_tex, i32 0, i32 0), align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @GX_TF_RGBA8, align 4
  br label %55

44:                                               ; preds = %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @GX_TF_RGB5A3, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @GX_TF_RGB565, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi i32 [ %43, %42 ], [ %54, %53 ]
  %57 = load i32, i32* @GX_CLAMP, align 4
  %58 = load i32, i32* @GX_CLAMP, align 4
  %59 = load i32, i32* @GX_FALSE, align 4
  %60 = call i32 @GX_InitTexObj(i32* %34, i32 %35, i32 %36, i32 %37, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @GX_InitTexObjFilterMode(i32* %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @menu_tex, i32 0, i32 0), align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @GX_TF_RGB5A3, align 4
  %70 = load i32, i32* @GX_CLAMP, align 4
  %71 = load i32, i32* @GX_CLAMP, align 4
  %72 = load i32, i32* @GX_FALSE, align 4
  %73 = call i32 @GX_InitTexObj(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @GX_InitTexObjFilterMode(i32* %74, i32 %75, i32 %76)
  %78 = call i32 (...) @GX_InvalidateTexAll()
  ret void
}

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjFilterMode(i32*, i32, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
