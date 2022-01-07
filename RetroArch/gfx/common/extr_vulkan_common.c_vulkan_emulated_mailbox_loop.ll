; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_loop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.vulkan_emulated_mailbox = type { i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i32 0, align 4
@VK_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vulkan_emulated_mailbox_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_emulated_mailbox_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.vulkan_emulated_mailbox*, align 8
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %7 = load i32, i32* @VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.vulkan_emulated_mailbox*
  store %struct.vulkan_emulated_mailbox* %9, %struct.vulkan_emulated_mailbox** %5, align 8
  %10 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %11 = icmp ne %struct.vulkan_emulated_mailbox* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %118

13:                                               ; preds = %1
  %14 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %15 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vkCreateFence(i32 %16, %struct.TYPE_3__* %4, i32* null, i32* %3)
  br label %18

18:                                               ; preds = %111, %13
  %19 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %20 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @slock_lock(i32 %21)
  br label %23

23:                                               ; preds = %36, %18
  %24 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %25 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %30 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %38 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %41 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @scond_wait(i32 %39, i32 %42)
  br label %23

44:                                               ; preds = %34
  %45 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %46 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %51 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @slock_unlock(i32 %52)
  br label %112

54:                                               ; preds = %44
  %55 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %56 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %58 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @slock_unlock(i32 %59)
  %61 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %62 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %65 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UINT64_MAX, align 4
  %68 = load i32, i32* @VK_NULL_HANDLE, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %71 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %70, i32 0, i32 6
  %72 = call i64 @vkAcquireNextImageKHR(i32 %63, i32 %66, i32 %67, i32 %68, i32 %69, i32* %71)
  %73 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %74 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %76 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VK_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %54
  %81 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %82 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UINT64_MAX, align 4
  %85 = call i32 @vkWaitForFences(i32 %83, i32 1, i32* %3, i32 1, i32 %84)
  br label %86

86:                                               ; preds = %80, %54
  %87 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %88 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vkResetFences(i32 %89, i32 1, i32* %3)
  %91 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %92 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VK_SUCCESS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %86
  %97 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %98 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @slock_lock(i32 %99)
  %101 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %102 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %104 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @scond_signal(i32 %105)
  %107 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %108 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @slock_unlock(i32 %109)
  br label %111

111:                                              ; preds = %96, %86
  br label %18

112:                                              ; preds = %49
  %113 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %114 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @vkDestroyFence(i32 %115, i32 %116, i32* null)
  br label %118

118:                                              ; preds = %112, %12
  ret void
}

declare dso_local i32 @vkCreateFence(i32, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i64 @vkAcquireNextImageKHR(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vkWaitForFences(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @vkResetFences(i32, i32, i32*) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @vkDestroyFence(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
