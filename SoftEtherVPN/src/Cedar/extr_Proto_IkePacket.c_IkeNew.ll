; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNew.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @IkeNew(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = call %struct.TYPE_4__* @ZeroMalloc(i32 48)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  ret %struct.TYPE_4__* %43
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
