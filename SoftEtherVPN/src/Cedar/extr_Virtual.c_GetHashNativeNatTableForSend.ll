; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GetHashNativeNatTableForSend.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_GetHashNativeNatTableForSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@INFINITE = common dso_local global i64 0, align 8
@NAT_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetHashNativeNatTableForSend(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INFINITE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %58

21:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NAT_TCP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %21
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %42, %21
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* %2, align 8
  br label %58

58:                                               ; preds = %53, %17, %10
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
