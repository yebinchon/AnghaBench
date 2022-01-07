; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_GetServerStatusInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_GetServerStatusInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i64, i8***, i8* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_SERVERSTATUS_LINES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*)* @UI_GetServerStatusInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_GetServerStatusInfo(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @trap_LAN_ServerStatus(i8* %15, i8* null, i32 0)
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %3, align 4
  br label %393

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 @memset(%struct.TYPE_5__* %19, i32 0, i32 40)
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @trap_LAN_ServerStatus(i8* %21, i8* %24, i32 8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %391

27:                                               ; preds = %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @Q_strncpyz(i8* %30, i8* %31, i32 8)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i8***, i8**** %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8**, i8*** %40, i64 %43
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i8***, i8**** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8**, i8*** %49, i64 %52
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i8***, i8**** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8**, i8*** %58, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i8***, i8**** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8**, i8*** %70, i64 %73
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 3
  store i8* %67, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %163, %27
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i1 [ false, %81 ], [ %88, %84 ]
  br i1 %90, label %91, label %164

91:                                               ; preds = %89
  %92 = load i8*, i8** %6, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 92)
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %164

97:                                               ; preds = %91
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 0, i8* %98, align 1
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %164

105:                                              ; preds = %97
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i8***, i8**** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i8**, i8*** %109, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %106, i8** %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i8***, i8**** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8**, i8*** %118, i64 %121
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i8***, i8**** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i8**, i8*** %127, i64 %130
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %133, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i8* @strchr(i8* %134, i8 signext 92)
  store i8* %135, i8** %6, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %105
  br label %164

139:                                              ; preds = %105
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %6, align 8
  store i8 0, i8* %140, align 1
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i8***, i8**** %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8**, i8*** %145, i64 %148
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 3
  store i8* %142, i8** %151, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp uge i64 %158, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %139
  br label %164

163:                                              ; preds = %139
  br label %81

164:                                              ; preds = %162, %138, %104, %96, %89
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %169 = sub nsw i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %387

172:                                              ; preds = %164
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i8***, i8**** %174, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i8**, i8*** %175, i64 %178
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %181, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  %184 = load i8***, i8**** %183, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i8**, i8*** %184, i64 %187
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %190, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load i8***, i8**** %192, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i8**, i8*** %193, i64 %196
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %199, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  %202 = load i8***, i8**** %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8**, i8*** %202, i64 %205
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %208, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %210, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i8***, i8**** %214, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i8**, i8*** %215, i64 %218
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %221, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i8***, i8**** %223, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i8**, i8*** %224, i64 %227
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %230, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 3
  %233 = load i8***, i8**** %232, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i8**, i8*** %233, i64 %236
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %239, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 3
  %242 = load i8***, i8**** %241, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i8**, i8*** %242, i64 %245
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %248, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %250, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %253

253:                                              ; preds = %381, %172
  %254 = load i8*, i8** %6, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i8*, i8** %6, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br label %261

261:                                              ; preds = %256, %253
  %262 = phi i1 [ false, %253 ], [ %260, %256 ]
  br i1 %262, label %263, label %386

263:                                              ; preds = %261
  %264 = load i8*, i8** %6, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 92
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i8*, i8** %6, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %6, align 8
  store i8 0, i8* %269, align 1
  br label %271

271:                                              ; preds = %268, %263
  %272 = load i8*, i8** %6, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  br label %386

275:                                              ; preds = %271
  %276 = load i8*, i8** %6, align 8
  store i8* %276, i8** %7, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = call i8* @strchr(i8* %277, i8 signext 32)
  store i8* %278, i8** %6, align 8
  %279 = load i8*, i8** %6, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %275
  br label %386

282:                                              ; preds = %275
  %283 = load i8*, i8** %6, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %6, align 8
  store i8 0, i8* %283, align 1
  %285 = load i8*, i8** %6, align 8
  store i8* %285, i8** %8, align 8
  %286 = load i8*, i8** %6, align 8
  %287 = call i8* @strchr(i8* %286, i8 signext 32)
  store i8* %287, i8** %6, align 8
  %288 = load i8*, i8** %6, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %282
  br label %386

291:                                              ; preds = %282
  %292 = load i8*, i8** %6, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %6, align 8
  store i8 0, i8* %292, align 1
  %294 = load i8*, i8** %6, align 8
  store i8* %294, i8** %9, align 8
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 4
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = sub i64 8, %302
  %304 = trunc i64 %303 to i32
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @Com_sprintf(i8* %300, i32 %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %305)
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 4
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 3
  %315 = load i8***, i8**** %314, align 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i8**, i8*** %315, i64 %318
  %320 = load i8**, i8*** %319, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 0
  store i8* %312, i8** %321, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 4
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = call i64 @strlen(i8* %327)
  %329 = add nsw i64 %328, 1
  %330 = load i32, i32* %11, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %11, align 4
  %334 = load i8*, i8** %7, align 8
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 3
  %337 = load i8***, i8**** %336, align 8
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds i8**, i8*** %337, i64 %340
  %342 = load i8**, i8*** %341, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 1
  store i8* %334, i8** %343, align 8
  %344 = load i8*, i8** %8, align 8
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 3
  %347 = load i8***, i8**** %346, align 8
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds i8**, i8*** %347, i64 %350
  %352 = load i8**, i8*** %351, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 2
  store i8* %344, i8** %353, align 8
  %354 = load i8*, i8** %9, align 8
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i8***, i8**** %356, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i8**, i8*** %357, i64 %360
  %362 = load i8**, i8*** %361, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 3
  store i8* %354, i8** %363, align 8
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %365, align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = load i32, i32* @MAX_SERVERSTATUS_LINES, align 4
  %372 = sext i32 %371 to i64
  %373 = icmp uge i64 %370, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %291
  br label %386

375:                                              ; preds = %291
  %376 = load i8*, i8** %6, align 8
  %377 = call i8* @strchr(i8* %376, i8 signext 92)
  store i8* %377, i8** %6, align 8
  %378 = load i8*, i8** %6, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %381, label %380

380:                                              ; preds = %375
  br label %386

381:                                              ; preds = %375
  %382 = load i8*, i8** %6, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %6, align 8
  store i8 0, i8* %382, align 1
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %10, align 4
  br label %253

386:                                              ; preds = %380, %374, %290, %281, %274, %261
  br label %387

387:                                              ; preds = %386, %164
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %389 = call i32 @UI_SortServerStatusInfo(%struct.TYPE_5__* %388)
  %390 = load i32, i32* @qtrue, align 4
  store i32 %390, i32* %3, align 4
  br label %393

391:                                              ; preds = %18
  %392 = load i32, i32* @qfalse, align 4
  store i32 %392, i32* %3, align 4
  br label %393

393:                                              ; preds = %391, %387, %14
  %394 = load i32, i32* %3, align 4
  ret i32 %394
}

declare dso_local i64 @trap_LAN_ServerStatus(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @UI_SortServerStatusInfo(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
