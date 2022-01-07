; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_ape_decode_value_3900.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_apedec.c_ape_decode_value_3900.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@counts_3970 = common dso_local global i32 0, align 4
@counts_diff_3970 = common dso_local global i32 0, align 4
@MODEL_ELEMENTS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Too many bits: %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @ape_decode_value_3900 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ape_decode_value_3900(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i32, i32* @counts_3970, align 4
  %11 = load i32, i32* @counts_diff_3970, align 4
  %12 = call i32 @range_get_symbol(%struct.TYPE_9__* %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MODEL_ELEMENTS, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call i32 @range_decode_bits(%struct.TYPE_9__* %18, i32 5)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i32 [ 0, %25 ], [ %30, %26 ]
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 16
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 3910
  br i1 %40, label %41, label %56

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 23
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @av_log(i32 %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %3, align 4
  br label %94

52:                                               ; preds = %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @range_decode_bits(%struct.TYPE_9__* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %78

56:                                               ; preds = %36
  %57 = load i32, i32* %8, align 4
  %58 = icmp sle i32 %57, 31
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i32 @range_decode_bits(%struct.TYPE_9__* %60, i32 16)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 16
  %65 = call i32 @range_decode_bits(%struct.TYPE_9__* %62, i32 %64)
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @av_log(i32 %72, i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %3, align 4
  br label %94

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @update_rice(%struct.TYPE_8__* %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = lshr i32 %87, 1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 1
  %91 = sub i32 %90, 1
  %92 = xor i32 %88, %91
  %93 = add i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %78, %69, %44
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @range_get_symbol(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @range_decode_bits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @update_rice(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
