; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_EmuScanPrepare.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_EmuScanPrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@VRAM_CACHED_STUFF = common dso_local global i64 0, align 8
@HighCol = common dso_local global i8* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dynamic_palette = common dso_local global i64 0, align 8
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SPR_LO_ON_HI = common dso_local global i32 0, align 4
@amips_clut_6bit = common dso_local global i32 0, align 4
@amips_clut_f = common dso_local global i32 0, align 4
@amips_clut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @EmuScanPrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EmuScanPrepare() #0 {
  %1 = load i64, i64* @VRAM_CACHED_STUFF, align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  store i8* %3, i8** @HighCol, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i8*, i8** @HighCol, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4096
  store i8* %11, i8** @HighCol, align 8
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i64, i64* @dynamic_palette, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @dynamic_palette, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @dynamic_palette, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @do_pal_update(i32 1, i32 1)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @rendstatus, align 4
  %25 = load i32, i32* @PDRAW_SPR_LO_ON_HI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 12
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @amips_clut_6bit, align 4
  store i32 %35, i32* @amips_clut_f, align 4
  br label %38

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @amips_clut, align 4
  store i32 %37, i32* @amips_clut_f, align 4
  br label %38

38:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @do_pal_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
