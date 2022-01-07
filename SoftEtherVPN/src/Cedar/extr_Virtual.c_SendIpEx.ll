; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendIpEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_SendIpEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@MAX_IP_DATA_SIZE_TOTAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendIpEx(%struct.TYPE_4__* %0, i64 %1, i64 %2, i32 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %7
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @MAX_IP_DATA_SIZE_TOTAL, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %27, %24, %7
  br label %80

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %16, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %13, align 8
  store i64 %46, i64* %19, align 8
  store i64 0, i64* %17, align 8
  br label %47

47:                                               ; preds = %35, %76
  store i32 0, i32* %21, align 4
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %17, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i64 @MIN(i64 %48, i64 %51)
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %20, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %19, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 1, i32* %21, align 4
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i64, i64* %20, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @SendFragmentedIp(%struct.TYPE_4__* %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i32 %66, i32* %69, i64 %70, i32* null, i32 %71)
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %80

76:                                               ; preds = %59
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %17, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %17, align 8
  br label %47

80:                                               ; preds = %34, %75
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @SendFragmentedIp(%struct.TYPE_4__*, i64, i64, i64, i64, i64, i32, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
