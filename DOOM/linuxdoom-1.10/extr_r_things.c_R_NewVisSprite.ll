; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_NewVisSprite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_NewVisSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vissprite_p = common dso_local global i32* null, align 8
@vissprites = common dso_local global i32* null, align 8
@MAXVISSPRITES = common dso_local global i64 0, align 8
@overflowsprite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @R_NewVisSprite() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @vissprite_p, align 8
  %3 = load i32*, i32** @vissprites, align 8
  %4 = load i64, i64* @MAXVISSPRITES, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = icmp eq i32* %2, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32* @overflowsprite, i32** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load i32*, i32** @vissprite_p, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** @vissprite_p, align 8
  %11 = load i32*, i32** @vissprite_p, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 -1
  store i32* %12, i32** %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load i32*, i32** %1, align 8
  ret i32* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
