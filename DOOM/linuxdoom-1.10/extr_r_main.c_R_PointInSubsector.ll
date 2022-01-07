; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointInSubsector.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointInSubsector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@numnodes = common dso_local global i32 0, align 4
@subsectors = common dso_local global i32* null, align 8
@NF_SUBSECTOR = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @R_PointInSubsector(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @numnodes, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** @subsectors, align 8
  store i32* %12, i32** %3, align 8
  br label %46

13:                                               ; preds = %2
  %14 = load i32, i32* @numnodes, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %22, %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NF_SUBSECTOR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nodes, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = call i32 @R_PointOnSide(i32 %27, i32 %28, %struct.TYPE_4__* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i32*, i32** @subsectors, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NF_SUBSECTOR, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32* %45, i32** %3, align 8
  br label %46

46:                                               ; preds = %38, %11
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32 @R_PointOnSide(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
