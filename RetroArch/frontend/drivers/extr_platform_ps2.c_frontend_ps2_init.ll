; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps2.c_frontend_ps2_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ps2.c_frontend_ps2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i32 0, align 4
@iomanX_irx = common dso_local global i32 0, align 4
@size_iomanX_irx = common dso_local global i32 0, align 4
@fileXio_irx = common dso_local global i32 0, align 4
@size_fileXio_irx = common dso_local global i32 0, align 4
@freesio2_irx = common dso_local global i32 0, align 4
@size_freesio2_irx = common dso_local global i32 0, align 4
@mcman_irx = common dso_local global i32 0, align 4
@size_mcman_irx = common dso_local global i32 0, align 4
@mcserv_irx = common dso_local global i32 0, align 4
@size_mcserv_irx = common dso_local global i32 0, align 4
@freemtap_irx = common dso_local global i32 0, align 4
@size_freemtap_irx = common dso_local global i32 0, align 4
@freepad_irx = common dso_local global i32 0, align 4
@size_freepad_irx = common dso_local global i32 0, align 4
@usbd_irx = common dso_local global i32 0, align 4
@size_usbd_irx = common dso_local global i32 0, align 4
@usbhdfsd_irx = common dso_local global i32 0, align 4
@size_usbhdfsd_irx = common dso_local global i32 0, align 4
@freesd_irx = common dso_local global i32 0, align 4
@size_freesd_irx = common dso_local global i32 0, align 4
@audsrv_irx = common dso_local global i32 0, align 4
@size_audsrv_irx = common dso_local global i32 0, align 4
@cdvd_irx = common dso_local global i32 0, align 4
@size_cdvd_irx = common dso_local global i32 0, align 4
@MC_TYPE_XMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mcInit library not initalizated\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"audsrv library not initalizated\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"mtapInit library not initalizated\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"padInit library not initalizated\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"mtapPortOpen library not initalizated\0A\00", align 1
@SCECdINoD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"CDVD_Init library not initalizated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @frontend_ps2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ps2_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @FILENAME_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @SifInitRpc(i32 0)
  br label %11

11:                                               ; preds = %15, %1
  %12 = call i32 @SifIopReset(i32* null, i32 0)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %11

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %21, %16
  %18 = call i32 (...) @SifIopSync()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = call i32 @SifInitRpc(i32 0)
  %24 = call i32 (...) @sbv_patch_enable_lmb()
  %25 = load i32, i32* @size_iomanX_irx, align 4
  %26 = call i32 @SifExecModuleBuffer(i32* @iomanX_irx, i32 %25, i32 0, i32* null, i32* null)
  %27 = load i32, i32* @size_fileXio_irx, align 4
  %28 = call i32 @SifExecModuleBuffer(i32* @fileXio_irx, i32 %27, i32 0, i32* null, i32* null)
  %29 = load i32, i32* @size_freesio2_irx, align 4
  %30 = call i32 @SifExecModuleBuffer(i32* @freesio2_irx, i32 %29, i32 0, i32* null, i32* null)
  %31 = load i32, i32* @size_mcman_irx, align 4
  %32 = call i32 @SifExecModuleBuffer(i32* @mcman_irx, i32 %31, i32 0, i32* null, i32* null)
  %33 = load i32, i32* @size_mcserv_irx, align 4
  %34 = call i32 @SifExecModuleBuffer(i32* @mcserv_irx, i32 %33, i32 0, i32* null, i32* null)
  %35 = load i32, i32* @size_freemtap_irx, align 4
  %36 = call i32 @SifExecModuleBuffer(i32* @freemtap_irx, i32 %35, i32 0, i32* null, i32* null)
  %37 = load i32, i32* @size_freepad_irx, align 4
  %38 = call i32 @SifExecModuleBuffer(i32* @freepad_irx, i32 %37, i32 0, i32* null, i32* null)
  %39 = load i32, i32* @size_usbd_irx, align 4
  %40 = call i32 @SifExecModuleBuffer(i32* @usbd_irx, i32 %39, i32 0, i32* null, i32* null)
  %41 = load i32, i32* @size_usbhdfsd_irx, align 4
  %42 = call i32 @SifExecModuleBuffer(i32* @usbhdfsd_irx, i32 %41, i32 0, i32* null, i32* null)
  %43 = load i32, i32* @size_freesd_irx, align 4
  %44 = call i32 @SifExecModuleBuffer(i32* @freesd_irx, i32 %43, i32 0, i32* null, i32* null)
  %45 = load i32, i32* @size_audsrv_irx, align 4
  %46 = call i32 @SifExecModuleBuffer(i32* @audsrv_irx, i32 %45, i32 0, i32* null, i32* null)
  %47 = load i32, i32* @size_cdvd_irx, align 4
  %48 = call i32 @SifExecModuleBuffer(i32* @cdvd_irx, i32 %47, i32 0, i32* null, i32* null)
  %49 = load i32, i32* @MC_TYPE_XMC, align 4
  %50 = call i64 @mcInit(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %22
  %53 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %22
  %55 = call i64 (...) @audsrv_init()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 (...) @mtapInit()
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = call i32 @padInit(i32 0)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i32 @mtapPortOpen(i32 0)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @SCECdINoD, align 4
  %76 = call i32 @sceCdInit(i32 %75)
  %77 = call i32 (...) @CDVD_Init()
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = call i32 (...) @_init_ps2_io()
  %83 = trunc i64 %7 to i32
  %84 = call i32 @getcwd(i8* %9, i32 %83)
  %85 = call i32 @getBootDeviceID(i8* %9)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @waitUntilDeviceIsReady(i32 %86)
  %88 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SifInitRpc(i32) #2

declare dso_local i32 @SifIopReset(i32*, i32) #2

declare dso_local i32 @SifIopSync(...) #2

declare dso_local i32 @sbv_patch_enable_lmb(...) #2

declare dso_local i32 @SifExecModuleBuffer(i32*, i32, i32, i32*, i32*) #2

declare dso_local i64 @mcInit(i32) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i64 @audsrv_init(...) #2

declare dso_local i32 @mtapInit(...) #2

declare dso_local i32 @padInit(i32) #2

declare dso_local i32 @mtapPortOpen(i32) #2

declare dso_local i32 @sceCdInit(i32) #2

declare dso_local i32 @CDVD_Init(...) #2

declare dso_local i32 @_init_ps2_io(...) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @getBootDeviceID(i8*) #2

declare dso_local i32 @waitUntilDeviceIsReady(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
