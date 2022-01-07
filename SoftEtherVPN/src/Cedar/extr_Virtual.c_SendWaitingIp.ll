; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendWaitingIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendWaitingIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendWaitingIp(%struct.TYPE_10__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  br label %88

17:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @LIST_NUM(i32* %22)
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.TYPE_11__* @LIST_DATA(i32* %28, i64 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32* @NewListFast(i32* null)
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = call i32 @Add(i32* %42, %struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %41, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %88

52:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i64, i64* %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @LIST_NUM(i32* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call %struct.TYPE_11__* @LIST_DATA(i32* %59, i64 %60)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %10, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @VirtualIpSend(%struct.TYPE_10__* %62, i32* %63, %struct.TYPE_11__* %66, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = call i32 @Delete(i32* %73, %struct.TYPE_11__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = call i32 @Free(%struct.TYPE_11__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = call i32 @Free(%struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %58
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %53

85:                                               ; preds = %53
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @ReleaseList(i32* %86)
  br label %88

88:                                               ; preds = %16, %85, %49
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_11__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @VirtualIpSend(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
