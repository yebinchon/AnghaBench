; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosGetRpcConnInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosGetRpcConnInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosGetRpcConnInfo(i8* %0, i32* %1, i32* %2, i16* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i16* %3, i16** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %13, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 4
  %27 = load i16*, i16** %10, align 8
  store i16 %26, i16* %27, align 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
