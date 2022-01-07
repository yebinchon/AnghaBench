; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawEL.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@WI_TITLEY = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@entering = common dso_local global %struct.TYPE_6__* null, align 8
@FB = common dso_local global i32 0, align 4
@lnames = common dso_local global %struct.TYPE_6__** null, align 8
@wbs = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawEL() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WI_TITLEY, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @SCREENWIDTH, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entering, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @SHORT(i32 %6)
  %8 = sub nsw i32 %3, %7
  %9 = sdiv i32 %8, 2
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @FB, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @entering, align 8
  %13 = call i32 @V_DrawPatch(i32 %9, i32 %10, i32 %11, %struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SHORT(i32 %21)
  %23 = mul nsw i32 5, %22
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @SCREENWIDTH, align 4
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SHORT(i32 %35)
  %37 = sub nsw i32 %27, %36
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @FB, align 4
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @lnames, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @V_DrawPatch(i32 %38, i32 %39, i32 %40, %struct.TYPE_6__* %46)
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
