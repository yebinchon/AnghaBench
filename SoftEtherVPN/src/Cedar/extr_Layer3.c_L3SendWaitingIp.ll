; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SendWaitingIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SendWaitingIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3SendWaitingIp(%struct.TYPE_12__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %4
  br label %94

22:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @LIST_NUM(i32* %27)
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call %struct.TYPE_11__* @LIST_DATA(i32* %33, i64 %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %11, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32* @NewListFast(i32* null)
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = call i32 @Add(i32* %47, %struct.TYPE_11__* %48)
  br label %50

50:                                               ; preds = %46, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %23

54:                                               ; preds = %23
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i64, i64* %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @LIST_NUM(i32* %60)
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call %struct.TYPE_11__* @LIST_DATA(i32* %64, i64 %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %12, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %70 = call i32 @L3SendIpNow(%struct.TYPE_12__* %67, i32* %68, %struct.TYPE_11__* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = call i32 @Delete(i32* %73, %struct.TYPE_11__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call i32 @Free(%struct.TYPE_11__* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = call i32 @FreePacket(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = call i32 @Free(%struct.TYPE_11__* %86)
  br label %88

88:                                               ; preds = %63
  %89 = load i64, i64* %9, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %58

91:                                               ; preds = %58
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @ReleaseList(i32* %92)
  br label %94

94:                                               ; preds = %21, %91, %54
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_11__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @L3SendIpNow(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @FreePacket(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
