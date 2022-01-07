; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_sound_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_sound_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"sndsem\00", align 1
@sound_sem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"sceKernelCreateSema() failed: %i\0A\00", align 1
@samples_done = common dso_local global i64 0, align 8
@samples_made = common dso_local global i64 0, align 8
@SOUND_BLOCK_SIZE_NTSC = common dso_local global i32 0, align 4
@samples_block = common dso_local global i32 0, align 4
@sound_thread_exit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"sndthread\00", align 1
@sound_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"sound_init: sceKernelStartThread returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"sceKernelCreateThread failed: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sound_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sound_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @sceKernelCreateSema(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 1, i32* null)
  store i64 %3, i64* @sound_sem, align 8
  %4 = load i64, i64* @sound_sem, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i64, i64* @sound_sem, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @lprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %0
  store i64 0, i64* @samples_done, align 8
  store i64 0, i64* @samples_made, align 8
  %11 = load i32, i32* @SOUND_BLOCK_SIZE_NTSC, align 4
  store i32 %11, i32* @samples_block, align 4
  store i64 0, i64* @sound_thread_exit, align 8
  %12 = load i32, i32* @sound_thread, align 4
  %13 = call i32 @sceKernelCreateThread(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 18, i32 65536, i32 0, i32* null)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @sceKernelStartThread(i32 %17, i32 0, i32 0)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @lprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %16
  br label %28

25:                                               ; preds = %10
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @lprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

declare dso_local i64 @sceKernelCreateSema(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @lprintf(i8*, i32) #1

declare dso_local i32 @sceKernelCreateThread(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sceKernelStartThread(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
