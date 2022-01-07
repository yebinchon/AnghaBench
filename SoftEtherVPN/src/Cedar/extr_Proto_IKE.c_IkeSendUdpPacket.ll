; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeSendUdpPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeSendUdpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeSendUdpPacket(%struct.TYPE_7__* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %13, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %15, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %16, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32, %29, %26, %23, %20, %8
  br label %55

39:                                               ; preds = %35
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call %struct.TYPE_6__* @NewUdpPacket(i32* %40, i64 %41, i32* %42, i64 %43, i8* %44, i64 %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %17, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = call i32 @Add(i32 %52, %struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.TYPE_6__* @NewUdpPacket(i32*, i64, i32*, i64, i8*, i64) #1

declare dso_local i32 @Add(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
