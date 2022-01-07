; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ScuRegs = common dso_local global i32* null, align 8
@ScuDsp = common dso_local global i32* null, align 8
@ScuBP = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScuInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @calloc(i32 1, i32 4)
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** @ScuRegs, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %40

7:                                                ; preds = %0
  %8 = call i64 @calloc(i32 1, i32 4)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @ScuDsp, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %40

12:                                               ; preds = %7
  %13 = call i64 @calloc(i32 1, i32 32)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** @ScuBP, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %40

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuBP, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuBP, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuBP, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuBP, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %33, %16, %11, %6
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
