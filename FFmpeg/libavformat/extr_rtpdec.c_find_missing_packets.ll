; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_find_missing_packets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec.c_find_missing_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i64*)* @find_missing_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_missing_packets(%struct.TYPE_5__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %80

29:                                               ; preds = %22
  %30 = load i64*, i64** %7, align 8
  store i64 0, i64* %30, align 8
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %74, %29
  %32 = load i32, i32* %8, align 4
  %33 = icmp sle i32 %32, 16
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %51, %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %10, align 8
  br label %39

55:                                               ; preds = %50, %39
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %77

59:                                               ; preds = %55
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %7, align 8
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %70
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %66, %65
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %31

77:                                               ; preds = %58, %31
  %78 = load i64, i64* %9, align 8
  %79 = load i64*, i64** %6, align 8
  store i64 %78, i64* %79, align 8
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
