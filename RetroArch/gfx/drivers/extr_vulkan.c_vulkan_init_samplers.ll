; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_samplers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { float, float, i32, float, float, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32 }

@VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO = common dso_local global i32 0, align 4
@VK_FILTER_NEAREST = common dso_local global i8* null, align 8
@VK_SAMPLER_MIPMAP_MODE_NEAREST = common dso_local global i8* null, align 8
@VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE = common dso_local global i8* null, align 8
@VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = common dso_local global i32 0, align 4
@VK_FILTER_LINEAR = common dso_local global i8* null, align 8
@VK_LOD_CLAMP_NONE = common dso_local global float 0.000000e+00, align 4
@VK_SAMPLER_MIPMAP_MODE_LINEAR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @vulkan_init_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_init_samplers(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 88, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %6 = load i32, i32* @VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO, align 4
  %7 = sitofp i32 %6 to float
  store float %7, float* %5, align 8
  %8 = load i8*, i8** @VK_FILTER_NEAREST, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 8
  store i8* %8, i8** %9, align 8
  %10 = load i8*, i8** @VK_FILTER_NEAREST, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 7
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @VK_SAMPLER_MIPMAP_MODE_NEAREST, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 12
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 11
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** @VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 10
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store float 0.000000e+00, float* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store float 1.000000e+00, float* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 3
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store float 0.000000e+00, float* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE, align 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 9
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = call i32 @vkCreateSampler(i32 %32, %struct.TYPE_10__* %3, i32* null, i32* %35)
  %37 = load i8*, i8** @VK_FILTER_LINEAR, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 8
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @VK_FILTER_LINEAR, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 7
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = call i32 @vkCreateSampler(i32 %45, %struct.TYPE_10__* %3, i32* null, i32* %48)
  %50 = load float, float* @VK_LOD_CLAMP_NONE, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 4
  store float %50, float* %51, align 8
  %52 = load i8*, i8** @VK_FILTER_NEAREST, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 8
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @VK_FILTER_NEAREST, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 7
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @VK_SAMPLER_MIPMAP_MODE_NEAREST, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  store i8* %56, i8** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = call i32 @vkCreateSampler(i32 %62, %struct.TYPE_10__* %3, i32* null, i32* %65)
  %67 = load i8*, i8** @VK_FILTER_LINEAR, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 8
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** @VK_FILTER_LINEAR, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 7
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** @VK_SAMPLER_MIPMAP_MODE_LINEAR, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 6
  store i8* %71, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @vkCreateSampler(i32 %77, %struct.TYPE_10__* %3, i32* null, i32* %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vkCreateSampler(i32, %struct.TYPE_10__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
