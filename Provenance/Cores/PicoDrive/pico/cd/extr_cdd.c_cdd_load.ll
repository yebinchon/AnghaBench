; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdd.c_cdd_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdd.c_cdd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@cdd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"SEGADISCSYSTEM\00", align 1
@EL_STATUS = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cd: bad cd image?\00", align 1
@CT_BIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cd: type detection mismatch\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"T-95035\00", align 1
@toc_snatcher = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"T-127015\00", align 1
@toc_lunar = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"T-113045\00", align 1
@toc_shadow = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"T-143025\00", align 1
@toc_dungeon = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"MK-4410\00", align 1
@toc_ffight = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"G-6013\00", align 1
@toc_ffightj = common dso_local global i32* null, align 8
@NO_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdd_load(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [528 x i8], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @cdd_unload()
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @load_cd_image(i8* %9, i32* %5)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %332

15:                                               ; preds = %2
  %16 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_read(i8* %16, i32 16, i32 %20)
  %22 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %23 = call i64 @memcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22, i32 14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_read(i8* %26, i32 16, i32 %30)
  %32 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %33 = call i64 @memcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %32, i32 14)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @EL_STATUS, align 4
  %37 = load i32, i32* @EL_ANOMALY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @elprintf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %25
  store i32 2352, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 0), align 8
  br label %42

41:                                               ; preds = %15
  store i32 2048, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 0), align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CT_BIN, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2352, i32 2048
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 0), align 8
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @EL_STATUS, align 4
  %53 = load i32, i32* @EL_ANOMALY, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @elprintf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %42
  %57 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 16
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pm_read(i8* %58, i32 512, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %324

66:                                               ; preds = %56
  %67 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 384
  %69 = call i32* @strstr(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %72

72:                                               ; preds = %104, %71
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @toc_snatcher, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %84, %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %104

104:                                              ; preds = %72
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %106 = icmp slt i32 %105, 21
  br i1 %106, label %72, label %107

107:                                              ; preds = %104
  br label %323

108:                                              ; preds = %66
  %109 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 384
  %111 = call i32* @strstr(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %150

113:                                              ; preds = %108
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @toc_lunar, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %126, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %146

146:                                              ; preds = %114
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %148 = icmp slt i32 %147, 52
  br i1 %148, label %114, label %149

149:                                              ; preds = %146
  br label %322

150:                                              ; preds = %108
  %151 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %152 = getelementptr inbounds i8, i8* %151, i64 384
  %153 = call i32* @strstr(i8* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %192

155:                                              ; preds = %150
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %156

156:                                              ; preds = %188, %155
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %157, i32* %162, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** @toc_shadow, align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %168, %173
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 %174, i32* %179, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %188

188:                                              ; preds = %156
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %190 = icmp slt i32 %189, 15
  br i1 %190, label %156, label %191

191:                                              ; preds = %188
  br label %321

192:                                              ; preds = %150
  %193 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %194 = getelementptr inbounds i8, i8* %193, i64 384
  %195 = call i32* @strstr(i8* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %234

197:                                              ; preds = %192
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %198

198:                                              ; preds = %230, %197
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  store i32 %199, i32* %204, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** @toc_dungeon, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %210, %215
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  store i32 %216, i32* %221, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %230

230:                                              ; preds = %198
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %232 = icmp slt i32 %231, 13
  br i1 %232, label %198, label %233

233:                                              ; preds = %230
  br label %320

234:                                              ; preds = %192
  %235 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %236 = getelementptr inbounds i8, i8* %235, i64 384
  %237 = call i32* @strstr(i8* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %276

239:                                              ; preds = %234
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %240

240:                                              ; preds = %272, %239
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store i32 %241, i32* %246, align 4
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** @toc_ffight, align 8
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %252, %257
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  store i32 %258, i32* %263, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %270 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %272

272:                                              ; preds = %240
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %274 = icmp slt i32 %273, 26
  br i1 %274, label %240, label %275

275:                                              ; preds = %272
  br label %319

276:                                              ; preds = %234
  %277 = getelementptr inbounds [528 x i8], [528 x i8]* %6, i64 0, i64 0
  %278 = getelementptr inbounds i8, i8* %277, i64 384
  %279 = call i32* @strstr(i8* %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %318

281:                                              ; preds = %276
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %282

282:                                              ; preds = %314, %281
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i32 %283, i32* %288, align 4
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** @toc_ffightj, align 8
  %296 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %294, %299
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  store i32 %300, i32* %305, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  store i32 %311, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  br label %314

314:                                              ; preds = %282
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %316 = icmp slt i32 %315, 29
  br i1 %316, label %282, label %317

317:                                              ; preds = %314
  br label %318

318:                                              ; preds = %317, %276
  br label %319

319:                                              ; preds = %318, %275
  br label %320

320:                                              ; preds = %319, %233
  br label %321

321:                                              ; preds = %320, %191
  br label %322

322:                                              ; preds = %321, %149
  br label %323

323:                                              ; preds = %322, %107
  br label %324

324:                                              ; preds = %323, %56
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 1), align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 2), align 8
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 3, i32 0), align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  store i32 %325, i32* %330, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 1), align 4
  %331 = load i32, i32* @NO_DISC, align 4
  store i32 %331, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cdd, i32 0, i32 2), align 8
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %324, %13
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @cdd_unload(...) #1

declare dso_local i32 @load_cd_image(i8*, i32*) #1

declare dso_local i32 @pm_read(i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
