; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_video_regs = common dso_local global i32* null, align 8
@memregl = common dso_local global i32* null, align 8
@battdev = common dso_local global i64 0, align 8
@mixerdev = common dso_local global i64 0, align 8
@memregs = common dso_local global i64 0, align 8
@memdev = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pollux_finish() #0 {
  %1 = call i32 (...) @timer_cleanup()
  %2 = call i32 (...) @unset_ram_timings()
  %3 = load i32*, i32** @saved_video_regs, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** @saved_video_regs, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = call i32 @restore_multiple_regs(i32 16472, i32 %5, i32 %9)
  %11 = load i32*, i32** @saved_video_regs, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @saved_video_regs, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @restore_multiple_regs(i32 17496, i32 %13, i32 %17)
  %19 = load i32*, i32** @memregl, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4118
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 16
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** @memregl, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4374
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 16
  store i32 %26, i32* %24, align 4
  %27 = load i64, i64* @battdev, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = load i64, i64* @battdev, align 8
  %31 = call i32 @close(i64 %30)
  br label %32

32:                                               ; preds = %29, %0
  %33 = load i64, i64* @mixerdev, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* @mixerdev, align 8
  %37 = call i32 @close(i64 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* @memregs, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @munmap(i8* %40, i32 131072)
  %42 = load i64, i64* @memdev, align 8
  %43 = call i32 @close(i64 %42)
  ret void
}

declare dso_local i32 @timer_cleanup(...) #1

declare dso_local i32 @unset_ram_timings(...) #1

declare dso_local i32 @restore_multiple_regs(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
