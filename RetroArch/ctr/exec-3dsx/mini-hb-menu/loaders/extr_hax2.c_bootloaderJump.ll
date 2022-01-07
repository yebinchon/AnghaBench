; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/mini-hb-menu/loaders/extr_hax2.c_bootloaderJump.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/exec-3dsx/mini-hb-menu/loaders/extr_hax2.c_bootloaderJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@targetProcess = common dso_local global i32 0, align 4
@fileHandle = common dso_local global i32 0, align 4
@argBuf = common dso_local global i32 0, align 4
@argBufLen = common dso_local global i32 0, align 4
@useMemMap = common dso_local global i64 0, align 8
@targetMediatype = common dso_local global i32 0, align 4
@targetTid = common dso_local global i32 0, align 4
@memMapBuf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bootloaderJump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootloaderJump() #0 {
  %1 = load i32, i32* @targetProcess, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @fileHandle, align 4
  %5 = load i32, i32* @argBuf, align 4
  %6 = load i32, i32* @argBufLen, align 4
  %7 = call i32 @callBootloader_2x(i32 %4, i32 %5, i32 %6)
  br label %39

8:                                                ; preds = %0
  %9 = load i32, i32* @targetProcess, align 4
  %10 = icmp eq i32 %9, -2
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i64, i64* @useMemMap, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @targetMediatype, align 4
  %16 = load i32, i32* @argBuf, align 4
  %17 = load i32, i32* @argBufLen, align 4
  %18 = load i32, i32* @targetTid, align 4
  %19 = load i32, i32* @targetTid, align 4
  %20 = ashr i32 %19, 32
  %21 = load i64, i64* @memMapBuf, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32 @callBootloaderRunTitleCustom_2x(i32 %15, i32 %16, i32 %17, i32 %18, i32 %20, i32* %22)
  br label %32

24:                                               ; preds = %11
  %25 = load i32, i32* @targetMediatype, align 4
  %26 = load i32, i32* @argBuf, align 4
  %27 = load i32, i32* @argBufLen, align 4
  %28 = load i32, i32* @targetTid, align 4
  %29 = load i32, i32* @targetTid, align 4
  %30 = ashr i32 %29, 32
  %31 = call i32 @callBootloaderRunTitle_2x(i32 %25, i32 %26, i32 %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %24, %14
  br label %38

33:                                               ; preds = %8
  %34 = load i32, i32* @targetProcess, align 4
  %35 = load i32, i32* @argBuf, align 4
  %36 = load i32, i32* @argBufLen, align 4
  %37 = call i32 @callBootloaderNewProcess_2x(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %32
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @callBootloader_2x(i32, i32, i32) #1

declare dso_local i32 @callBootloaderRunTitleCustom_2x(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @callBootloaderRunTitle_2x(i32, i32, i32, i32, i32) #1

declare dso_local i32 @callBootloaderNewProcess_2x(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
