; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_acquire_next_image_blocking.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_acquire_next_image_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vulkan_emulated_mailbox = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@VK_ERROR_OUT_OF_DATE_KHR = common dso_local global i64 0, align 8
@VK_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vulkan_emulated_mailbox_acquire_next_image_blocking(%struct.vulkan_emulated_mailbox* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vulkan_emulated_mailbox*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.vulkan_emulated_mailbox* %0, %struct.vulkan_emulated_mailbox** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %8 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VK_NULL_HANDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @VK_ERROR_OUT_OF_DATE_KHR, align 8
  store i64 %13, i64* %3, align 8
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %16 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @slock_lock(i32 %17)
  %19 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %20 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %25 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %27 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @scond_signal(i32 %28)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %32 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %39, %30
  %34 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %35 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %41 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %44 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scond_wait(i32 %42, i32 %45)
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %49 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @VK_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %56 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %61 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %60, i32 0, i32 1
  store i32 0, i32* %61, align 8
  %62 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %63 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %62, i32 0, i32 3
  store i32 0, i32* %63, align 8
  %64 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %4, align 8
  %65 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @slock_unlock(i32 %66)
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %59, %12
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
