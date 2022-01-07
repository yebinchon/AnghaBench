; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledGetSessionStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledGetSessionStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }

@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SiCalledGetSessionStatus(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32* null, i32** %3, align 8
  br label %34

15:                                               ; preds = %11
  %16 = call i32 @Zero(%struct.TYPE_9__* %6, i32 16)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @InRpcSessionStatus(%struct.TYPE_9__* %6, i32* %17)
  %19 = call i32 @Zero(%struct.TYPE_9__* %7, i32 16)
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = call i64 @StGetSessionStatus(%struct.TYPE_9__* %7, %struct.TYPE_9__* %6)
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 @FreeRpcSessionStatus(%struct.TYPE_9__* %6)
  store i32* null, i32** %3, align 8
  br label %34

28:                                               ; preds = %15
  %29 = call i32* (...) @NewPack()
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @OutRpcSessionStatus(i32* %30, %struct.TYPE_9__* %6)
  %32 = call i32 @FreeRpcSessionStatus(%struct.TYPE_9__* %6)
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %28, %26, %14
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @InRpcSessionStatus(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @StGetSessionStatus(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @FreeRpcSessionStatus(%struct.TYPE_9__*) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @OutRpcSessionStatus(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
