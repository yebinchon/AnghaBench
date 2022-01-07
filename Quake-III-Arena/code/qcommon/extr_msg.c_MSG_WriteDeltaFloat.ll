; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteDeltaFloat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteDeltaFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteDeltaFloat(i32* %0, float %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %5, align 4
  %8 = load float, float* %6, align 4
  %9 = fcmp oeq float %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @MSG_WriteBits(i32* %11, i32 0, i32 1)
  br label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @MSG_WriteBits(i32* %14, i32 1, i32 1)
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast float* %6 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MSG_WriteBits(i32* %16, i32 %18, i32 32)
  br label %20

20:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @MSG_WriteBits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
