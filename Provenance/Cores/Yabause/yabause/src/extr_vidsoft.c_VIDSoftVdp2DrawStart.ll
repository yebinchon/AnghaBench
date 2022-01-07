; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawStart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp2DrawStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TITAN_BLEND_TOP = common dso_local global i32 0, align 4
@Vdp2Regs = common dso_local global %struct.TYPE_2__* null, align 8
@TITAN_BLEND_ADD = common dso_local global i32 0, align 4
@TITAN_BLEND_BOTTOM = common dso_local global i32 0, align 4
@bad_cycle_setting = common dso_local global i32* null, align 8
@TITAN_NBG3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp2DrawStart() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TITAN_BLEND_TOP, align 4
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @TITAN_BLEND_ADD, align 4
  store i32 %9, i32* %1, align 4
  br label %19

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @TITAN_BLEND_BOTTOM, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %10
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @TitanSetBlendingMode(i32 %20)
  %22 = call i32 (...) @Vdp2DrawBackScreen()
  %23 = call i32 (...) @Vdp2DrawLineScreen()
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 21862
  br i1 %27, label %28, label %67

28:                                               ; preds = %19
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 18431
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4863
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1023
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 65535
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp2Regs, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 65535
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32*, i32** @bad_cycle_setting, align 8
  %65 = load i64, i64* @TITAN_NBG3, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 1, i32* %66, align 4
  br label %71

67:                                               ; preds = %58, %53, %48, %43, %38, %33, %28, %19
  %68 = load i32*, i32** @bad_cycle_setting, align 8
  %69 = load i64, i64* @TITAN_NBG3, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  ret void
}

declare dso_local i32 @TitanSetBlendingMode(i32) #1

declare dso_local i32 @Vdp2DrawBackScreen(...) #1

declare dso_local i32 @Vdp2DrawLineScreen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
