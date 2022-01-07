; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiInitListenerList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiInitListenerList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVER_DEF_PORTS_1 = common dso_local global i32 0, align 4
@SERVER_DEF_PORTS_2 = common dso_local global i32 0, align 4
@SERVER_DEF_PORTS_3 = common dso_local global i32 0, align 4
@SERVER_DEF_PORTS_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiInitListenerList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @SiLockListenerList(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @SERVER_DEF_PORTS_1, align 4
  %11 = call i32 @SiAddListener(i32* %9, i32 %10, i32 1)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @SERVER_DEF_PORTS_2, align 4
  %14 = call i32 @SiAddListener(i32* %12, i32 %13, i32 1)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @SERVER_DEF_PORTS_3, align 4
  %17 = call i32 @SiAddListener(i32* %15, i32 %16, i32 1)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SERVER_DEF_PORTS_4, align 4
  %20 = call i32 @SiAddListener(i32* %18, i32 %19, i32 1)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @SiUnlockListenerList(i32* %21)
  br label %23

23:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @SiLockListenerList(i32*) #1

declare dso_local i32 @SiAddListener(i32*, i32, i32) #1

declare dso_local i32 @SiUnlockListenerList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
