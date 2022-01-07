; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.PicoVideo }
%struct.PicoVideo = type { i32, i32*, i32, i32, i64 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@line_base_cycles = common dso_local global i32 0, align 4
@EL_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SR read: %04x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@hcounts_40 = common dso_local global i32* null, align 8
@hcounts_32 = common dso_local global i32* null, align 8
@EL_HVCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hv: %02x %02x (%i) @ %06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoVideoRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.PicoVideo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 28
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %56

11:                                               ; preds = %1
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), %struct.PicoVideo** %4, align 8
  %12 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %13 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @SekCyclesDone()
  %16 = load i32, i32* @line_base_cycles, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp sge i32 %17, 400
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %24 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 64
  %29 = xor i32 %28, 64
  %30 = ashr i32 %29, 3
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %34 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 32
  %37 = shl i32 %36, 2
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 256
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %45 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, -257
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %22
  %49 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %50 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @EL_SR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SekPc, align 4
  %54 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %99

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 28
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = call i32 (...) @SekCyclesDone()
  %62 = load i32, i32* @line_base_cycles, align 4
  %63 = sub nsw i32 %61, %62
  %64 = and i32 %63, 511
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0, i32 1), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 12
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32*, i32** @hcounts_40, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  br label %82

76:                                               ; preds = %60
  %77 = load i32*, i32** @hcounts_32, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @EL_HVCNT, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0, i32 3), align 4
  %86 = call i32 (...) @SekCyclesDone()
  %87 = load i32, i32* @SekPc, align 4
  %88 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0, i32 3), align 4
  %91 = shl i32 %90, 8
  %92 = or i32 %89, %91
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %56
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (...) @VideoRead()
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %96, %82, %48
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @VideoRead(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
