; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckNetworkListenThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckNetworkListenThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [5 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 74, i32 80, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 73, i32 98, i32 97, i32 114, i32 97, i32 107, i32 105, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 84, i32 115, i32 117, i32 107, i32 117, i32 98, i32 97, i32 0], align 4
@CheckNetworkAcceptThread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckNetworkListenThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = call i32* @NewList(i32* null)
  store i32* %19, i32** %11, align 8
  %20 = call i32* @NewName(i8* bitcast ([5 x i32]* @.str to i8*), i8* bitcast ([5 x i32]* @.str to i8*), i8* bitcast ([5 x i32]* @.str to i8*), i8* bitcast ([3 x i32]* @.str.1 to i8*), i8* bitcast ([8 x i32]* @.str.2 to i8*), i8* bitcast ([8 x i32]* @.str.3 to i8*))
  store i32* %20, i32** %12, align 8
  %21 = call i32 @RsaGen(i32** %9, i32** %8, i32 1024)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @NewRootX(i32* %22, i32* %23, i32* %24, i32 1000, i32* null)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @FreeName(i32* %26)
  store i32 1025, i32* %7, align 4
  br label %28

28:                                               ; preds = %35, %2
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_10__* @Listen(i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %6, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %28

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AddRef(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @NoticeThreadInit(i32* %46)
  br label %48

48:                                               ; preds = %38, %67
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call %struct.TYPE_10__* @Accept(%struct.TYPE_10__* %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %13, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = icmp eq %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %68

54:                                               ; preds = %48
  %55 = call i32 @Zero(%struct.TYPE_11__* %14, i32 24)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* @CheckNetworkAcceptThread, align 4
  %63 = call i32* @NewThread(i32 %62, %struct.TYPE_11__* %14)
  store i32* %63, i32** %15, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @Insert(i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %54
  br label %48

68:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @LIST_NUM(i32* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32* @LIST_DATA(i32* %75, i32 %76)
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* @INFINITE, align 4
  %80 = call i32 @WaitThread(i32* %78, i32 %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @ReleaseThread(i32* %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @FreeK(i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @FreeK(i32* %89)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @FreeX(i32* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = call i32 @ReleaseSock(%struct.TYPE_10__* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @ReleaseList(i32* %95)
  ret void
}

declare dso_local i32* @NewList(i32*) #1

declare dso_local i32* @NewName(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @RsaGen(i32**, i32**, i32) #1

declare dso_local i32* @NewRootX(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @FreeName(i32*) #1

declare dso_local %struct.TYPE_10__* @Listen(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local %struct.TYPE_10__* @Accept(%struct.TYPE_10__*) #1

declare dso_local i32 @Zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @Insert(i32*, i32*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @FreeK(i32*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
