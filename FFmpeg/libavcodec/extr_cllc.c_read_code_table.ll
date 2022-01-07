; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_read_code_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cllc.c_read_code_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@VLC_BITS = common dso_local global i32 0, align 4
@VLC_DEPTH = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"To long VLCs %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Too many VLCs (%d) to be read.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_6__*)* @read_code_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_code_table(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @get_bits(i32* %18, i32 5)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @VLC_BITS, align 4
  %23 = load i32, i32* @VLC_DEPTH, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @av_log(i32 %31, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %4, align 4
  br label %108

36:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %97, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @get_bits(i32* %42, i32 9)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 256
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @av_log(i32 %55, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %4, align 4
  br label %108

60:                                               ; preds = %41
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %84, %60
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = call i8* @get_bits(i32* %66, i32 8)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %61

87:                                               ; preds = %61
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 32639
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %4, align 4
  br label %108

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = shl i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %37

100:                                              ; preds = %37
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load i32, i32* @VLC_BITS, align 4
  %103 = load i32, i32* %17, align 4
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %106 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %107 = call i32 @ff_init_vlc_sparse(%struct.TYPE_6__* %101, i32 %102, i32 %103, i32* %104, i32 1, i32 1, i32* %105, i32 2, i32 2, i32* %106, i32 1, i32 1, i32 0)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %90, %50, %26
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @ff_init_vlc_sparse(%struct.TYPE_6__*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
