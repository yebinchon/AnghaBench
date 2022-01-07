; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_surface_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_surface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.vulkan_display_surface_info = type { i32 }

@VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_MIR_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR = common dso_local global i32 0, align 4
@VK_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vulkan_surface_create(%struct.TYPE_27__* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %34 [
    i32 131, label %17
    i32 137, label %18
    i32 130, label %19
    i32 128, label %20
    i32 129, label %21
    i32 135, label %22
    i32 136, label %23
    i32 133, label %31
    i32 134, label %32
    i32 132, label %33
  ]

17:                                               ; preds = %7
  br label %35

18:                                               ; preds = %7
  br label %35

19:                                               ; preds = %7
  br label %35

20:                                               ; preds = %7
  br label %35

21:                                               ; preds = %7
  br label %35

22:                                               ; preds = %7
  br label %35

23:                                               ; preds = %7
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.vulkan_display_surface_info*
  %27 = call i32 @vulkan_create_display_surface(%struct.TYPE_27__* %24, i32* %13, i32* %14, %struct.vulkan_display_surface_info* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %51

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %7
  br label %35

32:                                               ; preds = %7
  br label %35

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %7, %33
  store i32 0, i32* %8, align 4
  br label %51

35:                                               ; preds = %32, %31, %30, %22, %21, %20, %19, %18, %17
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %37 = call i32 @vulkan_context_init_device(%struct.TYPE_27__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %51

40:                                               ; preds = %35
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @vulkan_create_swapchain(%struct.TYPE_27__* %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %50 = call i32 @vulkan_acquire_next_image(%struct.TYPE_27__* %49)
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %47, %39, %34, %29
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @vulkan_create_display_surface(%struct.TYPE_27__*, i32*, i32*, %struct.vulkan_display_surface_info*) #1

declare dso_local i32 @vulkan_context_init_device(%struct.TYPE_27__*) #1

declare dso_local i32 @vulkan_create_swapchain(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @vulkan_acquire_next_image(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
