; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gfxBottomFramebuffers = common dso_local global i32** null, align 8
@currentConsole = external dso_local global %struct.TYPE_2__*, align 8
@ctr_fork_mode = common dso_local global i64 0, align 8
@FRONTEND_FORK_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"gsp::Lcd\00", align 1
@gfxTopRightFramebuffers = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @frontend_ctr_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ctr_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32 255, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 (...) @retro_main_log_file_deinit()
  %10 = call i32 (...) @verbosity_enable()
  %11 = call i32 @retro_main_log_file_init(i32* null, i32 0)
  %12 = load i32**, i32*** @gfxBottomFramebuffers, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @currentConsole, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = icmp eq i32* %14, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i64, i64* @ctr_fork_mode, align 8
  %22 = load i64, i64* @FRONTEND_FORK_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @wait_for_input()
  br label %26

26:                                               ; preds = %24, %20, %1
  %27 = call i32 @CFGU_GetModelNintendo2DS(i32* %5)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = call i64 @srvGetServiceHandle(i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = call i32* (...) @getThreadCommandBuffer()
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 1114176, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 2, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @svcSendSyncRequest(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @svcCloseHandle(i32 %41)
  br label %43

43:                                               ; preds = %33, %30, %26
  %44 = call i32 @CFGU_GetSystemModel(i32* %6)
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %47, %43
  %51 = load float, float* inttoptr (i64 536350848 to float*), align 4
  %52 = fpext float %51 to double
  %53 = fcmp oeq double %52, 0.000000e+00
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 65537
  store i32 %55, i32* %4, align 4
  %56 = call i32 @GSPGPU_WriteHWRegs(i32 2105344, i32* %4, i32 4)
  br label %57

57:                                               ; preds = %50, %47
  %58 = call i32 (...) @mcuHwcExit()
  %59 = call i32 (...) @ptmuExit()
  %60 = call i32 (...) @cfguExit()
  %61 = call i32 (...) @ndspExit()
  %62 = call i32 (...) @csndExit()
  %63 = load i32**, i32*** @gfxTopRightFramebuffers, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  store i32* null, i32** %64, align 8
  %65 = load i32**, i32*** @gfxTopRightFramebuffers, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* null, i32** %66, align 8
  %67 = call i32 (...) @gfxExit()
  ret void
}

declare dso_local i32 @retro_main_log_file_deinit(...) #1

declare dso_local i32 @verbosity_enable(...) #1

declare dso_local i32 @retro_main_log_file_init(i32*, i32) #1

declare dso_local i32 @wait_for_input(...) #1

declare dso_local i32 @CFGU_GetModelNintendo2DS(i32*) #1

declare dso_local i64 @srvGetServiceHandle(i32*, i8*) #1

declare dso_local i32* @getThreadCommandBuffer(...) #1

declare dso_local i32 @svcSendSyncRequest(i32) #1

declare dso_local i32 @svcCloseHandle(i32) #1

declare dso_local i32 @CFGU_GetSystemModel(i32*) #1

declare dso_local i32 @GSPGPU_WriteHWRegs(i32, i32*, i32) #1

declare dso_local i32 @mcuHwcExit(...) #1

declare dso_local i32 @ptmuExit(...) #1

declare dso_local i32 @cfguExit(...) #1

declare dso_local i32 @ndspExit(...) #1

declare dso_local i32 @csndExit(...) #1

declare dso_local i32 @gfxExit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
