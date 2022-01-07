; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnIpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnIpReceived(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3, i8* %4, i64 %5, i32 %6, i32* %7, i64 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load i8*, i8** %15, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %10
  br label %63

27:                                               ; preds = %23
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %63

34:                                               ; preds = %27
  %35 = load i64, i64* %14, align 8
  switch i64 %35, label %63 [
    i64 128, label %36
    i64 129, label %45
    i64 130, label %54
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i64, i64* %20, align 8
  %44 = call i32 @NnUdpReceived(%struct.TYPE_6__* %37, i64 %38, i64 %39, i8* %40, i64 %41, i32 %42, i64 %43)
  br label %63

45:                                               ; preds = %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i64, i64* %20, align 8
  %53 = call i32 @NnTcpReceived(%struct.TYPE_6__* %46, i64 %47, i64 %48, i8* %49, i64 %50, i32 %51, i64 %52)
  br label %63

54:                                               ; preds = %34
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i64, i64* %20, align 8
  %62 = call i32 @NnIcmpReceived(%struct.TYPE_6__* %55, i64 %56, i64 %57, i8* %58, i64 %59, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %26, %33, %34, %54, %45, %36
  ret void
}

declare dso_local i32 @NnUdpReceived(%struct.TYPE_6__*, i64, i64, i8*, i64, i32, i64) #1

declare dso_local i32 @NnTcpReceived(%struct.TYPE_6__*, i64, i64, i8*, i64, i32, i64) #1

declare dso_local i32 @NnIcmpReceived(%struct.TYPE_6__*, i64, i64, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
