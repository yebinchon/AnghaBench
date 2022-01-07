; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Meminfo_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_Meminfo_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@mainzone = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"block:%p    size:%7i    tag:%3i\0A\00", align 1
@TAG_BOTLIB = common dso_local global i64 0, align 8
@TAG_RENDERER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR: block size does not touch the next block\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"ERROR: next block doesn't have proper back link\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ERROR: two consecutive free blocks\0A\00", align 1
@smallzone = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%8i bytes total hunk\0A\00", align 1
@s_hunkTotal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%8i bytes total zone\0A\00", align 1
@s_zoneTotal = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%8i low mark\0A\00", align 1
@hunk_low = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"%8i low permanent\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%8i low temp\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%8i low tempHighwater\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%8i high mark\0A\00", align 1
@hunk_high = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"%8i high permanent\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%8i high temp\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"%8i high tempHighwater\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%8i total hunk in use\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%8i unused highwater\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%8i bytes in %i zone blocks\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"        %8i bytes in dynamic botlib\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"        %8i bytes in dynamic renderer\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"        %8i bytes in dynamic other\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"        %8i bytes in small Zone memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_Meminfo_f() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mainzone, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %1, align 8
  br label %13

13:                                               ; preds = %111, %0
  %14 = call i32 (...) @Cmd_Argc()
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %17, i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %16, %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TAG_BOTLIB, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %30
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TAG_RENDERER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %25
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mainzone, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = icmp eq %struct.TYPE_6__* %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %115

71:                                               ; preds = %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %73 = bitcast %struct.TYPE_6__* %72 to i32*
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = bitcast %struct.TYPE_6__* %81 to i32*
  %83 = icmp ne i32* %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %71
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %93 = icmp ne %struct.TYPE_6__* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %86
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %101, %96
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %1, align 8
  br label %13

115:                                              ; preds = %70
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @smallzone, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %1, align 8
  br label %120

120:                                              ; preds = %142, %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %125, %120
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @smallzone, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = icmp eq %struct.TYPE_6__* %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %146

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %1, align 8
  br label %120

146:                                              ; preds = %140
  %147 = load i32, i32* @s_hunkTotal, align 4
  %148 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @s_zoneTotal, align 4
  %150 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 0), align 4
  %153 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 1), align 4
  %155 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 2), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 1), align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 2), align 4
  %161 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %159, %146
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 3), align 4
  %164 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 0), align 4
  %167 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 1), align 4
  %169 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 2), align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 1), align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 2), align 4
  %175 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %162
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 3), align 4
  %178 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %177)
  %179 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 1), align 4
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 1), align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %182)
  store i32 0, i32* %8, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 3), align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %176
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 3), align 4
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hunk_low, i32 0, i32 1), align 4
  %190 = sub nsw i32 %188, %189
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %187, %176
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 3), align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 3), align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hunk_high, i32 0, i32 1), align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %197, %193
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %204)
  %206 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i32, i32* %2, align 4
  %208 = load i32, i32* %3, align 4
  %209 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %207, i32 %208)
  %210 = load i32, i32* %6, align 4
  %211 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %2, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %215, %216
  %218 = sub nsw i32 %214, %217
  %219 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %4, align 4
  %221 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %220)
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
