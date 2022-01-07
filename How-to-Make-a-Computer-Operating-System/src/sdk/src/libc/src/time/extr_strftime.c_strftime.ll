; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/time/extr_strftime.c_strftime.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/time/extr_strftime.c_strftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@STRFT_ALTFORM = common dso_local global i32 0, align 4
@sday_names = common dso_local global i8** null, align 8
@day_names = common dso_local global i8** null, align 8
@smonth_names = common dso_local global i8** null, align 8
@month_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%a %b %e %H:%M:%S %Z %Y\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"%a %b %e %Z %Y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strftime(i8* %0, i64 %1, i8* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %342, %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %345

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %341 [
    i32 0, label %30
    i32 1, label %59
    i32 2, label %93
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 37
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  br label %53

49:                                               ; preds = %35
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  store i64 0, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %350

53:                                               ; preds = %39
  br label %341

54:                                               ; preds = %30
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %28, %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 37, i8* %72, align 1
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  br label %80

76:                                               ; preds = %64
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  store i64 0, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %350

80:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %341

81:                                               ; preds = %59
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 79
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @STRFT_ALTFORM, align 4
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %28, %90
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  switch i32 %96, label %339 [
    i32 97, label %97
    i32 65, label %105
    i32 104, label %113
    i32 98, label %113
    i32 66, label %121
    i32 99, label %129
    i32 67, label %136
    i32 100, label %144
    i32 68, label %151
    i32 101, label %158
    i32 70, label %165
    i32 71, label %172
    i32 103, label %173
    i32 72, label %174
    i32 73, label %181
    i32 106, label %189
    i32 107, label %197
    i32 108, label %204
    i32 109, label %212
    i32 77, label %221
    i32 110, label %228
    i32 112, label %230
    i32 80, label %240
    i32 114, label %250
    i32 82, label %257
    i32 115, label %264
    i32 83, label %270
    i32 116, label %277
    i32 84, label %279
    i32 117, label %286
    i32 85, label %297
    i32 86, label %298
    i32 119, label %299
    i32 87, label %307
    i32 120, label %308
    i32 88, label %315
    i32 121, label %322
    i32 89, label %330
    i32 122, label %337
    i32 90, label %338
  ]

97:                                               ; preds = %93
  %98 = load i8**, i8*** @sday_names, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @APPEND(i8* %103)
  br label %340

105:                                              ; preds = %93
  %106 = load i8**, i8*** @day_names, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @APPEND(i8* %111)
  br label %340

113:                                              ; preds = %93, %93
  %114 = load i8**, i8*** @smonth_names, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @APPEND(i8* %119)
  br label %340

121:                                              ; preds = %93
  %122 = load i8**, i8*** @month_names, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @APPEND(i8* %127)
  br label %340

129:                                              ; preds = %93
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %10, align 8
  %132 = sub i64 %130, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = call i64 @strftime(i8* %18, i64 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %133)
  %135 = call i32 @APPEND(i8* %18)
  br label %340

136:                                              ; preds = %93
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 100
  %142 = call i32 @snprintf(i8* %18, i64 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = call i32 @APPEND(i8* %18)
  br label %340

144:                                              ; preds = %93
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @snprintf(i8* %18, i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = call i32 @APPEND(i8* %18)
  br label %340

151:                                              ; preds = %93
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* %10, align 8
  %154 = sub i64 %152, %153
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %156 = call i64 @strftime(i8* %18, i64 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %155)
  %157 = call i32 @APPEND(i8* %18)
  br label %340

158:                                              ; preds = %93
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @snprintf(i8* %18, i64 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = call i32 @APPEND(i8* %18)
  br label %340

165:                                              ; preds = %93
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %10, align 8
  %168 = sub i64 %166, %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %170 = call i64 @strftime(i8* %18, i64 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %169)
  %171 = call i32 @APPEND(i8* %18)
  br label %340

172:                                              ; preds = %93
  br label %340

173:                                              ; preds = %93
  br label %340

174:                                              ; preds = %93
  %175 = load i64, i64* %7, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @snprintf(i8* %18, i64 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = call i32 @APPEND(i8* %18)
  br label %340

181:                                              ; preds = %93
  %182 = load i64, i64* %7, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = srem i32 %185, 12
  %187 = call i32 @snprintf(i8* %18, i64 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = call i32 @APPEND(i8* %18)
  br label %340

189:                                              ; preds = %93
  %190 = load i64, i64* %7, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  %195 = call i32 @snprintf(i8* %18, i64 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  %196 = call i32 @APPEND(i8* %18)
  br label %340

197:                                              ; preds = %93
  %198 = load i64, i64* %7, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @snprintf(i8* %18, i64 %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %201)
  %203 = call i32 @APPEND(i8* %18)
  br label %340

204:                                              ; preds = %93
  %205 = load i64, i64* %7, align 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = srem i32 %208, 12
  %210 = call i32 @snprintf(i8* %18, i64 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  %211 = call i32 @APPEND(i8* %18)
  br label %340

212:                                              ; preds = %93
  %213 = load i64, i64* %7, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 1
  %218 = trunc i64 %217 to i32
  %219 = call i32 @snprintf(i8* %18, i64 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = call i32 @APPEND(i8* %18)
  br label %340

221:                                              ; preds = %93
  %222 = load i64, i64* %7, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @snprintf(i8* %18, i64 %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  %227 = call i32 @APPEND(i8* %18)
  br label %340

228:                                              ; preds = %93
  %229 = call i32 @APPEND(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %340

230:                                              ; preds = %93
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %233, 12
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = call i32 @APPEND(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %239

237:                                              ; preds = %230
  %238 = call i32 @APPEND(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %235
  br label %340

240:                                              ; preds = %93
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = icmp sge i32 %243, 12
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = call i32 @APPEND(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %249

247:                                              ; preds = %240
  %248 = call i32 @APPEND(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %245
  br label %340

250:                                              ; preds = %93
  %251 = load i64, i64* %7, align 8
  %252 = load i64, i64* %10, align 8
  %253 = sub i64 %251, %252
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %255 = call i64 @strftime(i8* %18, i64 %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_4__* %254)
  %256 = call i32 @APPEND(i8* %18)
  br label %340

257:                                              ; preds = %93
  %258 = load i64, i64* %7, align 8
  %259 = load i64, i64* %10, align 8
  %260 = sub i64 %258, %259
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %262 = call i64 @strftime(i8* %18, i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_4__* %261)
  %263 = call i32 @APPEND(i8* %18)
  br label %340

264:                                              ; preds = %93
  %265 = load i64, i64* %7, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %267 = call i32 @mktime(%struct.TYPE_4__* %266)
  %268 = call i32 @snprintf(i8* %18, i64 %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %267)
  %269 = call i32 @APPEND(i8* %18)
  br label %340

270:                                              ; preds = %93
  %271 = load i64, i64* %7, align 8
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @snprintf(i8* %18, i64 %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %274)
  %276 = call i32 @APPEND(i8* %18)
  br label %340

277:                                              ; preds = %93
  %278 = call i32 @APPEND(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %340

279:                                              ; preds = %93
  %280 = load i64, i64* %7, align 8
  %281 = load i64, i64* %10, align 8
  %282 = sub i64 %280, %281
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %284 = call i64 @strftime(i8* %18, i64 %282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_4__* %283)
  %285 = call i32 @APPEND(i8* %18)
  br label %340

286:                                              ; preds = %93
  %287 = load i64, i64* %7, align 8
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, 6
  %292 = urem i64 %291, 7
  %293 = add i64 1, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 @snprintf(i8* %18, i64 %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %294)
  %296 = call i32 @APPEND(i8* %18)
  br label %340

297:                                              ; preds = %93
  br label %340

298:                                              ; preds = %93
  br label %340

299:                                              ; preds = %93
  %300 = load i64, i64* %7, align 8
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = call i32 @snprintf(i8* %18, i64 %300, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %304)
  %306 = call i32 @APPEND(i8* %18)
  br label %340

307:                                              ; preds = %93
  br label %340

308:                                              ; preds = %93
  %309 = load i64, i64* %7, align 8
  %310 = load i64, i64* %10, align 8
  %311 = sub i64 %309, %310
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %313 = call i64 @strftime(i8* %18, i64 %311, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_4__* %312)
  %314 = call i32 @APPEND(i8* %18)
  br label %340

315:                                              ; preds = %93
  %316 = load i64, i64* %7, align 8
  %317 = load i64, i64* %10, align 8
  %318 = sub i64 %316, %317
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %320 = call i64 @strftime(i8* %18, i64 %318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_4__* %319)
  %321 = call i32 @APPEND(i8* %18)
  br label %340

322:                                              ; preds = %93
  %323 = load i64, i64* %7, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = srem i32 %326, 100
  %328 = call i32 @snprintf(i8* %18, i64 %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %327)
  %329 = call i32 @APPEND(i8* %18)
  br label %340

330:                                              ; preds = %93
  %331 = load i64, i64* %7, align 8
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @snprintf(i8* %18, i64 %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %334)
  %336 = call i32 @APPEND(i8* %18)
  br label %340

337:                                              ; preds = %93
  br label %340

338:                                              ; preds = %93
  br label %340

339:                                              ; preds = %93
  br label %340

340:                                              ; preds = %339, %338, %337, %330, %322, %315, %308, %307, %299, %298, %297, %286, %279, %277, %270, %264, %257, %250, %249, %239, %228, %221, %212, %204, %197, %189, %181, %174, %173, %172, %165, %158, %151, %144, %136, %129, %121, %113, %105, %97
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %341

341:                                              ; preds = %340, %28, %80, %53
  br label %342

342:                                              ; preds = %341
  %343 = load i8*, i8** %8, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %8, align 8
  br label %23

345:                                              ; preds = %23
  %346 = load i8*, i8** %6, align 8
  %347 = load i64, i64* %10, align 8
  %348 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8 0, i8* %348, align 1
  %349 = load i64, i64* %10, align 8
  store i64 %349, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %350

350:                                              ; preds = %345, %76, %49
  %351 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %351)
  %352 = load i64, i64* %5, align 8
  ret i64 %352
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @APPEND(i8*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #2

declare dso_local i32 @mktime(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
