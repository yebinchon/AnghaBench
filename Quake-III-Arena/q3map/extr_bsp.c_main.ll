; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_bsp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Q3Map v1.0s (c) 1999 Id Software Inc.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"usage: q3map [options] mapfile\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-info\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-light\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-vlight\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-vsound\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"-vis\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"---- q3map ----\0A\00", align 1
@tempsource = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"-tempname\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"-threads\00", align 1
@numthreads = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"-glview\00", align 1
@qtrue = common dso_local global i8* null, align 8
@glview = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"verbose = true\0A\00", align 1
@verbose = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"-draw\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"drawflag = true\0A\00", align 1
@drawflag = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"-nowater\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"nowater = true\0A\00", align 1
@nowater = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"-noopt\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"noopt = true\0A\00", align 1
@noopt = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"-nofill\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"nofill = true\0A\00", align 1
@nofill = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"-nodetail\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"nodetail = true\0A\00", align 1
@nodetail = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"-fulldetail\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"fulldetail = true\0A\00", align 1
@fulldetail = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"-onlyents\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"onlyents = true\0A\00", align 1
@onlyents = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"-onlytextures\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"onlytextures = true\0A\00", align 1
@onlytextures = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"-micro\00", align 1
@microvolume = common dso_local global double 0.000000e+00, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"microvolume = %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"-nofog\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"nofog = true\0A\00", align 1
@nofog = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"-nosubdivide\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"nosubdivide = true\0A\00", align 1
@nosubdivide = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"-leaktest\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"leaktest = true\0A\00", align 1
@leaktest = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"-verboseentities\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"verboseentities = true\0A\00", align 1
@verboseentities = common dso_local global i8* null, align 8
@.str.39 = private unnamed_addr constant [10 x i8] c"-nocurves\00", align 1
@noCurveBrushes = common dso_local global i8* null, align 8
@.str.40 = private unnamed_addr constant [18 x i8] c"no curve brushes\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"-notjunc\00", align 1
@notjunc = common dso_local global i8* null, align 8
@.str.42 = private unnamed_addr constant [21 x i8] c"no tjunction fixing\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"-expand\00", align 1
@testExpand = common dso_local global i8* null, align 8
@.str.44 = private unnamed_addr constant [23 x i8] c"Writing expanded.map.\0A\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"-showseams\00", align 1
@showseams = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [27 x i8] c"Showing seams on terrain.\0A\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"-tmpout\00", align 1
@outbase = common dso_local global i8* null, align 8
@.str.48 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"-fakemap\00", align 1
@fakemap = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [27 x i8] c"will generate fakemap.map\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"-samplesize\00", align 1
@samplesize = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [37 x i8] c"lightmap sample size is %dx%d units\0A\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Unknown option \22%s\22\00", align 1
@source = common dso_local global i8* null, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"%s.prt\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"%s.lin\00", align 1
@name = common dso_local global i8* null, align 8
@.str.56 = private unnamed_addr constant [5 x i8] c".reg\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"%s.reg\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c".map\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"%5.0f seconds elapsed\0A\00", align 1
@gamedir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = call i32 @Bspinfo(i32 %23, i8** %25)
  store i32 0, i32* %3, align 4
  br label %526

27:                                               ; preds = %15
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = call i32 @LightMain(i32 %35, i8** %37)
  store i32 0, i32* %3, align 4
  br label %526

39:                                               ; preds = %27
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = call i32 @VLightMain(i32 %47, i8** %49)
  store i32 0, i32* %3, align 4
  br label %526

51:                                               ; preds = %39
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = call i32 @VSoundMain(i32 %59, i8** %61)
  store i32 0, i32* %3, align 4
  br label %526

63:                                               ; preds = %51
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = call i32 @VisMain(i32 %71, i8** %73)
  store i32 0, i32* %3, align 4
  br label %526

75:                                               ; preds = %63
  %76 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i8*, i8** @tempsource, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %426, %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %429

83:                                               ; preds = %79
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %83
  %92 = load i8*, i8** @tempsource, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcpy(i8* %92, i8* %98)
  br label %425

100:                                              ; preds = %83
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %100
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %109, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @atoi(i8* %114)
  store i8* %115, i8** @numthreads, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %424

118:                                              ; preds = %100
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = load i8*, i8** @qtrue, align 8
  store i8* %127, i8** @glview, align 8
  br label %423

