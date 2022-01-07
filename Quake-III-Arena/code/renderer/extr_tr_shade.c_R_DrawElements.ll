; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_R_DrawElements.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_R_DrawElements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@r_primitives = common dso_local global %struct.TYPE_2__* null, align 8
@qglLockArraysEXT = common dso_local global i64 0, align 8
@GL_TRIANGLES = common dso_local global i32 0, align 4
@GL_INDEX_TYPE = common dso_local global i32 0, align 4
@qglArrayElement = common dso_local global i32 0, align 4
@R_ArrayElementDiscrete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @R_DrawElements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_DrawElements(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @r_primitives, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* @qglLockArraysEXT, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 2, i32* %5, align 4
  br label %16

15:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @GL_TRIANGLES, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GL_INDEX_TYPE, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @qglDrawElements(i32 %21, i32 %22, i32 %23, i32* %24)
  br label %42

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @qglArrayElement, align 4
  %33 = call i32 @R_DrawStripElements(i32 %30, i32* %31, i32 %32)
  br label %42

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @R_ArrayElementDiscrete, align 4
  %41 = call i32 @R_DrawStripElements(i32 %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %20, %29, %37, %34
  ret void
}

declare dso_local i32 @qglDrawElements(i32, i32, i32, i32*) #1

declare dso_local i32 @R_DrawStripElements(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
