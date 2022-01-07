; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspMidiIn.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspMidiIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32*, i32, i32, i32 }

@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SCSP_INTERRUPT_MIDI_IN = common dso_local global i32 0, align 4
@SCSP_INTTARGET_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ScspMidiIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScspMidiIn() #0 {
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 4
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @SCSP_INTERRUPT_MIDI_IN, align 4
  %31 = load i32, i32* @SCSP_INTTARGET_BOTH, align 4
  %32 = call i32 @ScspRaiseInterrupt(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %3
  br label %35

34:                                               ; preds = %0
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 6), align 4
  %37 = shl i32 %36, 12
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 7), align 8
  %39 = shl i32 %38, 11
  %40 = or i32 %37, %39
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 8
  %42 = shl i32 %41, 10
  %43 = or i32 %40, %42
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 4
  %45 = shl i32 %44, 9
  %46 = or i32 %43, %45
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 8
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 8
  %51 = shl i32 %50, 0
  %52 = or i32 %49, %51
  ret i32 %52
}

declare dso_local i32 @ScspRaiseInterrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
