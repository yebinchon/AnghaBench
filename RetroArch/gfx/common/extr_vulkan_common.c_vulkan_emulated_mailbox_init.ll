; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vulkan_emulated_mailbox = type { i32, i32, i32, i32, i32 }

@vulkan_emulated_mailbox_loop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vulkan_emulated_mailbox_init(%struct.vulkan_emulated_mailbox* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vulkan_emulated_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vulkan_emulated_mailbox* %0, %struct.vulkan_emulated_mailbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %9 = call i32 @memset(%struct.vulkan_emulated_mailbox* %8, i32 0, i32 20)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %12 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %15 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @scond_new()
  %17 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %18 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %20 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

24:                                               ; preds = %3
  %25 = call i32 (...) @slock_new()
  %26 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %27 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %29 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i32, i32* @vulkan_emulated_mailbox_loop, align 4
  %35 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %36 = call i32 @sthread_create(i32 %34, %struct.vulkan_emulated_mailbox* %35)
  %37 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %38 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %5, align 8
  %40 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %32, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.vulkan_emulated_mailbox*, i32, i32) #1

declare dso_local i32 @scond_new(...) #1

declare dso_local i32 @slock_new(...) #1

declare dso_local i32 @sthread_create(i32, %struct.vulkan_emulated_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
