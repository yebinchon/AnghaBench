; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_z80.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_z80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"68k z80 read with no bus! [%06x] @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_UIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"68k bad read [%06x] @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoRead8_z80 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoRead8_z80(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 255, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 0), align 8
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @EL_ANOMALY, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SekPc, align 4
  %15 = call i32 @elprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 8191
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 24576
  %30 = icmp eq i32 %29, 16384
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @ym2612_read_local_68k()
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @EL_UIO, align 4
  %35 = load i32, i32* @EL_ANOMALY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SekPc, align 4
  %39 = call i32 @elprintf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %31
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @ym2612_read_local_68k(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
