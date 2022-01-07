; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendControlPacketEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendControlPacketEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsSendControlPacketEx(%struct.TYPE_7__* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  br label %55

21:                                               ; preds = %17, %14
  %22 = call %struct.TYPE_6__* @ZeroMalloc(i32 48)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %21
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @Clone(i32* %39, i64 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %21
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = call i32 @Add(i32 %52, %struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %47, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @Clone(i32*, i64) #1

declare dso_local i32 @Add(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
