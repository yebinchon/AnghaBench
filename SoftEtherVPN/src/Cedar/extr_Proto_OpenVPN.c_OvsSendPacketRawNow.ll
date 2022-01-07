; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendPacketRawNow.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsSendPacketRawNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OvsSendPacketRawNow(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %12, %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @Free(i8* %22)
  br label %95

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %76 [
    i32 132, label %28
    i32 129, label %29
    i32 128, label %44
    i32 130, label %48
    i32 131, label %52
  ]

28:                                               ; preds = %24
  br label %76

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @StrLen(i32 %41)
  %43 = call i32 @OvsDataXorMask(i8* %30, i64 %31, i32 %36, i32 %42)
  br label %76

44:                                               ; preds = %24
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @OvsDataXorPtrPos(i8* %45, i64 %46)
  br label %76

48:                                               ; preds = %24
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @OvsDataReverse(i8* %49, i64 %50)
  br label %76

52:                                               ; preds = %24
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @OvsDataXorPtrPos(i8* %53, i64 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @OvsDataReverse(i8* %56, i64 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @OvsDataXorPtrPos(i8* %59, i64 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @StrLen(i32 %73)
  %75 = call i32 @OvsDataXorMask(i8* %62, i64 %63, i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %52, %24, %48, %44, %29, %28
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32* @NewUdpPacket(i32* %78, i32 %81, i32* %83, i32 %86, i8* %87, i64 %88)
  store i32* %89, i32** %9, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @Add(i32 %92, i32* %93)
  br label %95

95:                                               ; preds = %76, %21
  ret void
}

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @OvsDataXorMask(i8*, i64, i32, i32) #1

declare dso_local i32 @StrLen(i32) #1

declare dso_local i32 @OvsDataXorPtrPos(i8*, i64) #1

declare dso_local i32 @OvsDataReverse(i8*, i64) #1

declare dso_local i32* @NewUdpPacket(i32*, i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @Add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