128:                                              ; preds = %118
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %138 = load i8*, i8** @qtrue, align 8
  store i8* %138, i8** @verbose, align 8
  br label %422

139:                                              ; preds = %128
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %149 = load i8*, i8** @qtrue, align 8
  store i8* %149, i8** @drawflag, align 8
  br label %421

150:                                              ; preds = %139
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %160 = load i8*, i8** @qtrue, align 8
  store i8* %160, i8** @nowater, align 8
  br label %420

161:                                              ; preds = %150
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161
  %170 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %171 = load i8*, i8** @qtrue, align 8
  store i8* %171, i8** @noopt, align 8
  br label %419

172:                                              ; preds = %161
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %172
  %181 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %182 = load i8*, i8** @qtrue, align 8
  store i8* %182, i8** @nofill, align 8
  br label %418

183:                                              ; preds = %172
  %184 = load i8**, i8*** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %183
  %192 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %193 = load i8*, i8** @qtrue, align 8
  store i8* %193, i8** @nodetail, align 8
  br label %417

194:                                              ; preds = %183
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %194
  %203 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %204 = load i8*, i8** @qtrue, align 8
  store i8* %204, i8** @fulldetail, align 8
  br label %416

205:                                              ; preds = %194
  %206 = load i8**, i8*** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %205
  %214 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %215 = load i8*, i8** @qtrue, align 8
  store i8* %215, i8** @onlyents, align 8
  br label %415

216:                                              ; preds = %205
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %216
  %225 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %226 = load i8*, i8** @qtrue, align 8
  store i8* %226, i8** @onlytextures, align 8
  br label %414

227:                                              ; preds = %216
  %228 = load i8**, i8*** %5, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %227
  %236 = load i8**, i8*** %5, align 8
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %236, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = call double @atof(i8* %241)
  store double %242, double* @microvolume, align 8
  %243 = load double, double* @microvolume, align 8
  %244 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), double %243)
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %413

247:                                              ; preds = %227
  %248 = load i8**, i8*** %5, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @strcmp(i8* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %247
  %256 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  %257 = load i8*, i8** @qtrue, align 8
  store i8* %257, i8** @nofog, align 8
  br label %412

258:                                              ; preds = %247
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @strcmp(i8* %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %258
  %267 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %268 = load i8*, i8** @qtrue, align 8
  store i8* %268, i8** @nosubdivide, align 8
  br label %411

269:                                              ; preds = %258
  %270 = load i8**, i8*** %5, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @strcmp(i8* %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %269
  %278 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %279 = load i8*, i8** @qtrue, align 8
  store i8* %279, i8** @leaktest, align 8
  br label %410

280:                                              ; preds = %269
  %281 = load i8**, i8*** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %281, i64 %283
  %285 = load i8*, i8** %284, align 8
  %286 = call i64 @strcmp(i8* %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %280
  %289 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %290 = load i8*, i8** @qtrue, align 8
  store i8* %290, i8** @verboseentities, align 8
  br label %409

291:                                              ; preds = %280
  %292 = load i8**, i8*** %5, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = call i64 @strcmp(i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %291
  %300 = load i8*, i8** @qtrue, align 8
  store i8* %300, i8** @noCurveBrushes, align 8
  %301 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0))
  br label %408

302:                                              ; preds = %291
  %303 = load i8**, i8*** %5, align 8
  %304 = load i32, i32* %6, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = call i64 @strcmp(i8* %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %302
  %311 = load i8*, i8** @qtrue, align 8
  store i8* %311, i8** @notjunc, align 8
  %312 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0))
  br label %407

313:                                              ; preds = %302
  %314 = load i8**, i8*** %5, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = call i64 @strcmp(i8* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %313
  %322 = load i8*, i8** @qtrue, align 8
  store i8* %322, i8** @testExpand, align 8
  %323 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0))
  br label %406

324:                                              ; preds = %313
  %325 = load i8**, i8*** %5, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %325, i64 %327
  %329 = load i8*, i8** %328, align 8
  %330 = call i64 @strcmp(i8* %329, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0))
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %324
  %333 = load i8*, i8** @qtrue, align 8
  store i8* %333, i8** @showseams, align 8
  %334 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0))
  br label %405

