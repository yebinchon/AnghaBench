; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_exception_get_summary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_exception_get_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)*, i32* (%struct.TYPE_27__**, i32*, i32*)*, i32* (%struct.TYPE_27__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_27__**, i32*)* }

@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not find Throwable class\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not find Throwable class's class\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"getName\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"()Ljava/lang/String;\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not find method Class.getName()\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Class.getName() threw an exception\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"getMessage\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Could not find method java/lang/Throwable.getMessage()\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Throwable.getMessage() threw an exception\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s occurred\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Exception: %s\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"Could not retrieve exception name and message\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Exception occurred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_jni_exception_get_summary(%struct.TYPE_27__** %0, i32* %1, i8** %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_27__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_27__** %0, %struct.TYPE_27__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %19 = call i32 @av_bprint_init(i32* %10, i32 0, i32 %18)
  %20 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 5
  %23 = load i32* (%struct.TYPE_27__**, i32*)*, i32* (%struct.TYPE_27__**, i32*)** %22, align 8
  %24 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* %23(%struct.TYPE_27__** %24, i32* %25)
  store i32* %26, i32** %15, align 8
  %27 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 2
  %30 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %29, align 8
  %31 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %32 = call i64 %30(%struct.TYPE_27__** %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %37, align 8
  %39 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %40 = call i32 %38(%struct.TYPE_27__** %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(i8* %41, i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %44, i32* %9, align 4
  br label %245

45:                                               ; preds = %4
  %46 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 5
  %49 = load i32* (%struct.TYPE_27__**, i32*)*, i32* (%struct.TYPE_27__**, i32*)** %48, align 8
  %50 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32* %49(%struct.TYPE_27__** %50, i32* %51)
  store i32* %52, i32** %13, align 8
  %53 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 2
  %56 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %55, align 8
  %57 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %58 = call i64 %56(%struct.TYPE_27__** %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %63, align 8
  %65 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %66 = call i32 %64(%struct.TYPE_27__** %65)
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = call i32 @av_log(i8* %67, i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %70, i32* %9, align 4
  br label %245

71:                                               ; preds = %45
  %72 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 4
  %75 = load i32* (%struct.TYPE_27__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_27__**, i32*, i8*, i8*)** %74, align 8
  %76 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32* %75(%struct.TYPE_27__** %76, i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %78, i32** %14, align 8
  %79 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 2
  %82 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %81, align 8
  %83 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %84 = call i64 %82(%struct.TYPE_27__** %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %71
  %87 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %89, align 8
  %91 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %92 = call i32 %90(%struct.TYPE_27__** %91)
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %96, i32* %9, align 4
  br label %245

97:                                               ; preds = %71
  %98 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 3
  %101 = load i32* (%struct.TYPE_27__**, i32*, i32*)*, i32* (%struct.TYPE_27__**, i32*, i32*)** %100, align 8
  %102 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32* %101(%struct.TYPE_27__** %102, i32* %103, i32* %104)
  store i32* %105, i32** %17, align 8
  %106 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %108, align 8
  %110 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %111 = call i64 %109(%struct.TYPE_27__** %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %97
  %114 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %116, align 8
  %118 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %119 = call i32 %117(%struct.TYPE_27__** %118)
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = call i32 @av_log(i8* %120, i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %123, i32* %9, align 4
  br label %245

124:                                              ; preds = %97
  %125 = load i32*, i32** %17, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_27__** %128, i32* %129, i8* %130)
  store i8* %131, i8** %11, align 8
  %132 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**, i32*)** %134, align 8
  %136 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = call i32 %135(%struct.TYPE_27__** %136, i32* %137)
  store i32* null, i32** %17, align 8
  br label %139

139:                                              ; preds = %127, %124
  %140 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 4
  %143 = load i32* (%struct.TYPE_27__**, i32*, i8*, i8*)*, i32* (%struct.TYPE_27__**, i32*, i8*, i8*)** %142, align 8
  %144 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = call i32* %143(%struct.TYPE_27__** %144, i32* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32* %146, i32** %16, align 8
  %147 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %149, align 8
  %151 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %152 = call i64 %150(%struct.TYPE_27__** %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %139
  %155 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %157, align 8
  %159 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %160 = call i32 %158(%struct.TYPE_27__** %159)
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 @av_log(i8* %161, i32 %162, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %164, i32* %9, align 4
  br label %245

165:                                              ; preds = %139
  %166 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 3
  %169 = load i32* (%struct.TYPE_27__**, i32*, i32*)*, i32* (%struct.TYPE_27__**, i32*, i32*)** %168, align 8
  %170 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = load i32*, i32** %16, align 8
  %173 = call i32* %169(%struct.TYPE_27__** %170, i32* %171, i32* %172)
  store i32* %173, i32** %17, align 8
  %174 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = load i64 (%struct.TYPE_27__**)*, i64 (%struct.TYPE_27__**)** %176, align 8
  %178 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %179 = call i64 %177(%struct.TYPE_27__** %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %165
  %182 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = load i32 (%struct.TYPE_27__**)*, i32 (%struct.TYPE_27__**)** %184, align 8
  %186 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %187 = call i32 %185(%struct.TYPE_27__** %186)
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* @AV_LOG_ERROR, align 4
  %190 = call i32 @av_log(i8* %188, i32 %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %191 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %191, i32* %9, align 4
  br label %245

192:                                              ; preds = %165
  %193 = load i32*, i32** %17, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = call i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_27__** %196, i32* %197, i8* %198)
  store i8* %199, i8** %12, align 8
  %200 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = load i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**, i32*)** %202, align 8
  %204 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i32 %203(%struct.TYPE_27__** %204, i32* %205)
  store i32* null, i32** %17, align 8
  br label %207

207:                                              ; preds = %195, %192
  %208 = load i8*, i8** %11, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i8*, i8** %12, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** %11, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %214, i8* %215)
  br label %242

217:                                              ; preds = %210, %207
  %218 = load i8*, i8** %11, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i8*, i8** %12, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %224)
  br label %241

226:                                              ; preds = %220, %217
  %227 = load i8*, i8** %11, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %235, label %229

229:                                              ; preds = %226
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i8*, i8** %12, align 8
  %234 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %233)
  br label %240

235:                                              ; preds = %229, %226
  %236 = load i8*, i8** %8, align 8
  %237 = load i32, i32* @AV_LOG_WARNING, align 4
  %238 = call i32 @av_log(i8* %236, i32 %237, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %239 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %240

240:                                              ; preds = %235, %232
  br label %241

241:                                              ; preds = %240, %223
  br label %242

242:                                              ; preds = %241, %213
  %243 = load i8**, i8*** %7, align 8
  %244 = call i32 @av_bprint_finalize(i32* %10, i8** %243)
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %242, %181, %154, %113, %86, %60, %34
  %246 = load i8*, i8** %11, align 8
  %247 = call i32 @av_free(i8* %246)
  %248 = load i8*, i8** %12, align 8
  %249 = call i32 @av_free(i8* %248)
  %250 = load i32*, i32** %13, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %260

252:                                              ; preds = %245
  %253 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 0
  %256 = load i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**, i32*)** %255, align 8
  %257 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = call i32 %256(%struct.TYPE_27__** %257, i32* %258)
  br label %260

260:                                              ; preds = %252, %245
  %261 = load i32*, i32** %15, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = load i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**, i32*)** %266, align 8
  %268 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %269 = load i32*, i32** %15, align 8
  %270 = call i32 %267(%struct.TYPE_27__** %268, i32* %269)
  br label %271

271:                                              ; preds = %263, %260
  %272 = load i32*, i32** %17, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  %275 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  %278 = load i32 (%struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_27__**, i32*)** %277, align 8
  %279 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %280 = load i32*, i32** %17, align 8
  %281 = call i32 %278(%struct.TYPE_27__** %279, i32* %280)
  br label %282

282:                                              ; preds = %274, %271
  %283 = load i32, i32* %9, align 4
  ret i32 %283
}

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i8* @ff_jni_jstring_to_utf_chars(%struct.TYPE_27__**, i32*, i8*) #1

declare dso_local i32 @av_bprintf(i32*, i8*, ...) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
