; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElFreeConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElFreeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ElFreeConfig(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i32 @ElSaveConfig(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @FreeCfgRw(i32 %15)
  %17 = call i32* @NewList(i32* null)
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @LockList(i32* %20)
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %42, %10
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @LIST_NUM(i32* %26)
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i8* @LIST_DATA(i32* %32, i64 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CopyStr(i32 %39)
  %41 = call i32 @Insert(i32* %36, i32 %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %22

45:                                               ; preds = %22
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @LIST_NUM(i32* %48)
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call i8* @LIST_DATA(i32* %52, i64 %53)
  store i8* %54, i8** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @ElDeleteCaptureDevice(%struct.TYPE_7__* %55, i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @Free(i8* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @ReleaseList(i32* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @UnlockList(i32* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ReleaseList(i32* %72)
  br label %74

74:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @ElSaveConfig(%struct.TYPE_7__*) #1

declare dso_local i32 @FreeCfgRw(i32) #1

declare dso_local i32* @NewList(i32*) #1

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Insert(i32*, i32) #1

declare dso_local i32 @CopyStr(i32) #1

declare dso_local i32 @ElDeleteCaptureDevice(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
