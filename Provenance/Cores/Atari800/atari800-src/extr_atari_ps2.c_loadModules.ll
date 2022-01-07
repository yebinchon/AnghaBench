; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_loadModules.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_loadModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rom0:SIO2MAN\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Sio2man loading failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"rom0:MCMAN\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rom0:MCSERV\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rom0:PADMAN\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Padman loading failed: %d\00", align 1
@MC_TYPE_MC = common dso_local global i32 0, align 4
@usbd = common dso_local global i32 0, align 4
@size_usbd = common dso_local global i32 0, align 4
@ps2kbd = common dso_local global i32 0, align 4
@size_ps2kbd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to Init Keyboard.\00", align 1
@PS2KBD_READMODE_RAW = common dso_local global i32 0, align 4
@audsrv = common dso_local global i32 0, align 4
@size_audsrv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadModules() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @SifLoadModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @SleepThread()
  br label %9

9:                                                ; preds = %5, %0
  %10 = call i32 @SifLoadModule(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  %11 = call i32 @SifLoadModule(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null)
  %12 = call i32 @SifLoadModule(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @SleepThread()
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* @MC_TYPE_MC, align 4
  %21 = call i32 @mcInit(i32 %20)
  %22 = call i32 @SifInitRpc(i32 0)
  %23 = load i32, i32* @usbd, align 4
  %24 = load i32, i32* @size_usbd, align 4
  %25 = call i32 @SifExecModuleBuffer(i32 %23, i32 %24, i32 0, i32* null, i32* %1)
  %26 = load i32, i32* @ps2kbd, align 4
  %27 = load i32, i32* @size_ps2kbd, align 4
  %28 = call i32 @SifExecModuleBuffer(i32 %26, i32 %27, i32 0, i32* null, i32* %1)
  %29 = call i64 (...) @PS2KbdInit()
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %19
  %34 = load i32, i32* @PS2KBD_READMODE_RAW, align 4
  %35 = call i32 @PS2KbdSetReadmode(i32 %34)
  ret void
}

declare dso_local i32 @SifLoadModule(i8*, i32, i32*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @SleepThread(...) #1

declare dso_local i32 @mcInit(i32) #1

declare dso_local i32 @SifInitRpc(i32) #1

declare dso_local i32 @SifExecModuleBuffer(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @PS2KbdInit(...) #1

declare dso_local i32 @PS2KbdSetReadmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
