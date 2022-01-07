; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_FindCaSignedX.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_FindCaSignedX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @FindCaSignedX(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %79

16:                                               ; preds = %12
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @LockList(i32* %17)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %72, %16
  %20 = load i64, i64* %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @LIST_NUM(i32* %21)
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.TYPE_12__* @LIST_DATA(i32* %25, i64 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = call i64 @CheckXDateNow(%struct.TYPE_12__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CompareName(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = call i32* @GetKFromX(%struct.TYPE_12__* %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @CheckSignature(%struct.TYPE_12__* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = call %struct.TYPE_12__* @CloneX(%struct.TYPE_12__* %51)
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %6, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @FreeK(i32* %54)
  br label %56

56:                                               ; preds = %53, %40
  br label %66

57:                                               ; preds = %31
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i64 @CompareX(%struct.TYPE_12__* %58, %struct.TYPE_12__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = call %struct.TYPE_12__* @CloneX(%struct.TYPE_12__* %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %6, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %56
  br label %67

67:                                               ; preds = %66, %24
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %75

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %19

75:                                               ; preds = %70, %19
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @UnlockList(i32* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %3, align 8
  br label %79

79:                                               ; preds = %75, %15
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %80
}

declare dso_local i32 @LockList(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_12__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @CheckXDateNow(%struct.TYPE_12__*) #1

declare dso_local i64 @CompareName(i32, i32) #1

declare dso_local i32* @GetKFromX(%struct.TYPE_12__*) #1

declare dso_local i64 @CheckSignature(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_12__* @CloneX(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeK(i32*) #1

declare dso_local i64 @CompareX(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @UnlockList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
