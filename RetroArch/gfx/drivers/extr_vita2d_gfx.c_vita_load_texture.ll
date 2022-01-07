; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_load_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i32, i32* }
%struct.vita2d_texture = type { i32 }

@SCE_GXM_TEXTURE_FORMAT_U8U8U8U8_ARGB = common dso_local global i32 0, align 4
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@SCE_GXM_TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @vita_load_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vita_load_texture(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.texture_image*, align 8
  %16 = alloca %struct.vita2d_texture*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.texture_image*
  store %struct.texture_image* %18, %struct.texture_image** %15, align 8
  %19 = load %struct.texture_image*, %struct.texture_image** %15, align 8
  %20 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.texture_image*, %struct.texture_image** %15, align 8
  %23 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCE_GXM_TEXTURE_FORMAT_U8U8U8U8_ARGB, align 4
  %26 = call %struct.vita2d_texture* @vita2d_create_empty_texture_format(i32 %21, i32 %24, i32 %25)
  store %struct.vita2d_texture* %26, %struct.vita2d_texture** %16, align 8
  %27 = load %struct.vita2d_texture*, %struct.vita2d_texture** %16, align 8
  %28 = icmp ne %struct.vita2d_texture* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %86

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load %struct.vita2d_texture*, %struct.vita2d_texture** %16, align 8
  %40 = load i32, i32* @SCE_GXM_TEXTURE_FILTER_LINEAR, align 4
  %41 = load i32, i32* @SCE_GXM_TEXTURE_FILTER_LINEAR, align 4
  %42 = call i32 @vita2d_texture_set_filters(%struct.vita2d_texture* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.vita2d_texture*, %struct.vita2d_texture** %16, align 8
  %45 = call i32 @vita2d_texture_get_stride(%struct.vita2d_texture* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = udiv i32 %46, 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.vita2d_texture*, %struct.vita2d_texture** %16, align 8
  %49 = call i32* @vita2d_texture_get_datap(%struct.vita2d_texture* %48)
  store i32* %49, i32** %13, align 8
  %50 = load %struct.texture_image*, %struct.texture_image** %15, align 8
  %51 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %14, align 8
  %53 = load %struct.texture_image*, %struct.texture_image** %15, align 8
  %54 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %80, %43
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.texture_image*, %struct.texture_image** %15, align 8
  %59 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy_neon(i32* %68, i32* %74, i32 %78)
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %56

83:                                               ; preds = %56
  %84 = load %struct.vita2d_texture*, %struct.vita2d_texture** %16, align 8
  %85 = ptrtoint %struct.vita2d_texture* %84 to i64
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %83, %29
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.vita2d_texture* @vita2d_create_empty_texture_format(i32, i32, i32) #1

declare dso_local i32 @vita2d_texture_set_filters(%struct.vita2d_texture*, i32, i32) #1

declare dso_local i32 @vita2d_texture_get_stride(%struct.vita2d_texture*) #1

declare dso_local i32* @vita2d_texture_get_datap(%struct.vita2d_texture*) #1

declare dso_local i32 @memcpy_neon(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
