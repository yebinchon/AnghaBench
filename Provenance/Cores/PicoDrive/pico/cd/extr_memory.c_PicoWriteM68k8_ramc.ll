; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteM68k8_ramc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteM68k8_ramc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Pico_mcd = common dso_local global %struct.TYPE_6__* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"m68k unmapped w8  [%06x]   %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWriteM68k8_ramc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWriteM68k8_ramc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 16646144
  %7 = icmp eq i32 %6, 6291456
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 1
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, 8192
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %19, i32* %26, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  br label %27

27:                                               ; preds = %18, %11, %8
  br label %43

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 8388607
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @EL_UIO, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = load i32, i32* @SekPc, align 4
  %42 = call i32 @elprintf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %31, %27
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
