; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DeleteOldIpWaitTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_DeleteOldIpWaitTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteOldIpWaitTable(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %74

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @LIST_NUM(i32* %15)
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.TYPE_9__* @LIST_DATA(i32* %21, i64 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32* @NewListFast(i32* null)
  store i32* %35, i32** %4, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i32 @Add(i32* %37, %struct.TYPE_9__* %38)
  br label %40

40:                                               ; preds = %36, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %11

44:                                               ; preds = %11
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i64, i64* %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @LIST_NUM(i32* %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call %struct.TYPE_9__* @LIST_DATA(i32* %54, i64 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = call i32 @Delete(i32* %59, %struct.TYPE_9__* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @Free(%struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = call i32 @Free(%struct.TYPE_9__* %66)
  br label %68

68:                                               ; preds = %53
  %69 = load i64, i64* %3, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %48

71:                                               ; preds = %48
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @ReleaseList(i32* %72)
  br label %74

74:                                               ; preds = %9, %71, %44
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
