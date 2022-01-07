; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cdbase.c_LoadCCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cdbase.c_LoadCCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [5 x i8] c".img\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@YAB_ERR_FILEREAD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DISC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"TocEntries\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Sessions\00", align 1
@disc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@YAB_ERR_OTHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Sessions more than 1 are unsupported\00", align 1
@YAB_ERR_MEMORYALLOC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"DataTracksScrambled\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"CCD Scrambled Tracks not supported\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Entry %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Session\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PMin\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ADR\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"TrackNo\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"AMin\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ASec\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"AFrame\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ALBA\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Zero\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"PSec\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"PFrame\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"PLBA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @LoadCCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadCCD(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %35 = call i8* @strrchr(i8* %34, i8 signext 46)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @YAB_ERR_FILEREAD, align 4
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %45 = call i32 @YabSetError(i32 %43, i8* %44)
  store i32 -1, i32* %3, align 4
  br label %346

46:                                               ; preds = %2
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i32 @fseek(i32* %47, i32 0, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @LoadParseCCD(i32* %50, %struct.TYPE_10__* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load i32, i32* @YAB_ERR_FILEREAD, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @YabSetError(i32 %56, i8* %57)
  store i32 -1, i32* %3, align 4
  br label %346

59:                                               ; preds = %46
  %60 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* %8, align 4
  %61 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 0), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 0), align 8
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* @YAB_ERR_OTHER, align 4
  %68 = call i32 @YabSetError(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %346

69:                                               ; preds = %59
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 0), align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call %struct.TYPE_11__* @malloc(i32 %73)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %76 = icmp eq %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = call i32 @free(%struct.TYPE_11__* %81)
  %83 = load i32, i32* @YAB_ERR_MEMORYALLOC, align 4
  %84 = call i32 @YabSetError(i32 %83, i8* null)
  store i32 -1, i32* %3, align 4
  br label %346

85:                                               ; preds = %69
  %86 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = call i32 @free(%struct.TYPE_11__* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %95 = call i32 @free(%struct.TYPE_11__* %94)
  %96 = load i32, i32* @YAB_ERR_OTHER, align 4
  %97 = call i32 @YabSetError(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %346

98:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %184, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %187

103:                                              ; preds = %99
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %108 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 161
  br i1 %110, label %111, label %183

111:                                              ; preds = %103
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %113 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %113, i32* %14, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 150, i32* %119, align 8
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %121 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 48
  %137 = trunc i64 %136 to i32
  %138 = call %struct.TYPE_11__* @malloc(i32 %137)
  %139 = bitcast %struct.TYPE_11__* %138 to %struct.TYPE_9__*
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = icmp eq %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %111
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @fclose(i32* %155)
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = call i32 @free(%struct.TYPE_11__* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %161 = call i32 @free(%struct.TYPE_11__* %160)
  %162 = load i32, i32* @YAB_ERR_MEMORYALLOC, align 4
  %163 = call i32 @YabSetError(i32 %162, i8* null)
  store i32 -1, i32* %3, align 4
  br label %346

164:                                              ; preds = %111
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %166 = load i32, i32* %14, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 48
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memset(%struct.TYPE_9__* %171, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %164, %103
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %99

187:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %340, %187
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %343

192:                                              ; preds = %188
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @sprintf(i8* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %197 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %197, i32* %16, align 4
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %199 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %199, i32* %17, align 4
  %200 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %201 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 %201, i32* %18, align 4
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %203 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store i32 %203, i32* %19, align 4
  %204 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %205 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store i32 %205, i32* %20, align 4
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %207 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i32 %207, i32* %21, align 4
  %208 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %209 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  store i32 %209, i32* %22, align 4
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %211 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store i32 %211, i32* %23, align 4
  %212 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %213 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i32 %213, i32* %24, align 4
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %215 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i32 %215, i32* %25, align 4
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %217 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i32 %217, i32* %26, align 4
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %219 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  store i32 %219, i32* %27, align 4
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %221 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  store i32 %221, i32* %28, align 4
  %222 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %223 = call i32 @GetIntCCD(%struct.TYPE_10__* %7, i8* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i32 %223, i32* %29, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp sge i32 %224, 1
  br i1 %225, label %226, label %298

226:                                              ; preds = %192
  %227 = load i32, i32* %17, align 4
  %228 = icmp sle i32 %227, 99
  br i1 %228, label %229, label %298

229:                                              ; preds = %226
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %231 = load i32, i32* %16, align 4
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = load i32, i32* %17, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %239
  store %struct.TYPE_9__* %240, %struct.TYPE_9__** %30, align 8
  %241 = load i32, i32* %19, align 4
  %242 = shl i32 %241, 4
  %243 = load i32, i32* %18, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* %27, align 4
  %249 = load i32, i32* %28, align 4
  %250 = call i8* @MSF_TO_FAD(i32 %247, i32 %248, i32 %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %17, align 4
  %255 = icmp sge i32 %254, 2
  br i1 %255, label %256, label %273

256:                                              ; preds = %229
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, 1
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %262 = load i32, i32* %16, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sub nsw i32 %268, 2
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  store i32 %260, i32* %272, align 8
  br label %273

273:                                              ; preds = %256, %229
  %274 = load i32, i32* %29, align 4
  %275 = mul nsw i32 %274, 2352
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 4
  store i32 2352, i32* %279, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 8
  store i32* %280, i32** %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 1
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %286, %289
  %291 = mul nsw i32 %290, 2352
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 7
  store i64 0, i64* %295, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 6
  store i64 0, i64* %297, align 8
  br label %339

298:                                              ; preds = %226, %192
  %299 = load i32, i32* %17, align 4
  %300 = icmp eq i32 %299, 162
  br i1 %300, label %301, label %338

301:                                              ; preds = %298
  %302 = load i32, i32* %26, align 4
  %303 = load i32, i32* %27, align 4
  %304 = load i32, i32* %28, align 4
  %305 = call i8* @MSF_TO_FAD(i32 %302, i32 %303, i32 %304)
  %306 = ptrtoint i8* %305 to i32
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %308 = load i32, i32* %16, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  store i32 %306, i32* %312, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %314 = load i32, i32* %16, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %321 = load i32, i32* %16, align 4
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 3
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @disc, i32 0, i32 1), align 8
  %328 = load i32, i32* %16, align 4
  %329 = sub nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 2
  store i32 %319, i32* %337, align 8
  br label %338

338:                                              ; preds = %301, %298
  br label %339

339:                                              ; preds = %338, %273
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %188

343:                                              ; preds = %188
  %344 = load i32*, i32** %5, align 8
  %345 = call i32 @fclose(i32* %344)
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %343, %154, %88, %77, %64, %53, %42
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @LoadParseCCD(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @GetIntCCD(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @MSF_TO_FAD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
