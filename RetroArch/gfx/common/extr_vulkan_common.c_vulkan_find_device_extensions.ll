; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_find_device_extensions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_find_device_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VK_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"[Vulkan]: Could not find device extension. Will attempt without it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i8**, i32, i8**, i32)* @vulkan_find_device_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_find_device_extensions(i32 %0, i8** %1, i32* %2, i8** %3, i32 %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @vkEnumerateDeviceExtensionProperties(i32 %20, i32* null, i32* %16, i32* null)
  %22 = load i64, i64* @VK_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %96

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %19, align 8
  %32 = load i32*, i32** %19, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %18, align 4
  br label %92

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = call i64 @vkEnumerateDeviceExtensionProperties(i32 %36, i32* null, i32* %16, i32* %37)
  %39 = load i64, i64* @VK_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %18, align 4
  br label %92

42:                                               ; preds = %35
  %43 = load i8**, i8*** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32*, i32** %19, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @vulkan_find_extensions(i8** %43, i32 %44, i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %92

51:                                               ; preds = %42
  %52 = load i8**, i8*** %10, align 8
  %53 = bitcast i8** %52 to i8*
  %54 = load i8**, i8*** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i8* %53, i8** %54, i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %88, %51
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load i8**, i8*** %14, align 8
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i32*, i32** %19, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @vulkan_find_extensions(i8** %70, i32 1, i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = load i8**, i8*** %14, align 8
  %77 = load i32, i32* %17, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8*, i8** %81, i64 %85
  store i8* %80, i8** %86, align 8
  br label %87

87:                                               ; preds = %75, %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %49, %41, %34
  %93 = load i32*, i32** %19, align 8
  %94 = call i32 @free(i32* %93)
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %24
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i64 @vkEnumerateDeviceExtensionProperties(i32, i32*, i32*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @vulkan_find_extensions(i8**, i32, i32*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
