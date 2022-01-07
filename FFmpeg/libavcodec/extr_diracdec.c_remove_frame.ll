; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_remove_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_remove_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__**, i32)* @remove_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @remove_frame(%struct.TYPE_6__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %30
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %61, %41
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %43

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
