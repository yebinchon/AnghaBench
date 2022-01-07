; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_image_client.c_egl_init_vcsm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/ext/extr_egl_khr_image_client.c_egl_init_vcsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@egl_init_vcsm.warn_once = internal global i32 0, align 4
@vcsm_malloc_cache = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"libvcsm.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"/opt/vc/lib/libvcsm.so\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"vcsm_malloc_cache\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"vcsm_vc_hdl_from_hdl\00", align 1
@vcsm_vc_hdl_from_hdl = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"vcsm_free\00", align 1
@vcsm_free = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"Unable to load libvcsm.so for target EGL_IMAGE_BRCM_VCSM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @egl_init_vcsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egl_init_vcsm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32*, i32** @vcsm_malloc_cache, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %53

7:                                                ; preds = %0
  %8 = load i32*, i32** @vcsm_malloc_cache, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @RTLD_LAZY, align 4
  %12 = call i8* @dlopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @RTLD_LAZY, align 4
  %17 = call i8* @dlopen(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @dlsym(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** @vcsm_malloc_cache, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @dlsym(i8* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** @vcsm_vc_hdl_from_hdl, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @dlsym(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** @vcsm_free, align 8
  %31 = load i32*, i32** @vcsm_malloc_cache, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32*, i32** @vcsm_vc_hdl_from_hdl, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** @vcsm_free, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %36, %33, %21
  store i32* null, i32** @vcsm_malloc_cache, align 8
  store i32* null, i32** @vcsm_vc_hdl_from_hdl, align 8
  store i32* null, i32** @vcsm_free, align 8
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %42, %7
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @egl_init_vcsm.warn_once, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @vcos_log_error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @egl_init_vcsm.warn_once, align 4
  br label %51

51:                                               ; preds = %49, %46, %43
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %6
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i8* @dlsym(i8*, i8*) #1

declare dso_local i32 @vcos_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
