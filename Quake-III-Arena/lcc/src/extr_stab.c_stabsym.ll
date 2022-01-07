; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabsym.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__, i32, %struct.TYPE_14__, %struct.TYPE_18__*, i64, i64, i64 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [28 x i8] c".stabs \22%s:%c%d\22,%d,0,0,%s\0A\00", align 1
@STATIC = common dso_local global i64 0, align 8
@N_FUN = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_13__* null, align 8
@PARAM = common dso_local global i64 0, align 8
@AUTO = common dso_local global i64 0, align 8
@GLOBAL = common dso_local global i64 0, align 8
@EXTERN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c".stabs \22%s:G\00", align 1
@N_GSYM = common dso_local global i32 0, align 4
@BSS = common dso_local global i64 0, align 8
@N_LCSYM = common dso_local global i32 0, align 4
@N_STSYM = common dso_local global i32 0, align 4
@REGISTER = common dso_local global i64 0, align 8
@FREG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c".stabs \22%s:%c%d\22,%d,0,\00", align 1
@N_RSYM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c".stabs \22%s:p\00", align 1
@N_PSYM = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c".stabs \22%s:\00", align 1
@N_LSYM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%d\22,%d,0,0,%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stabsym(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  br label %262

22:                                               ; preds = %16
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = call i64 @isfunc(%struct.TYPE_18__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STATIC, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 102, i32 70
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = call %struct.TYPE_18__* @freturn(%struct.TYPE_18__* %41)
  %43 = call i32 @dbxtype(%struct.TYPE_18__* %42)
  %44 = load i32, i32* @N_FUN, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %38, i32 %43, i32 %44, i8* %48)
  br label %262

50:                                               ; preds = %22
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IR, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PARAM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = call i64 @isptr(%struct.TYPE_18__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = call i64 @isstruct(%struct.TYPE_18__* %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %72, %66
  %81 = phi i1 [ false, %66 ], [ %79, %72 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = call i32 @dbxtype(%struct.TYPE_18__* %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %5, align 4
  br label %102

97:                                               ; preds = %61, %55, %50
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = call i32 @dbxtype(%struct.TYPE_18__* %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %80
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AUTO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GLOBAL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @EXTERN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @N_GSYM, align 4
  store i32 %125, i32* %3, align 4
  br label %239

126:                                              ; preds = %114
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @STATIC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %126
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GLOBAL, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 83, i32 86
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @BSS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %132
  %151 = load i32, i32* @N_LCSYM, align 4
  br label %154

152:                                              ; preds = %132
  %153 = load i32, i32* @N_STSYM, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %142, i32 %143, i32 %155, i8* %159)
  br label %262

161:                                              ; preds = %126
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @REGISTER, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %209

167:                                              ; preds = %161
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = icmp ne %struct.TYPE_15__* %171, null
  br i1 %172, label %173, label %208

173:                                              ; preds = %167
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %6, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @FREG, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %173
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 32
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %188, %173
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PARAM, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 80, i32 114
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @N_RSYM, align 4
  %204 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %191, %167
  br label %262

209:                                              ; preds = %161
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PARAM, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @N_PSYM, align 4
  store i32 %220, i32* %3, align 4
  br label %236

221:                                              ; preds = %209
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @LOCAL, align 8
  %226 = icmp sge i64 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @N_LSYM, align 4
  store i32 %232, i32* %3, align 4
  br label %235

233:                                              ; preds = %221
  %234 = call i32 @assert(i32 0)
  br label %235

235:                                              ; preds = %233, %227
  br label %236

236:                                              ; preds = %235, %215
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %120
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* %3, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @PARAM, align 8
  %246 = icmp sge i64 %244, %245
  br i1 %246, label %247, label %258

247:                                              ; preds = %239
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @EXTERN, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %247
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  br label %259

258:                                              ; preds = %247, %239
  br label %259

259:                                              ; preds = %258, %253
  %260 = phi i8* [ %257, %253 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %258 ]
  %261 = call i32 (i8*, i32, ...) @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %241, i8* %260)
  br label %262

262:                                              ; preds = %259, %208, %154, %28, %21
  ret void
}

declare dso_local i64 @isfunc(%struct.TYPE_18__*) #1

declare dso_local i32 @print(i8*, i32, ...) #1

declare dso_local i32 @dbxtype(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @freturn(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isptr(%struct.TYPE_18__*) #1

declare dso_local i64 @isstruct(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
