; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiStartConnectToController.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiStartConnectToController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@ERR_TRYING_TO_CONNECT = common dso_local global i32 0, align 4
@SiConnectToControllerThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @SiStartConnectToController(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = call %struct.TYPE_5__* @ZeroMalloc(i32 24)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @ERR_TRYING_TO_CONNECT, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = call i32 (...) @NewEvent()
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @NewLock()
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @SiConnectToControllerThread, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32* @NewThread(i32 %23, %struct.TYPE_5__* %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @WaitThreadInit(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @ReleaseThread(i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %2, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %32
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
