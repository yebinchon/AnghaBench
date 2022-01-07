; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv30.c_rv30_decode_mb_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv30.c_rv30_decode_mb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@rv30_decode_mb_info.rv30_p_types = internal constant [6 x i32] [i32 130, i32 132, i32 131, i32 -1, i32 129, i32 128], align 16
@rv30_decode_mb_info.rv30_b_types = internal constant [6 x i32] [i32 130, i32 134, i32 133, i32 135, i32 129, i32 128], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Incorrect MB type code\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dquant needed\0A\00", align 1
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @rv30_decode_mb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv30_decode_mb_info(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_interleaved_ue_golomb(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %13, 11
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 @av_log(i32 %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %48

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ugt i32 %22, 5
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = call i32 @av_log(i32 %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 6
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* @rv30_decode_mb_info.rv30_p_types, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* @rv30_decode_mb_info.rv30_b_types, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %38, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @get_interleaved_ue_golomb(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
