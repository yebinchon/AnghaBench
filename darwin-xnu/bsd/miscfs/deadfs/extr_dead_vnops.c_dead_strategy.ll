; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/deadfs/extr_dead_vnops.c_dead_strategy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/deadfs/extr_dead_vnops.c_dead_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_strategy_args = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dead_strategy(%struct.vnop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_strategy_args*, align 8
  store %struct.vnop_strategy_args* %0, %struct.vnop_strategy_args** %3, align 8
  %4 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %3, align 8
  %5 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32* @buf_vnode(i32 %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %3, align 8
  %11 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @buf_vnode(i32 %12)
  %14 = call i32 @chkvnlock(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EIO, align 4
  %21 = call i32 @buf_seterror(i32 %19, i32 %20)
  %22 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %3, align 8
  %23 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @buf_biodone(i32 %24)
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %9
  %28 = load %struct.vnop_strategy_args*, %struct.vnop_strategy_args** %3, align 8
  %29 = getelementptr inbounds %struct.vnop_strategy_args, %struct.vnop_strategy_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VNOP_STRATEGY(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32* @buf_vnode(i32) #1

declare dso_local i32 @chkvnlock(i32*) #1

declare dso_local i32 @buf_seterror(i32, i32) #1

declare dso_local i32 @buf_biodone(i32) #1

declare dso_local i32 @VNOP_STRATEGY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
