; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_ShardArrayToList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_ShardArrayToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32)* @ShardArrayToList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ShardArrayToList(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @lappend(i32* %19, i32* %20)
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load i32*, i32** %5, align 8
  ret i32* %26
}

declare dso_local i32* @lappend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
