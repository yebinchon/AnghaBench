; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_GetIssuerFromList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_GetIssuerFromList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @GetIssuerFromList(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %68

16:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @LIST_NUM(i32* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.TYPE_10__* @LIST_DATA(i32* %23, i64 %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %8, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = call i64 @CheckXDateNow(%struct.TYPE_10__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CompareName(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = call i32* @GetKFromX(%struct.TYPE_10__* %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @CheckSignature(%struct.TYPE_10__* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %7, align 8
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @FreeK(i32* %51)
  br label %53

53:                                               ; preds = %50, %38
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = call i64 @CompareX(%struct.TYPE_10__* %56, %struct.TYPE_10__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %7, align 8
  br label %62

62:                                               ; preds = %60, %55
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %3, align 8
  br label %68

68:                                               ; preds = %66, %15
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %69
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @CheckXDateNow(%struct.TYPE_10__*) #1

declare dso_local i64 @CompareName(i32, i32) #1

declare dso_local i32* @GetKFromX(%struct.TYPE_10__*) #1

declare dso_local i64 @CheckSignature(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @FreeK(i32*) #1

declare dso_local i64 @CompareX(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
