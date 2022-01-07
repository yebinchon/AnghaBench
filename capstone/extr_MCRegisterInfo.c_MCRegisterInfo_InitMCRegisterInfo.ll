; ModuleID = '/home/carl/AnghaBench/capstone/extr_MCRegisterInfo.c_MCRegisterInfo_InitMCRegisterInfo.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_MCRegisterInfo.c_MCRegisterInfo_InitMCRegisterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32, i32, i32*, i32*, i32**, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCRegisterInfo_InitMCRegisterInfo(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, [2 x i32]* %7, i32 %8, i32* %9, i8* %10, i32* %11, i32 %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32]*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32* %5, i32** %20, align 8
  store i32 %6, i32* %21, align 4
  store [2 x i32]* %7, [2 x i32]** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32* %9, i32** %24, align 8
  store i8* %10, i8** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  store i32* %13, i32** %28, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 12
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 11
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %24, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  store i32* %44, i32** %46, align 8
  %47 = load i8*, i8** %25, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load [2 x i32]*, [2 x i32]** %22, align 8
  %54 = bitcast [2 x i32]* %53 to i32**
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 9
  store i32** %54, i32*** %56, align 8
  %57 = load i32, i32* %23, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %26, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 8
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* %27, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32*, i32** %28, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 7
  store i32* %66, i32** %68, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
