; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSP_BGR8_OES = common dso_local global i32 0, align 4
@GSP_RGB565_OES = common dso_local global i32 0, align 4
@gfxTopLeftFramebuffers = common dso_local global i64* null, align 8
@gfxBottomFramebuffers = common dso_local global i64* null, align 8
@gfxTopRightFramebuffers = common dso_local global i64* null, align 8
@GFX_TOP = common dso_local global i32 0, align 4
@GFX_BOTTOM = common dso_local global i32 0, align 4
@__ctr_patch_services = common dso_local global i32 0, align 4
@audio_null = common dso_local global i8* null, align 8
@audio_ctr_csnd = common dso_local global i8* null, align 8
@audio_ctr_dsp = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @frontend_ctr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ctr_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (...) @verbosity_enable()
  %7 = load i32, i32* @GSP_BGR8_OES, align 4
  %8 = load i32, i32* @GSP_RGB565_OES, align 4
  %9 = call i32 @gfxInit(i32 %7, i32 %8, i32 0)
  store i32 288000, i32* %3, align 4
  store i32 153600, i32* %4, align 4
  %10 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @linearFree(i64 %12)
  %14 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @linearFree(i64 %16)
  %18 = load i64*, i64** @gfxBottomFramebuffers, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @linearFree(i64 %20)
  %22 = load i64*, i64** @gfxBottomFramebuffers, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @linearFree(i64 %24)
  %26 = load i64*, i64** @gfxTopRightFramebuffers, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @linearFree(i64 %28)
  %30 = load i64*, i64** @gfxTopRightFramebuffers, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @linearFree(i64 %32)
  %34 = load i32, i32* %3, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i64 @linearAlloc(i32 %35)
  %37 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %36, i64* %38, align 8
  %39 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i64*, i64** @gfxTopRightFramebuffers, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i64 @linearAlloc(i32 %48)
  %50 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 %49, i64* %51, align 8
  %52 = load i64*, i64** @gfxTopLeftFramebuffers, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i64*, i64** @gfxTopRightFramebuffers, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @linearAlloc(i32 %60)
  %62 = load i64*, i64** @gfxBottomFramebuffers, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @linearAlloc(i32 %64)
  %66 = load i64*, i64** @gfxBottomFramebuffers, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @GFX_TOP, align 4
  %69 = call i32 @gfxSetFramebufferInfo(i32 %68, i32 0)
  %70 = load i32, i32* @GFX_BOTTOM, align 4
  %71 = call i32 @gfxSetFramebufferInfo(i32 %70, i32 0)
  %72 = call i32 @gfxSet3D(i32 1)
  %73 = load i32, i32* @GFX_BOTTOM, align 4
  %74 = call i32 @consoleInit(i32 %73, i32* null)
  br i1 true, label %75, label %79

75:                                               ; preds = %1
  %76 = call i32 @osSetSpeedupEnable(i32 0)
  %77 = load i32, i32* @__ctr_patch_services, align 4
  %78 = call i32 @svchax_init(i32 %77)
  br label %79

79:                                               ; preds = %75, %1
  %80 = call i32 @osSetSpeedupEnable(i32 1)
  %81 = call i64 (...) @csndInit()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** @audio_null, align 8
  store i8* %84, i8** @audio_ctr_csnd, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = call i32 (...) @ctr_check_dspfirm()
  %87 = call i64 (...) @ndspInit()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i8*, i8** @audio_null, align 8
  store i8* %90, i8** @audio_ctr_dsp, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = call i32 (...) @cfguInit()
  %93 = call i32 (...) @ptmuInit()
  %94 = call i32 (...) @mcuHwcInit()
  ret void
}

declare dso_local i32 @verbosity_enable(...) #1

declare dso_local i32 @gfxInit(i32, i32, i32) #1

declare dso_local i32 @linearFree(i64) #1

declare dso_local i64 @linearAlloc(i32) #1

declare dso_local i32 @gfxSetFramebufferInfo(i32, i32) #1

declare dso_local i32 @gfxSet3D(i32) #1

declare dso_local i32 @consoleInit(i32, i32*) #1

declare dso_local i32 @svchax_init(i32) #1

declare dso_local i32 @osSetSpeedupEnable(i32) #1

declare dso_local i64 @csndInit(...) #1

declare dso_local i32 @ctr_check_dspfirm(...) #1

declare dso_local i64 @ndspInit(...) #1

declare dso_local i32 @cfguInit(...) #1

declare dso_local i32 @ptmuInit(...) #1

declare dso_local i32 @mcuHwcInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
