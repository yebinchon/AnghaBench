; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3FreeAllSw.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3FreeAllSw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3FreeAllSw(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = call i32* @NewListFast(i32* null)
  store i32* %11, i32** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @LockList(i32* %14)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %36, %10
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i8* @LIST_DATA(i32* %26, i64 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %5, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CopyStr(i32 %33)
  %35 = call i32 @Insert(i32* %30, i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %16

39:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i64, i64* %4, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @LIST_NUM(i32* %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i8* @LIST_DATA(i32* %46, i64 %47)
  store i8* %48, i8** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @L3DelSw(%struct.TYPE_6__* %49, i8* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @Free(i8* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %40

57:                                               ; preds = %40
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @ReleaseList(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @UnlockList(i32* %62)
  br label %64

64:                                               ; preds = %57, %9
  ret void
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @CopyStr(i32) #1

declare dso_local i32 @L3DelSw(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
