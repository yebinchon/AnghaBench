; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_filter_chain.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_filter_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"[Vulkan]: Loading stock shader.\0A\00", align 1
@RARCH_SHADER_SLANG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"[Vulkan]: Only Slang shaders are supported, falling back to stock.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vulkan_init_filter_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_init_filter_chain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i8* (...) @retroarch_get_shader_preset()
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @video_shader_parse_type(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @string_is_empty(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @vulkan_init_default_filter_chain(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @RARCH_SHADER_SLANG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @vulkan_init_default_filter_chain(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %16
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @vulkan_init_filter_chain_preset(i32* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %24
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @vulkan_init_default_filter_chain(i32* %33)
  br label %35

35:                                               ; preds = %32, %27
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %20, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @retroarch_get_shader_preset(...) #1

declare dso_local i32 @video_shader_parse_type(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @vulkan_init_default_filter_chain(i32*) #1

declare dso_local i32 @vulkan_init_filter_chain_preset(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
