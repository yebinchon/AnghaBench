; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3DeleteOldArpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3DeleteOldArpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64 }

@ARP_ENTRY_POLLING_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3DeleteOldArpTable(%struct.TYPE_8__* %0) #0 {
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
  br label %80

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARP_ENTRY_POLLING_TIME, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 (...) @Tick64()
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %80

19:                                               ; preds = %10
  %20 = call i64 (...) @Tick64()
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %51, %19
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @LIST_NUM(i32* %27)
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call %struct.TYPE_9__* @LIST_DATA(i32* %33, i64 %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 (...) @Tick64()
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32* @NewListFast(i32* null)
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = call i32 @Insert(i32* %47, %struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %46, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %23

54:                                               ; preds = %23
  %55 = load i32*, i32** %4, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i64, i64* %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @LIST_NUM(i32* %60)
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i64, i64* %3, align 8
  %66 = call %struct.TYPE_9__* @LIST_DATA(i32* %64, i64 %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = call i32 @Delete(i32* %69, %struct.TYPE_9__* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = call i32 @Free(%struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i64, i64* %3, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %3, align 8
  br label %58

77:                                               ; preds = %58
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ReleaseList(i32* %78)
  br label %80

80:                                               ; preds = %9, %18, %77, %54
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_9__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
