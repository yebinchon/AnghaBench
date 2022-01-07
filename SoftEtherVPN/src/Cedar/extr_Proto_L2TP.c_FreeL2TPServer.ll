; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_FreeL2TPServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_FreeL2TPServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeL2TPServer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %80

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FreeThreadList(i32 %12)
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %30, %9
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @LIST_NUM(i32 %18)
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i8* @LIST_DATA(i32 %24, i64 %25)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @FreeUdpPacket(i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ReleaseList(i32 %36)
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %54, %33
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @LIST_NUM(i32 %42)
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i8* @LIST_DATA(i32 %48, i64 %49)
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %5, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @FreeL2TPTunnel(i32* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %3, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ReleaseList(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ReleaseSockEvent(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ReleaseEvent(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ReleaseCedar(i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @FreeTubeFlushList(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = call i32 @Free(%struct.TYPE_4__* %78)
  br label %80

80:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @FreeThreadList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @FreeUdpPacket(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @FreeL2TPTunnel(i32*) #1

declare dso_local i32 @ReleaseSockEvent(i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @ReleaseCedar(i32) #1

declare dso_local i32 @FreeTubeFlushList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
