; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_suballoc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_suballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_buffer_chain = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.vk_buffer_range = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vk_buffer_chain*, i64, %struct.vk_buffer_range*)* @vulkan_buffer_chain_suballoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_buffer_chain_suballoc(%struct.vk_buffer_chain* %0, i64 %1, %struct.vk_buffer_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vk_buffer_chain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vk_buffer_range*, align 8
  %8 = alloca i32, align 4
  store %struct.vk_buffer_chain* %0, %struct.vk_buffer_chain** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vk_buffer_range* %2, %struct.vk_buffer_range** %7, align 8
  %9 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %10 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %17 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %15, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %3
  %24 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %25 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %32 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %7, align 8
  %36 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %38 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %7, align 8
  %44 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %46 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %7, align 8
  %50 = getelementptr inbounds %struct.vk_buffer_range, %struct.vk_buffer_range* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %53 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %58 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = xor i32 %60, -1
  %62 = and i32 %56, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %5, align 8
  %65 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 1, i32* %4, align 4
  br label %67

66:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