335:                                              ; preds = %324
  %336 = load i8**, i8*** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = call i64 @strcmp(i8* %340, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %335
  %344 = load i8*, i8** @outbase, align 8
  %345 = call i32 @strcpy(i8* %344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0))
  br label %404

346:                                              ; preds = %335
  %347 = load i8**, i8*** %5, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @strcmp(i8* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %346
  %355 = load i8*, i8** @qtrue, align 8
  store i8* %355, i8** @fakemap, align 8
  %356 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0))
  br label %403

357:                                              ; preds = %346
  %358 = load i8**, i8*** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8*, i8** %358, i64 %360
  %362 = load i8*, i8** %361, align 8
  %363 = call i64 @strcmp(i8* %362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0))
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %383, label %365

365:                                              ; preds = %357
  %366 = load i8**, i8*** %5, align 8
  %367 = load i32, i32* %6, align 4
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8*, i8** %366, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = call i8* @atoi(i8* %371)
  %373 = ptrtoint i8* %372 to i32
  store i32 %373, i32* @samplesize, align 4
  %374 = load i32, i32* @samplesize, align 4
  %375 = icmp slt i32 %374, 1
  br i1 %375, label %376, label %377

376:                                              ; preds = %365
  store i32 1, i32* @samplesize, align 4
  br label %377

377:                                              ; preds = %376, %365
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %6, align 4
  %380 = load i32, i32* @samplesize, align 4
  %381 = load i32, i32* @samplesize, align 4
  %382 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i32 %380, i32 %381)
  br label %402

383:                                              ; preds = %357
  %384 = load i8**, i8*** %5, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8*, i8** %384, i64 %386
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 0
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 45
  br i1 %392, label %393, label %400

393:                                              ; preds = %383
  %394 = load i8**, i8*** %5, align 8
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i8* %398)
  br label %401

400:                                              ; preds = %383
  br label %429

401:                                              ; preds = %393
  br label %402

402:                                              ; preds = %401, %377
  br label %403

403:                                              ; preds = %402, %354
  br label %404

404:                                              ; preds = %403, %343
  br label %405

405:                                              ; preds = %404, %332
  br label %406

406:                                              ; preds = %405, %321
  br label %407

407:                                              ; preds = %406, %310
  br label %408

408:                                              ; preds = %407, %299
  br label %409

409:                                              ; preds = %408, %288
  br label %410

410:                                              ; preds = %409, %277
  br label %411

411:                                              ; preds = %410, %266
  br label %412

412:                                              ; preds = %411, %255
  br label %413

413:                                              ; preds = %412, %235
  br label %414

414:                                              ; preds = %413, %224
  br label %415

415:                                              ; preds = %414, %213
  br label %416

416:                                              ; preds = %415, %202
  br label %417

417:                                              ; preds = %416, %191
  br label %418

418:                                              ; preds = %417, %180
  br label %419

419:                                              ; preds = %418, %169
  br label %420

420:                                              ; preds = %419, %158
  br label %421

421:                                              ; preds = %420, %147
  br label %422

422:                                              ; preds = %421, %136
  br label %423

423:                                              ; preds = %422, %126
  br label %424

424:                                              ; preds = %423, %108
  br label %425

425:                                              ; preds = %424, %91
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %6, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %6, align 4
  br label %79

429:                                              ; preds = %400, %79
  %430 = load i32, i32* %6, align 4
  %431 = load i32, i32* %4, align 4
  %432 = sub nsw i32 %431, 1
  %433 = icmp ne i32 %430, %432
  br i1 %433, label %434, label %436

434:                                              ; preds = %429
  %435 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %436

