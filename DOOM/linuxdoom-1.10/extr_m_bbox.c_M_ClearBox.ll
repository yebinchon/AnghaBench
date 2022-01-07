; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_bbox.c_M_ClearBox.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_bbox.c_M_ClearBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MININT = common dso_local global i32 0, align 4
@BOXRIGHT = common dso_local global i64 0, align 8
@BOXTOP = common dso_local global i64 0, align 8
@MAXINT = common dso_local global i32 0, align 4
@BOXLEFT = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_ClearBox(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @MININT, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i64, i64* @BOXRIGHT, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32 %3, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i64, i64* @BOXTOP, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @MAXINT, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i64, i64* @BOXLEFT, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* @BOXBOTTOM, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %10, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
