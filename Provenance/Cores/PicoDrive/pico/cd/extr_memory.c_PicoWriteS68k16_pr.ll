; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k16_pr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k16_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EL_CDREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"s68k_regs w16: [%02x] %04x @%06x\00", align 1
@SekPcS68k = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWriteS68k16_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWriteS68k16_pr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65024
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 510
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EL_CDREGS, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SekPcS68k, align 4
  %15 = call i32 @elprintf(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @s68k_reg_write16(i32 %16, i32 %17)
  br label %59

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 32767
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 8192
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %32, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 1
  %41 = and i32 %40, 4095
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %29, i32* %43, align 4
  br label %54

44:                                               ; preds = %23
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 18
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = ashr i32 %48, 1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @pcd_pcm_write(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  br label %54

54:                                               ; preds = %53, %28
  br label %59

55:                                               ; preds = %19
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @s68k_unmapped_write16(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54, %8
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @s68k_reg_write16(i32, i32) #1

declare dso_local i32 @pcd_pcm_write(i32, i32) #1

declare dso_local i32 @s68k_unmapped_write16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
