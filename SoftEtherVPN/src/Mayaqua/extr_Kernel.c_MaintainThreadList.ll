; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_MaintainThreadList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_MaintainThreadList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MaintainThreadList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @LockList(i32* %11)
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %36, %10
  %14 = load i64, i64* %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @LIST_NUM(i32* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call %struct.TYPE_6__* @LIST_DATA(i32* %19, i64 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32* @NewListFast(i32* null)
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @Add(i32* %32, %struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %31, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i64, i64* %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @LIST_NUM(i32* %45)
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call %struct.TYPE_6__* @LIST_DATA(i32* %49, i64 %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = call i32 @ReleaseThread(%struct.TYPE_6__* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i32 @Delete(i32* %54, %struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %43

60:                                               ; preds = %43
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ReleaseList(i32* %61)
  br label %63

63:                                               ; preds = %60, %39
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @UnlockList(i32* %64)
  br label %66

66:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseThread(%struct.TYPE_6__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
