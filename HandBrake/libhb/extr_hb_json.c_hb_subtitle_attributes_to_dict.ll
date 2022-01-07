; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_subtitle_attributes_to_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_subtitle_attributes_to_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"{s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@HB_SUBTITLE_ATTR_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Large\00", align 1
@HB_SUBTITLE_ATTR_LARGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Children\00", align 1
@HB_SUBTITLE_ATTR_CHILDREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ClosedCaption\00", align 1
@HB_SUBTITLE_ATTR_CC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Forced\00", align 1
@HB_SUBTITLE_ATTR_FORCED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Commentary\00", align 1
@HB_SUBTITLE_ATTR_COMMENTARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"4By3\00", align 1
@HB_SUBTITLE_ATTR_4_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"Wide\00", align 1
@HB_SUBTITLE_ATTR_WIDE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Letterbox\00", align 1
@HB_SUBTITLE_ATTR_LETTERBOX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"PanScan\00", align 1
@HB_SUBTITLE_ATTR_PANSCAN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@HB_SUBTITLE_ATTR_DEFAULT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"json pack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_subtitle_attributes_to_dict(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @HB_SUBTITLE_ATTR_NORMAL, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @hb_value_bool(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @HB_SUBTITLE_ATTR_LARGE, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @hb_value_bool(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @HB_SUBTITLE_ATTR_CHILDREN, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @hb_value_bool(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @HB_SUBTITLE_ATTR_CC, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @hb_value_bool(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @HB_SUBTITLE_ATTR_FORCED, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @hb_value_bool(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @HB_SUBTITLE_ATTR_COMMENTARY, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @hb_value_bool(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @HB_SUBTITLE_ATTR_4_3, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @hb_value_bool(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @HB_SUBTITLE_ATTR_WIDE, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @hb_value_bool(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @HB_SUBTITLE_ATTR_LETTERBOX, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @hb_value_bool(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @HB_SUBTITLE_ATTR_PANSCAN, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @hb_value_bool(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @HB_SUBTITLE_ATTR_DEFAULT, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @hb_value_bool(i32 %47)
  %49 = call i32* @json_pack_ex(%struct.TYPE_3__* %3, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %48)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %1
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32* @json_pack_ex(%struct.TYPE_3__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @hb_value_bool(i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
