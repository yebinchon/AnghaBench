; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_find_last_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_find_last_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.AVFormatContext = type opaque
%struct.AVFormatContext.0 = type opaque

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_find_last_ts(%struct.TYPE_4__* %0, i32 %1, i64* %2, i64* %3, i64 (%struct.AVFormatContext*, i32, i64*, i64)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64 (%struct.AVFormatContext*, i32, i64*, i64)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 (%struct.AVFormatContext*, i32, i64*, i64)* %4, i64 (%struct.AVFormatContext*, i32, i64*, i64)** %11, align 8
  store i64 1024, i64* %12, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @avio_size(i32 %21)
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %50, %5
  %26 = load i64, i64* %16, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @FFMAX(i32 0, i32 %30)
  store i64 %31, i64* %16, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %13, align 8
  %35 = load i64 (%struct.AVFormatContext*, i32, i64*, i64)*, i64 (%struct.AVFormatContext*, i32, i64*, i64)** %11, align 8
  %36 = bitcast i64 (%struct.AVFormatContext*, i32, i64*, i64)* %35 to i64 (%struct.AVFormatContext.0*, i32, i64*, i64)*
  %37 = call i64 @ff_read_timestamp(%struct.TYPE_4__* %32, i32 %33, i64* %16, i64 %34, i64 (%struct.AVFormatContext.0*, i32, i64*, i64)* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %25
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = mul nsw i64 2, %46
  %48 = load i64, i64* %12, align 8
  %49 = icmp sgt i64 %47, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %25, label %52

52:                                               ; preds = %50
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %97

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %17, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* @INT64_MAX, align 8
  %64 = load i64 (%struct.AVFormatContext*, i32, i64*, i64)*, i64 (%struct.AVFormatContext*, i32, i64*, i64)** %11, align 8
  %65 = bitcast i64 (%struct.AVFormatContext*, i32, i64*, i64)* %64 to i64 (%struct.AVFormatContext.0*, i32, i64*, i64)*
  %66 = call i64 @ff_read_timestamp(%struct.TYPE_4__* %61, i32 %62, i64* %17, i64 %63, i64 (%struct.AVFormatContext.0*, i32, i64*, i64)* %65)
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %84

71:                                               ; preds = %58
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp sgt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @av_assert0(i32 %75)
  %77 = load i64, i64* %18, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %17, align 8
  store i64 %78, i64* %16, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %15, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %84

83:                                               ; preds = %71
  br label %58

84:                                               ; preds = %82, %70
  %85 = load i64*, i64** %9, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %14, align 8
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64*, i64** %10, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %16, align 8
  %95 = load i64*, i64** %10, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %56
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @avio_size(i32) #1

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local i64 @ff_read_timestamp(%struct.TYPE_4__*, i32, i64*, i64, i64 (%struct.AVFormatContext.0*, i32, i64*, i64)*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
