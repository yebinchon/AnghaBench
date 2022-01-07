; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_LoadROM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_LoadROM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@rom_fname_loaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"ROMs, CD images\00*.smd;*.bin;*.gen;*.zip;*.32x;*.sms;*.iso;*.cso;*.cue\00whatever\00*.*\00\00", align 1
@OFN_FILEMUSTEXIST = common dso_local global i32 0, align 4
@OFN_HIDEREADONLY = common dso_local global i32 0, align 4
@FrameWnd = common dso_local global i32 0, align 4
@engineState = common dso_local global i64 0, align 8
@PGS_Running = common dso_local global i64 0, align 8
@PGS_Paused = common dso_local global i64 0, align 8
@loop_end_event = common dso_local global i32 0, align 4
@menu_error_msg = external dso_local global [0 x i8], align 1
@loop_enter_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LoadROM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadROM(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 34
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %19, i64 %27
  %29 = call i32 @strcpy(i8* %11, i8* %28)
  %30 = call i32 @strlen(i8* %11)
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %11, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = call i32 @strlen(i8* %11)
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %11, i64 %40
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %37, %18
  br label %66

43:                                               ; preds = %14, %1
  %44 = call i32 @ZeroMemory(%struct.TYPE_4__* %6, i32 40)
  %45 = sub i64 %9, 1
  %46 = getelementptr inbounds i8, i8* %11, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* @rom_fname_loaded, align 4
  %48 = sub i64 %9, 1
  %49 = trunc i64 %48 to i32
  %50 = call i32 @strncpy(i8* %11, i32 %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 40, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i8* %11, i8** %53, align 8
  %54 = load i32, i32* @MAX_PATH, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @OFN_FILEMUSTEXIST, align 4
  %57 = load i32, i32* @OFN_HIDEREADONLY, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @FrameWnd, align 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i32 %60, i32* %61, align 8
  %62 = call i32 @GetOpenFileName(%struct.TYPE_4__* %6)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %85

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i64, i64* @engineState, align 8
  %68 = load i64, i64* @PGS_Running, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* @PGS_Paused, align 8
  store i64 %71, i64* @engineState, align 8
  %72 = load i32, i32* @loop_end_event, align 4
  %73 = call i32 @WaitForSingleObject(i32 %72, i32 5000)
  br label %74

74:                                               ; preds = %70, %66
  %75 = call i32 @emu_reload_rom(i8* %11)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @error(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @menu_error_msg, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %85

80:                                               ; preds = %74
  %81 = call i32 (...) @PrepareForROM()
  %82 = load i64, i64* @PGS_Running, align 8
  store i64 %82, i64* @engineState, align 8
  %83 = load i32, i32* @loop_enter_event, align 4
  %84 = call i32 @SetEvent(i32 %83)
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %78, %64
  %86 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %7, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @GetOpenFileName(%struct.TYPE_4__*) #2

declare dso_local i32 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @emu_reload_rom(i8*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @PrepareForROM(...) #2

declare dso_local i32 @SetEvent(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
