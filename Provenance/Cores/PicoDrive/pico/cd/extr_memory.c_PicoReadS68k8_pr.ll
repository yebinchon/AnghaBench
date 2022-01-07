; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoReadS68k8_pr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoReadS68k8_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@EL_CDREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"s68k_regs r8: [%02x] %02x @%06x\00", align 1
@SekPcS68k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoReadS68k8_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoReadS68k8_pr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65024
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 511
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 14
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 48
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, -2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @s68k_poll_detect(i32 %25, i32 %26)
  br label %39

28:                                               ; preds = %13, %8
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -2
  %31 = call i32 @s68k_reg_read16(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @EL_CDREGS, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SekPcS68k, align 4
  %46 = call i32 @elprintf(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 32768
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 32767
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 8192
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32*, i32** %60, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 1
  %69 = and i32 %68, 4095
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %52
  %74 = load i32, i32* %3, align 4
  %75 = icmp sge i32 %74, 32
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = ashr i32 %77, 1
  %79 = call i32 @pcd_pcm_read(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %48
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @s68k_unmapped_read8(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %81, %39
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @s68k_poll_detect(i32, i32) #1

declare dso_local i32 @s68k_reg_read16(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pcd_pcm_read(i32) #1

declare dso_local i32 @s68k_unmapped_read8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
