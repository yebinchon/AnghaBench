; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_mkv_field_order.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_mkv_field_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"Lavf%d.%d.%d\00", align 1
@AV_FIELD_PROGRESSIVE = common dso_local global i32 0, align 4
@AV_FIELD_UNKNOWN = common dso_local global i32 0, align 4
@AV_FIELD_TT = common dso_local global i32 0, align 4
@AV_FIELD_BB = common dso_local global i32 0, align 4
@AV_FIELD_TB = common dso_local global i32 0, align 4
@AV_FIELD_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @mkv_field_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_field_order(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @sscanf(i64 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 57
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 36
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 51
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 100
  br label %32

32:                                               ; preds = %29, %26, %23, %20
  %33 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %20 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %14, %2
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %63 [
    i32 131, label %37
    i32 128, label %39
    i32 129, label %41
    i32 133, label %43
    i32 132, label %45
    i32 130, label %54
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @AV_FIELD_PROGRESSIVE, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %35
  %40 = load i32, i32* @AV_FIELD_UNKNOWN, align 4
  store i32 %40, i32* %3, align 4
  br label %65

41:                                               ; preds = %35
  %42 = load i32, i32* @AV_FIELD_TT, align 4
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %35
  %44 = load i32, i32* @AV_FIELD_BB, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @AV_FIELD_TB, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @AV_FIELD_BT, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @AV_FIELD_BT, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @AV_FIELD_TB, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %35
  %64 = load i32, i32* @AV_FIELD_UNKNOWN, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61, %52, %43, %41, %39, %37
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @sscanf(i64, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
