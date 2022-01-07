; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessRecvPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPProcessRecvPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@RUDP_MAX_SEGMENT_SIZE = common dso_local global i32 0, align 4
@RUDP_MAX_NUM_ACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPProcessRecvPayload(i32* %0, %struct.TYPE_9__* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @RUDP_MAX_SEGMENT_SIZE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24, %21, %18, %15, %5
  br label %93

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RUDP_MAX_NUM_ACK, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %93

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @AddInt64Distinct(i32 %50, i64 %51)
  br label %93

53:                                               ; preds = %41
  %54 = call i32 @Zero(%struct.TYPE_10__* %11, i32 16)
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_10__* @Search(i32 %59, %struct.TYPE_10__* %11)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @AddInt64Distinct(i32 %66, i64 %67)
  br label %93

69:                                               ; preds = %53
  %70 = call %struct.TYPE_10__* @ZeroMalloc(i32 16)
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @Copy(i32 %76, i8* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = call i32 @Insert(i32 %85, %struct.TYPE_10__* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @AddInt64Distinct(i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %69, %63, %47, %40, %31
  ret void
}

declare dso_local i32 @AddInt64Distinct(i32, i64) #1

declare dso_local i32 @Zero(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @Search(i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(i32, i8*, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
