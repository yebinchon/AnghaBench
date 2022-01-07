; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_emulated_mailbox_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vulkan_emulated_mailbox = type { i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_emulated_mailbox_deinit(%struct.vulkan_emulated_mailbox* %0) #0 {
  %2 = alloca %struct.vulkan_emulated_mailbox*, align 8
  store %struct.vulkan_emulated_mailbox* %0, %struct.vulkan_emulated_mailbox** %2, align 8
  %3 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %4 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %9 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @slock_lock(i64 %10)
  %12 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %13 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %15 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @scond_signal(i64 %16)
  %18 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %19 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @slock_unlock(i64 %20)
  %22 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %23 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sthread_join(i64 %24)
  br label %26

26:                                               ; preds = %7, %1
  %27 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %28 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %33 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @slock_free(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %38 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %43 = getelementptr inbounds %struct.vulkan_emulated_mailbox, %struct.vulkan_emulated_mailbox* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @scond_free(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.vulkan_emulated_mailbox*, %struct.vulkan_emulated_mailbox** %2, align 8
  %48 = call i32 @memset(%struct.vulkan_emulated_mailbox* %47, i32 0, i32 32)
  ret void
}

declare dso_local i32 @slock_lock(i64) #1

declare dso_local i32 @scond_signal(i64) #1

declare dso_local i32 @slock_unlock(i64) #1

declare dso_local i32 @sthread_join(i64) #1

declare dso_local i32 @slock_free(i64) #1

declare dso_local i32 @scond_free(i64) #1

declare dso_local i32 @memset(%struct.vulkan_emulated_mailbox*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
