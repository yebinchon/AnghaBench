; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_PurgeIkeClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_PurgeIkeClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PurgeIkeClient(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = icmp eq %struct.TYPE_11__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %79

14:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @LIST_NUM(i32 %19)
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @LIST_DATA(i32 %25, i64 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %6, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = call i32 @MarkIkeSaAsDeleted(%struct.TYPE_11__* %35, %struct.TYPE_12__* %36)
  br label %38

38:                                               ; preds = %34, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %15

42:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @LIST_NUM(i32 %47)
  %49 = icmp slt i64 %44, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i8* @LIST_DATA(i32 %53, i64 %54)
  %56 = bitcast i8* %55 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = icmp eq i32* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = call i32 @MarkIPsecSaAsDeleted(%struct.TYPE_11__* %63, %struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %62, %50
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %43

70:                                               ; preds = %43
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @Delete(i32 %73, i32* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @FreeIkeClient(%struct.TYPE_11__* %76, i32* %77)
  br label %79

79:                                               ; preds = %70, %13
  ret void
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @MarkIkeSaAsDeleted(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @MarkIPsecSaAsDeleted(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @Delete(i32, i32*) #1

declare dso_local i32 @FreeIkeClient(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
