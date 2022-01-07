; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_load_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_load_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i32, i32 }
%struct.texture_image = type { i32, i32, i32* }

@vulkan_load_texture.checkerboard = internal constant [64 x i32] [i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216, i32 -1, i32 -16777216], align 16
@VK_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@VULKAN_TEXTURE_STATIC = common dso_local global i32 0, align 4
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i32)* @vulkan_load_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vulkan_load_texture(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vk_texture*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.texture_image*, align 8
  %13 = alloca %struct.vk_texture, align 4
  %14 = alloca %struct.vk_texture, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.vk_texture* null, %struct.vk_texture** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.texture_image*
  store %struct.texture_image* %18, %struct.texture_image** %12, align 8
  %19 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %20 = icmp ne %struct.texture_image* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %95

22:                                               ; preds = %4
  %23 = call i64 @calloc(i32 1, i32 8)
  %24 = inttoptr i64 %23 to %struct.vk_texture*
  store %struct.vk_texture* %24, %struct.vk_texture** %10, align 8
  %25 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %26 = icmp ne %struct.vk_texture* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %95

28:                                               ; preds = %22
  %29 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %30 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %35 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %40 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38, %33, %28
  %44 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  %47 = load i32, i32* @VULKAN_TEXTURE_STATIC, align 4
  %48 = call i64 @vulkan_create_texture(i32* %45, i32* null, i32 8, i32 8, i32 %46, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @vulkan_load_texture.checkerboard, i64 0, i64 0), i32* null, i32 %47)
  %49 = bitcast %struct.vk_texture* %13 to i64*
  store i64 %48, i64* %49, align 4
  %50 = bitcast %struct.vk_texture* %44 to i8*
  %51 = bitcast %struct.vk_texture* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %53 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %55 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %92

56:                                               ; preds = %38
  %57 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %60 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %63 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  %66 = load %struct.texture_image*, %struct.texture_image** %12, align 8
  %67 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @VULKAN_TEXTURE_STATIC, align 4
  %70 = call i64 @vulkan_create_texture(i32* %58, i32* null, i32 %61, i32 %64, i32 %65, i32* %68, i32* null, i32 %69)
  %71 = bitcast %struct.vk_texture* %14 to i64*
  store i64 %70, i64* %71, align 4
  %72 = bitcast %struct.vk_texture* %57 to i8*
  %73 = bitcast %struct.vk_texture* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 8, i1 false)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %56
  %82 = phi i1 [ true, %56 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %85 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %91 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %43
  %93 = load %struct.vk_texture*, %struct.vk_texture** %10, align 8
  %94 = ptrtoint %struct.vk_texture* %93 to i64
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %92, %27, %21
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @vulkan_create_texture(i32*, i32*, i32, i32, i32, i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
