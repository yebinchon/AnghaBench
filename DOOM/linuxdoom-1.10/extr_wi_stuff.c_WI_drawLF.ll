; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawLF.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawLF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@WI_TITLEY = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@lnames = common dso_local global %struct.TYPE_6__** null, align 8
@wbs = common dso_local global %struct.TYPE_5__* null, align 8
@FB = common dso_local global i32 0, align 4
@finished = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawLF() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WI_TITLEY, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @SCREENWIDTH, align 4
  %4 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %4, i64 %7
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SHORT(i32 %11)
  %13 = sub nsw i32 %3, %12
  %14 = sdiv i32 %13, 2
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @FB, align 4
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @V_DrawPatch(i32 %14, i32 %15, i32 %16, %struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SHORT(i32 %31)
  %33 = mul nsw i32 5, %32
  %34 = sdiv i32 %33, 4
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @SCREENWIDTH, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @finished, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SHORT(i32 %40)
  %42 = sub nsw i32 %37, %41
  %43 = sdiv i32 %42, 2
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @FB, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @finished, align 8
  %47 = call i32 @V_DrawPatch(i32 %43, i32 %44, i32 %45, %struct.TYPE_6__* %46)
  ret void
}

declare dso_local i32 @V_DrawPatch(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SHORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
