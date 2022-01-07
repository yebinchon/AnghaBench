; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpSendForInternet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpSendForInternet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@IP_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnIpSendForInternet(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %8
  br label %91

30:                                               ; preds = %26
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @IP_HEADER_SIZE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* @IP_HEADER_SIZE, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %17, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %17, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %17, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %17, align 8
  %49 = call i64 @MAX(i64 %48, i32 1000)
  store i64 %49, i64* %17, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %18, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  store i64 %56, i64* %20, align 8
  %57 = load i64, i64* %15, align 8
  store i64 %57, i64* %21, align 8
  store i64 0, i64* %19, align 8
  br label %58

58:                                               ; preds = %47, %87
  store i32 0, i32* %23, align 4
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %19, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i64 @MIN(i64 %59, i64 %62)
  store i64 %63, i64* %22, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %22, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %21, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* %23, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = load i64, i64* %19, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i64, i64* %22, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @NnIpSendFragmentedForInternet(%struct.TYPE_6__* %71, i32 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i32* %80, i64 %81, i32 %82)
  %84 = load i32, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  br label %91

87:                                               ; preds = %70
  %88 = load i64, i64* %22, align 8
  %89 = load i64, i64* %19, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %19, align 8
  br label %58

91:                                               ; preds = %29, %86
  ret void
}

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @NnIpSendFragmentedForInternet(%struct.TYPE_6__*, i32, i64, i64, i64, i64, i64, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
