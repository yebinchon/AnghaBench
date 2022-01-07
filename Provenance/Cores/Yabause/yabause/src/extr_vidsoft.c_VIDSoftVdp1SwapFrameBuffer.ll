; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1SwapFrameBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1SwapFrameBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@Vdp1Regs = common dso_local global %struct.TYPE_3__* null, align 8
@Vdp1External = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@vidsoft_vdp1_thread_enabled = common dso_local global i64 0, align 8
@vdp1frontframebuffer = common dso_local global i32* null, align 8
@vdp1backframebuffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1SwapFrameBuffer() #0 {
  %1 = alloca i32*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Vdp1Regs, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Vdp1External, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7, %0
  %11 = load i64, i64* @vidsoft_vdp1_thread_enabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @VidsoftWaitForVdp1Thread()
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32*, i32** @vdp1frontframebuffer, align 8
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** @vdp1backframebuffer, align 8
  store i32* %17, i32** @vdp1frontframebuffer, align 8
  %18 = load i32*, i32** %1, align 8
  store i32* %18, i32** @vdp1backframebuffer, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Vdp1External, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %15, %7
  ret void
}

declare dso_local i32 @VidsoftWaitForVdp1Thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