436:                                              ; preds = %434, %429
  %437 = call double (...) @I_FloatTime()
  store double %437, double* %7, align 8
  %438 = call i32 (...) @ThreadSetDefault()
  %439 = load i8**, i8*** %5, align 8
  %440 = load i32, i32* %6, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8*, i8** %439, i64 %441
  %443 = load i8*, i8** %442, align 8
  %444 = call i32 @SetQdirFromPath(i8* %443)
  %445 = load i8*, i8** @source, align 8
  %446 = load i8**, i8*** %5, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = call i8* @ExpandArg(i8* %450)
  %452 = call i32 @strcpy(i8* %445, i8* %451)
  %453 = load i8*, i8** @source, align 8
  %454 = call i32 @StripExtension(i8* %453)
  %455 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %456 = load i8*, i8** @source, align 8
  %457 = call i32 @sprintf(i8* %455, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* %456)
  %458 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %459 = call i32 @remove(i8* %458)
  %460 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %461 = load i8*, i8** @source, align 8
  %462 = call i32 @sprintf(i8* %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8* %461)
  %463 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %464 = call i32 @remove(i8* %463)
  %465 = load i8*, i8** @name, align 8
  %466 = load i8**, i8*** %5, align 8
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8*, i8** %466, i64 %468
  %470 = load i8*, i8** %469, align 8
  %471 = call i8* @ExpandArg(i8* %470)
  %472 = call i32 @strcpy(i8* %465, i8* %471)
  %473 = load i8*, i8** @name, align 8
  %474 = load i8*, i8** @name, align 8
  %475 = call i64 @strlen(i8* %474)
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = getelementptr inbounds i8, i8* %476, i64 -4
  %478 = call i64 @strcmp(i8* %477, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0))
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %436
  %481 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %482 = load i8*, i8** @source, align 8
  %483 = call i32 @sprintf(i8* %481, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %482)
  %484 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %485 = call i32 @remove(i8* %484)
  %486 = load i8*, i8** @name, align 8
  %487 = call i32 @DefaultExtension(i8* %486, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0))
  br label %488

488:                                              ; preds = %480, %436
  %489 = load i8*, i8** @onlyents, align 8
  %490 = icmp ne i8* %489, null
  br i1 %490, label %491, label %493

491:                                              ; preds = %488
  %492 = call i32 (...) @OnlyEnts()
  store i32 0, i32* %3, align 4
  br label %526

493:                                              ; preds = %488
  %494 = load i8*, i8** @onlytextures, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %496, label %498

496:                                              ; preds = %493
  %497 = call i32 (...) @OnlyTextures()
  store i32 0, i32* %3, align 4
  br label %526

498:                                              ; preds = %493
  %499 = call i32 (...) @LoadShaderInfo()
  %500 = load i8*, i8** @tempsource, align 8
  %501 = call i64 @strlen(i8* %500)
  %502 = icmp sgt i64 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %498
  %504 = load i8*, i8** @tempsource, align 8
  %505 = call i32 @LoadMapFile(i8* %504)
  br label %509

506:                                              ; preds = %498
  %507 = load i8*, i8** @name, align 8
  %508 = call i32 @LoadMapFile(i8* %507)
  br label %509

509:                                              ; preds = %506, %503
  %510 = call i32 (...) @SetModelNumbers()
  %511 = call i32 (...) @SetLightStyles()
  %512 = call i32 (...) @ProcessModels()
  %513 = call i32 (...) @EndBSPFile()
  %514 = call double (...) @I_FloatTime()
  store double %514, double* %8, align 8
  %515 = load double, double* %8, align 8
  %516 = load double, double* %7, align 8
  %517 = fsub double %515, %516
  %518 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), double %517)
  %519 = load i8*, i8** @tempsource, align 8
  %520 = call i64 @strlen(i8* %519)
  %521 = icmp sgt i64 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %509
  %523 = load i8*, i8** @tempsource, align 8
  %524 = call i32 @remove(i8* %523)
  br label %525

525:                                              ; preds = %522, %509
  store i32 0, i32* %3, align 4
  br label %526

526:                                              ; preds = %525, %496, %491, %69, %57, %45, %33, %21
  %527 = load i32, i32* %3, align 4
  ret i32 %527
}

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Bspinfo(i32, i8**) #1

declare dso_local i32 @LightMain(i32, i8**) #1

declare dso_local i32 @VLightMain(i32, i8**) #1

declare dso_local i32 @VSoundMain(i32, i8**) #1

declare dso_local i32 @VisMain(i32, i8**) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @ThreadSetDefault(...) #1

declare dso_local i32 @SetQdirFromPath(i8*) #1

declare dso_local i8* @ExpandArg(i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @DefaultExtension(i8*, i8*) #1

declare dso_local i32 @OnlyEnts(...) #1

declare dso_local i32 @OnlyTextures(...) #1

declare dso_local i32 @LoadShaderInfo(...) #1

declare dso_local i32 @LoadMapFile(i8*) #1

declare dso_local i32 @SetModelNumbers(...) #1

declare dso_local i32 @SetLightStyles(...) #1

declare dso_local i32 @ProcessModels(...) #1

declare dso_local i32 @EndBSPFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
