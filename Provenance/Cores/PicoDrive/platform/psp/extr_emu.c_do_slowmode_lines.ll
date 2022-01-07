; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_do_slowmode_lines.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_do_slowmode_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VRAM_STUFF = common dso_local global i64 0, align 8
@VRAM_CACHED_STUFF = common dso_local global i64 0, align 8
@localPal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_slowmode_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_slowmode_lines(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 12
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 320, i32 256
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @VRAM_STUFF, align 8
  %15 = inttoptr i64 %14 to i16*
  %16 = getelementptr inbounds i16, i16* %15, i64 61440
  store i16* %16, i16** %5, align 8
  %17 = load i64, i64* @VRAM_CACHED_STUFF, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 16
  store i8* %19, i8** %6, align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  %26 = load i16*, i16** %5, align 8
  %27 = getelementptr inbounds i16, i16* %26, i64 4096
  store i16* %27, i16** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4096
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %25, %1
  br label %31

31:                                               ; preds = %41, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i16*, i16** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @localPal, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @amips_clut_f(i16* %36, i8* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i16*, i16** %5, align 8
  %45 = getelementptr inbounds i16, i16* %44, i64 512
  store i16* %45, i16** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 512
  store i8* %47, i8** %6, align 8
  br label %31

48:                                               ; preds = %31
  ret void
}

declare dso_local i32 @amips_clut_f(i16*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
