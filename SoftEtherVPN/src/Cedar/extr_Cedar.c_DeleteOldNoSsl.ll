; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_DeleteOldNoSsl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_DeleteOldNoSsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteOldNoSsl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %61

10:                                               ; preds = %1
  %11 = call i32* @NewListFast(i32* null)
  store i32* %11, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %35, %10
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @LIST_NUM(i32* %16)
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call %struct.TYPE_8__* @LIST_DATA(i32* %22, i64 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 (...) @Tick64()
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = call i32 @Add(i32* %31, %struct.TYPE_8__* %32)
  br label %34

34:                                               ; preds = %30, %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %12

38:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i64, i64* %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @LIST_NUM(i32* %41)
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call %struct.TYPE_8__* @LIST_DATA(i32* %45, i64 %46)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %6, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = call i32 @Delete(i32* %50, %struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @Free(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @ReleaseList(i32* %59)
  br label %61

61:                                               ; preds = %58, %9
  ret void
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
