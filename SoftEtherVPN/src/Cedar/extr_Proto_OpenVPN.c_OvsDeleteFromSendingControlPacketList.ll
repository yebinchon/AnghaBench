; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDeleteFromSendingControlPacketList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsDeleteFromSendingControlPacketList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsDeleteFromSendingControlPacketList(%struct.TYPE_9__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  br label %83

19:                                               ; preds = %15
  %20 = call i32* @NewListFast(i32* null)
  store i32* %20, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %57, %19
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %53, %25
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @LIST_NUM(i32* %34)
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call %struct.TYPE_8__* @LIST_DATA(i32* %40, i64 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = call i32 @AddDistinct(i32* %49, %struct.TYPE_8__* %50)
  br label %52

52:                                               ; preds = %48, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %21

60:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i64, i64* %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @LIST_NUM(i32* %63)
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call %struct.TYPE_8__* @LIST_DATA(i32* %67, i64 %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %12, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = call i32 @Delete(i32* %72, %struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = call i32 @OvsFreeControlPacket(%struct.TYPE_8__* %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %61

80:                                               ; preds = %61
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @ReleaseList(i32* %81)
  br label %83

83:                                               ; preds = %80, %18
  ret void
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @AddDistinct(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @OvsFreeControlPacket(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
