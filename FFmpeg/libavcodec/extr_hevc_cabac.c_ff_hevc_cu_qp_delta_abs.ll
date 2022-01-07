; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_cu_qp_delta_abs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_cabac.c_ff_hevc_cu_qp_delta_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@elem_offset = common dso_local global i64* null, align 8
@CU_QP_DELTA = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CABAC_MAX_BIN : %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_cu_qp_delta_abs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64*, i64** @elem_offset, align 8
  %13 = load i64, i64* @CU_QP_DELTA, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i64 @GET_CABAC(i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %11, %8
  %22 = phi i1 [ false, %8 ], [ %20, %11 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %8

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 5
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 7
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @get_cabac_bypass(i32* %37)
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 7
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @av_log(i32 %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @get_cabac_bypass(i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %61

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %52
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @GET_CABAC(i64) #1

declare dso_local i32 @get_cabac_bypass(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
