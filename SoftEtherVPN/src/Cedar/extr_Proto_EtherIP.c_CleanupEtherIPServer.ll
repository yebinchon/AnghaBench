; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_CleanupEtherIPServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_CleanupEtherIPServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"LE_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CleanupEtherIPServer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i32 @EtherIPLog(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ReleaseThread(i32* %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @FreeIPC(i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @LIST_NUM(i32 %35)
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @LIST_DATA(i32 %41, i64 %42)
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @FreeBlock(i32* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ReleaseList(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ReleaseSockEvent(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ReleaseCedar(i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DeleteLock(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = call i32 @Free(%struct.TYPE_5__* %66)
  br label %68

68:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @EtherIPLog(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @FreeIPC(i32*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32* @LIST_DATA(i32, i64) #1

declare dso_local i32 @FreeBlock(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @ReleaseSockEvent(i32) #1

declare dso_local i32 @ReleaseCedar(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
