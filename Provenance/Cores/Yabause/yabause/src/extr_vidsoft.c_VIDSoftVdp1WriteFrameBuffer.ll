; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1WriteFrameBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1WriteFrameBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdp1backframebuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1WriteFrameBuffer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @VidsoftWaitForVdp1Thread()
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %35 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %21
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @vdp1backframebuffer, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @T1WriteByte(i32 %10, i32 %11, i32 %12)
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BSWAP16L(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @vdp1backframebuffer, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @T1WriteWord(i32 %17, i32 %18, i32 %19)
  br label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BSWAP32(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = or i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @vdp1backframebuffer, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @T1WriteLong(i32 %31, i32 %32, i32 %33)
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %21, %14, %9
  ret void
}

declare dso_local i32 @VidsoftWaitForVdp1Thread(...) #1

declare dso_local i32 @T1WriteByte(i32, i32, i32) #1

declare dso_local i32 @BSWAP16L(i32) #1

declare dso_local i32 @T1WriteWord(i32, i32, i32) #1

declare dso_local i32 @BSWAP32(i32) #1

declare dso_local i32 @T1WriteLong(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
