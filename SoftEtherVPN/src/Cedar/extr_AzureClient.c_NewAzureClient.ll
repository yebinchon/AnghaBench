; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_AzureClient.c_NewAzureClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_AzureClient.c_NewAzureClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32* }

@AcMainThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @NewAzureClient(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %35

13:                                               ; preds = %9
  %14 = call %struct.TYPE_5__* @ZeroMalloc(i32 32)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = call i32 (...) @NewLock()
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = call i32 (...) @NewEvent()
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @AcMainThread, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i32 @NewThread(i32 %29, %struct.TYPE_5__* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %3, align 8
  br label %35

35:                                               ; preds = %13, %12
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %36
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
