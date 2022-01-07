; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CreateCitusCopyDestReceiver.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CreateCitusCopyDestReceiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32*, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@CitusCopyDestReceiverReceive = common dso_local global i32 0, align 4
@CitusCopyDestReceiverStartup = common dso_local global i32 0, align 4
@CitusCopyDestReceiverShutdown = common dso_local global i32 0, align 4
@CitusCopyDestReceiverDestroy = common dso_local global i32 0, align 4
@DestCopyOut = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @CreateCitusCopyDestReceiver(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = call i64 @palloc0(i32 64)
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %13, align 8
  %16 = load i32, i32* @CitusCopyDestReceiverReceive, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @CitusCopyDestReceiverStartup, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @CitusCopyDestReceiverShutdown, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @CitusCopyDestReceiverDestroy, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @DestCopyOut, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @CurrentMemoryContext, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  ret %struct.TYPE_5__* %57
}

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
