; ModuleID = '/home/carl/AnghaBench/capstone/extr_MCRegisterInfo.c_MCRegisterInfo_getMatchingSuperReg.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_MCRegisterInfo.c_MCRegisterInfo_getMatchingSuperReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MCRegisterInfo_getMatchingSuperReg(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %22, %30
  %32 = call i32 @DiffListIterator_init(i32* %10, i32 %19, i64 %31)
  %33 = call i32 @DiffListIterator_next(i32* %10)
  br label %34

34:                                               ; preds = %52, %18
  %35 = call i64 @DiffListIterator_isValid(i32* %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = call i32 @DiffListIterator_getVal(i32* %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @MCRegisterClass_contains(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @MCRegisterInfo_getSubReg(%struct.TYPE_6__* %45, i32 %46, i32 %47)
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %43, %37
  %53 = call i32 @DiffListIterator_next(i32* %10)
  br label %34

54:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %50, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @DiffListIterator_init(i32*, i32, i64) #1

declare dso_local i32 @DiffListIterator_next(i32*) #1

declare dso_local i64 @DiffListIterator_isValid(i32*) #1

declare dso_local i32 @DiffListIterator_getVal(i32*) #1

declare dso_local i64 @MCRegisterClass_contains(i32*, i32) #1

declare dso_local i32 @MCRegisterInfo_getSubReg(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
