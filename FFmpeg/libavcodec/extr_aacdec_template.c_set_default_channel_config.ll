; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_set_default_channel_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_set_default_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"invalid default channel configuration (%d)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@tags_per_config = common dso_local global i32* null, align 8
@aac_channel_layout_map = common dso_local global i32* null, align 8
@FF_COMPLIANCE_STRICT = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [163 x i8] c"Assuming an incorrectly encoded 7.1 channel layout instead of a spec-compliant 7.1(wide) layout, use -strict %d to decode according to the specification instead.\0A\00", align 1
@AAC_CHANNEL_SIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, [3 x i32]*, i32*, i32)* @set_default_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_default_channel_config(%struct.TYPE_4__* %0, [3 x i32]* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca [3 x i32]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store [3 x i32]* %1, [3 x i32]** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 11
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 12
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %15, %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @av_log(%struct.TYPE_4__* %22, i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %18
  %28 = load i32*, i32** @tags_per_config, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load [3 x i32]*, [3 x i32]** %7, align 8
  %35 = bitcast [3 x i32]* %34 to i32**
  %36 = load i32*, i32** @aac_channel_layout_map, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 12
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(i32** %35, i32 %41, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %65

50:                                               ; preds = %27
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FF_COMPLIANCE_STRICT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = load i32, i32* @AV_LOG_INFO, align 4
  %59 = load i32, i32* @FF_COMPLIANCE_STRICT, align 4
  %60 = call i32 @av_log(%struct.TYPE_4__* %57, i32 %58, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @AAC_CHANNEL_SIDE, align 4
  %62 = load [3 x i32]*, [3 x i32]** %7, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %62, i64 2
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %63, i64 0, i64 2
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %56, %50, %27
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %21
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
