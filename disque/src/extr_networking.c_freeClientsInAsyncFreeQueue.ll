; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_freeClientsInAsyncFreeQueue.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_freeClientsInAsyncFreeQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeClientsInAsyncFreeQueue() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %5 = call i64 @listLength(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %9 = call i32* @listFirst(i32 %8)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call %struct.TYPE_5__* @listNodeValue(i32* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %2, align 8
  %12 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i32 @freeClient(%struct.TYPE_5__* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @listDelNode(i32 %20, i32* %21)
  br label %3

23:                                               ; preds = %3
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local i32* @listFirst(i32) #1

declare dso_local %struct.TYPE_5__* @listNodeValue(i32*) #1

declare dso_local i32 @freeClient(%struct.TYPE_5__*) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
