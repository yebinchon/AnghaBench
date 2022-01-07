; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rtime.c_RTIME_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rtime.c_RTIME_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtime_state = common dso_local global i32 0, align 4
@rtime_tmp = common dso_local global i64 0, align 8
@rtime_tmp2 = common dso_local global i32 0, align 4
@regset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTIME_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @rtime_state, align 4
  switch i32 %3, label %19 [
    i32 0, label %4
    i32 1, label %8
    i32 2, label %11
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 15
  %7 = sext i32 %6 to i64
  store i64 %7, i64* @rtime_tmp, align 8
  store i32 1, i32* @rtime_state, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 4
  store i32 %10, i32* @rtime_tmp2, align 4
  store i32 2, i32* @rtime_state, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @rtime_tmp2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 15
  %15 = or i32 %12, %14
  %16 = load i32*, i32** @regset, align 8
  %17 = load i64, i64* @rtime_tmp, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  store i32 0, i32* @rtime_state, align 4
  br label %19

19:                                               ; preds = %1, %11, %8, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
