; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k8_pr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k8_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EL_CDREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"s68k_regs w8: [%02x] %02x @%06x\00", align 1
@SekPcS68k = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWriteS68k8_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWriteS68k8_pr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65024
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 511
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EL_CDREGS, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SekPcS68k, align 4
  %15 = call i32 @elprintf(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 89, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 104
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, -2
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @s68k_reg_write16(i32 %23, i32 %27)
  br label %33

29:                                               ; preds = %18, %8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @s68k_reg_write8(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  br label %73

34:                                               ; preds = %2
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 32768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 32767
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %41, 8192
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %47, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 1
  %56 = and i32 %55, 4095
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32 %44, i32* %58, align 4
  br label %68

59:                                               ; preds = %38
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 18
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = ashr i32 %63, 1
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pcd_pcm_write(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %43
  br label %73

69:                                               ; preds = %34
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @s68k_unmapped_write8(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %68, %33
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @s68k_reg_write16(i32, i32) #1

declare dso_local i32 @s68k_reg_write8(i32, i32) #1

declare dso_local i32 @pcd_pcm_write(i32, i32) #1

declare dso_local i32 @s68k_unmapped_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
