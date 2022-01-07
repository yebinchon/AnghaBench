; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessAck2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessAck2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPProcessAck2(i32* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  br label %78

20:                                               ; preds = %16
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @LIST_NUM(i32* %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.TYPE_9__* @LIST_DATA(i32* %31, i64 %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %9, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32* @NewListFast(i32* null)
  store i32* %43, i32** %7, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = call i32 @Add(i32* %45, %struct.TYPE_9__* %46)
  br label %48

48:                                               ; preds = %44, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @LIST_NUM(i32* %58)
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call %struct.TYPE_9__* @LIST_DATA(i32* %62, i64 %63)
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %10, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = call i32 @Delete(i32* %67, %struct.TYPE_9__* %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = call i32 @Free(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %56

75:                                               ; preds = %56
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @ReleaseList(i32* %76)
  br label %78

78:                                               ; preds = %19, %75, %52
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
