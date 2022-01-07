; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_FreeIPC.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_FreeIPC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeIPC(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %81

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FreeTubeFlushList(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Disconnect(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ReleaseSock(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %9
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @Free(%struct.TYPE_4__* %29)
  br label %31

31:                                               ; preds = %26, %9
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ReleaseCedar(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @FreeInterruptManager(i32 %38)
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %55, %31
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @LIST_NUM(i32 %44)
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %3, align 8
  %52 = call i32* @LIST_DATA(i32 %50, i64 %51)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @IPCFreeARP(i32* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ReleaseList(i32 %61)
  br label %63

63:                                               ; preds = %58, %71
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @GetNext(i32 %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %74

71:                                               ; preds = %63
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @FreeBlock(i32* %72)
  br label %63

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ReleaseQueue(i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = call i32 @Free(%struct.TYPE_4__* %79)
  br label %81

81:                                               ; preds = %74, %8
  ret void
}

declare dso_local i32 @FreeTubeFlushList(i32) #1

declare dso_local i32 @Disconnect(i32) #1

declare dso_local i32 @ReleaseSock(i32) #1

declare dso_local i32 @Free(%struct.TYPE_4__*) #1

declare dso_local i32 @ReleaseCedar(i32) #1

declare dso_local i32 @FreeInterruptManager(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32* @LIST_DATA(i32, i64) #1

declare dso_local i32 @IPCFreeARP(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32* @GetNext(i32) #1

declare dso_local i32 @FreeBlock(i32*) #1

declare dso_local i32 @ReleaseQueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
