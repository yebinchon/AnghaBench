; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwdevice_iterate_types.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext.c_av_hwdevice_iterate_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hw_table = common dso_local global %struct.TYPE_2__** null, align 8
@AV_HWDEVICE_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_hwdevice_iterate_types(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hw_table, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hw_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %50

28:                                               ; preds = %17, %13
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hw_table, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31, %28
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hw_table, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %31
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %6

53:                                               ; preds = %6
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
