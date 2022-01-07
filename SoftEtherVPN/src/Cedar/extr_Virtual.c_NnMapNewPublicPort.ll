; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnMapNewPublicPort.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnMapNewPublicPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@NN_RAW_IP_PORT_START = common dso_local global i64 0, align 8
@NN_RAW_IP_PORT_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NnMapNewPublicPort(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 1025, i64* %14, align 8
  store i64 65500, i64* %15, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %77

22:                                               ; preds = %5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @NN_RAW_IP_PORT_START, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* @NN_RAW_IP_PORT_END, align 8
  store i64 %29, i64* %15, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = call i64 (...) @Rand32()
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %14, align 8
  %34 = sub nsw i64 %32, %33
  %35 = srem i64 %31, %34
  %36 = load i64, i64* %14, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %73, %30
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %16, align 8
  %63 = call i32 @NnSetNat(i32* %17, i64 %58, i32 0, i32 0, i64 %59, i64 %60, i64 %61, i64 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_4__* @SearchHash(i32 %66, i32* %17)
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %18, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %69 = icmp eq %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i64, i64* %16, align 8
  store i64 %71, i64* %6, align 8
  br label %77

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %12, align 8
  br label %38

76:                                               ; preds = %38
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %76, %70, %21
  %78 = load i64, i64* %6, align 8
  ret i64 %78
}

declare dso_local i64 @Rand32(...) #1

declare dso_local i32 @NnSetNat(i32*, i64, i32, i32, i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @SearchHash(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
