; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ApplyAccessListToForwardPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_ApplyAccessListToForwardPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ApplyAccessListToForwardPacket(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = icmp eq %struct.TYPE_20__* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %21 = icmp eq %struct.TYPE_18__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = icmp eq %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %4
  store i32 0, i32* %5, align 4
  br label %99

26:                                               ; preds = %22
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %99

32:                                               ; preds = %26
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LockList(i32 %35)
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %90, %32
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @LIST_NUM(i32 %41)
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %37
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call %struct.TYPE_21__* @LIST_DATA(i32 %47, i64 %48)
  store %struct.TYPE_21__* %49, %struct.TYPE_21__** %13, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_19__*
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_19__*
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = call i64 @IsPacketMaskedByAccessList(%struct.TYPE_17__* %59, %struct.TYPE_18__* %60, %struct.TYPE_21__* %61, i32 %69, i32 %77, %struct.TYPE_17__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %58
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 1
  store i32 %87, i32* %11, align 4
  br label %93

88:                                               ; preds = %58
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %10, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %37

93:                                               ; preds = %81, %37
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @UnlockList(i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %31, %25
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_21__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @IsPacketMaskedByAccessList(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_21__*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
