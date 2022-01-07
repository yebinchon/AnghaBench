; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_state_to_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_state_to_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SCANNING\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SCANDONE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"WORKING\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"PAUSED\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SEARCHING\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"WORKDONE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MUXING\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"{s:o}\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"{s:o, s{s:o, s:o, s:o, s:o, s:o, s:o}}\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Scanning\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"SequenceID\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Progress\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"PreviewCount\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"TitleCount\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"{s:o, s{s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o, s:o}}\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Working\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"PassID\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"PassCount\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Rate\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"RateAvg\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ETASeconds\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Hours\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Minutes\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Paused\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Seconds\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"{s:o, s{s:o, s:o}}\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"WorkDone\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"{s:o, s{s:o}}\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Muxing\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"hb_state_to_dict: unrecognized state %d\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"json pack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_state_to_dict(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 135, label %9
    i32 131, label %10
    i32 132, label %11
    i32 128, label %12
    i32 133, label %13
    i32 130, label %14
    i32 129, label %15
    i32 134, label %16
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %18

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %18

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %18

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %18

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %18

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %18

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %18

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %162 [
    i32 135, label %22
    i32 131, label %26
    i32 132, label %26
    i32 128, label %64
    i32 133, label %64
    i32 130, label %64
    i32 129, label %138
    i32 134, label %152
  ]

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @hb_value_string(i8* %23)
  %25 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %24)
  store i32* %25, i32** %4, align 8
  br label %170

26:                                               ; preds = %18, %18
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @hb_value_string(i8* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hb_value_int(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hb_value_double(i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hb_value_int(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hb_value_int(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hb_value_int(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hb_value_int(i32 %61)
  %63 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %62)
  store i32* %63, i32** %4, align 8
  br label %170

64:                                               ; preds = %18, %18, %18
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @hb_value_string(i8* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @hb_value_double(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hb_value_int(i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hb_value_int(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @hb_value_int(i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hb_value_double(i32 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @hb_value_double(i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @hb_value_int(i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hb_value_int(i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @hb_value_int(i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @hb_value_int(i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @hb_value_int(i32 %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @hb_value_int(i32 %135)
  %137 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  store i32* %137, i32** %4, align 8
  br label %170

138:                                              ; preds = %18
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 @hb_value_string(i8* %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @hb_value_int(i32 %143)
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @hb_value_int(i32 %149)
  %151 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 %150)
  store i32* %151, i32** %4, align 8
  br label %170

152:                                              ; preds = %18
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 @hb_value_string(i8* %153)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @hb_value_double(i32 %159)
  %161 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %160)
  store i32* %161, i32** %4, align 8
  br label %170

162:                                              ; preds = %18
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 @hb_value_string(i8* %163)
  %165 = call i32* (%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) @json_pack_ex(%struct.TYPE_13__* %5, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  store i32* %165, i32** %4, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @hb_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %162, %152, %138, %64, %26, %22
  %171 = load i32*, i32** %4, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @hb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load i32*, i32** %4, align 8
  ret i32* %178
}

declare dso_local i32* @json_pack_ex(%struct.TYPE_13__*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @hb_value_string(i8*) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_value_double(i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
