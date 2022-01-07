; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_render_pass.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_render_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO = common dso_local global i32 0, align 4
@VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL = common dso_local global i8* null, align 8
@VK_SAMPLE_COUNT_1_BIT = common dso_local global i32 0, align 4
@VK_ATTACHMENT_LOAD_OP_CLEAR = common dso_local global i32 0, align 4
@VK_ATTACHMENT_STORE_OP_STORE = common dso_local global i32 0, align 4
@VK_ATTACHMENT_LOAD_OP_DONT_CARE = common dso_local global i32 0, align 4
@VK_ATTACHMENT_STORE_OP_DONT_CARE = common dso_local global i32 0, align 4
@VK_PIPELINE_BIND_POINT_GRAPHICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @vulkan_init_render_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_init_render_pass(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %9 = load i32, i32* @VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO, align 4
  store i32 %9, i32* %8, align 8
  %10 = bitcast %struct.TYPE_14__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %14 = load i8*, i8** @VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %13, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @VK_SAMPLE_COUNT_1_BIT, align 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @VK_ATTACHMENT_LOAD_OP_CLEAR, align 4
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @VK_ATTACHMENT_STORE_OP_STORE, align 4
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @VK_ATTACHMENT_LOAD_OP_DONT_CARE, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @VK_ATTACHMENT_STORE_OP_DONT_CARE, align 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load i8*, i8** @VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** @VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @VK_PIPELINE_BIND_POINT_GRAPHICS, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = call i32 @vkCreateRenderPass(i32 %48, %struct.TYPE_12__* %3, i32* null, i32* %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vkCreateRenderPass(i32, %struct.TYPE_12__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
