; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_audio_attributes_to_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_audio_attributes_to_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"{s:o, s:o, s:o, s:o, s:o, s:o}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@HB_AUDIO_ATTR_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"VisuallyImpaired\00", align 1
@HB_AUDIO_ATTR_VISUALLY_IMPAIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Commentary\00", align 1
@HB_AUDIO_ATTR_COMMENTARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"AltCommentary\00", align 1
@HB_AUDIO_ATTR_ALT_COMMENTARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Secondary\00", align 1
@HB_AUDIO_ATTR_SECONDARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@HB_AUDIO_ATTR_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"json pack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_audio_attributes_to_dict(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @HB_AUDIO_ATTR_NORMAL, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @hb_value_bool(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @HB_AUDIO_ATTR_VISUALLY_IMPAIRED, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @hb_value_bool(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @HB_AUDIO_ATTR_COMMENTARY, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @hb_value_bool(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @HB_AUDIO_ATTR_ALT_COMMENTARY, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @hb_value_bool(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @HB_AUDIO_ATTR_SECONDARY, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @hb_value_bool(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @HB_AUDIO_ATTR_DEFAULT, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @hb_value_bool(i32 %27)
  %29 = call i32* @json_pack_ex(%struct.TYPE_3__* %3, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32*, i32** %4, align 8
  ret i32* %37
}

declare dso_local i32* @json_pack_ex(%struct.TYPE_3__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @hb_value_bool(i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
