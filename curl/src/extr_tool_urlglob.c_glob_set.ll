; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_set.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8**, i64 }

@FALSE = common dso_local global i32 0, align 4
@UPTSet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unmatched brace\00", align 1
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nested brace\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"empty string within braces\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"range overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"unexpected close bracket\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8**, i64*, i64*, i32)* @glob_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob_set(%struct.TYPE_9__* %0, i8** %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  store i8* %25, i8** %16, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 1
  store i64 %28, i64* %17, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %12, align 8
  %36 = load i32, i32* @UPTSet, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8** null, i8*** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %229, %190, %5
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %230

58:                                               ; preds = %54
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %220 [
    i32 0, label %62
    i32 123, label %66
    i32 91, label %66
    i32 125, label %71
    i32 44, label %94
    i32 93, label %203
    i32 92, label %208
  ]

62:                                               ; preds = %58
  %63 = load i64, i64* %17, align 8
  %64 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %65 = call i32 @GLOBERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %234

66:                                               ; preds = %58, %58
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %70 = call i32 @GLOBERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %234

71:                                               ; preds = %58
  %72 = load i8*, i8** %16, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %79 = call i32 @GLOBERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %234

80:                                               ; preds = %71
  %81 = load i64*, i64** %10, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = call i32 @multiply(i64* %81, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %92 = call i32 @GLOBERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 0, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %234

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %58, %93
  %95 = load i8*, i8** %14, align 8
  store i8 0, i8* %95, align 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %129

102:                                              ; preds = %94
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i8** @realloc(i8** %107, i32 %116)
  store i8** %117, i8*** %18, align 8
  %118 = load i8**, i8*** %18, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %102
  %121 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  %122 = call i32 @GLOBERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 0, i32 %121)
  store i32 %122, i32* %6, align 4
  br label %234

123:                                              ; preds = %102
  %124 = load i8**, i8*** %18, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i8** %124, i8*** %128, align 8
  br label %135

129:                                              ; preds = %94
  %130 = call i8** @malloc(i32 8)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i8** %130, i8*** %134, align 8
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i8**, i8*** %139, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  %144 = call i32 @GLOBERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 0, i32 %143)
  store i32 %144, i32* %6, align 4
  br label %234

145:                                              ; preds = %135
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strdup(i8* %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %154, i64 %160
  store i8* %149, i8** %161, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i8**, i8*** %165, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %166, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %145
  %177 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  %178 = call i32 @GLOBERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 0, i32 %177)
  store i32 %178, i32* %6, align 4
  br label %234

179:                                              ; preds = %145
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 125
  br i1 %189, label %190, label %194

190:                                              ; preds = %179
  %191 = load i8*, i8** %15, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %15, align 8
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %13, align 4
  br label %54

194:                                              ; preds = %179
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %14, align 8
  %198 = load i8*, i8** %15, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %15, align 8
  %200 = load i64*, i64** %9, align 8
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %229

203:                                              ; preds = %58
  %204 = load i64*, i64** %9, align 8
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  %207 = call i32 @GLOBERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %205, i32 %206)
  store i32 %207, i32* %6, align 4
  br label %234

208:                                              ; preds = %58
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = icmp ne i8 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %15, align 8
  %216 = load i64*, i64** %9, align 8
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %216, align 8
  br label %219

219:                                              ; preds = %213, %208
  br label %220

220:                                              ; preds = %58, %219
  %221 = load i8*, i8** %15, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %15, align 8
  %223 = load i8, i8* %221, align 1
  %224 = load i8*, i8** %14, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %14, align 8
  store i8 %223, i8* %224, align 1
  %226 = load i64*, i64** %9, align 8
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %226, align 8
  br label %229

229:                                              ; preds = %220, %194
  br label %54

230:                                              ; preds = %54
  %231 = load i8*, i8** %15, align 8
  %232 = load i8**, i8*** %8, align 8
  store i8* %231, i8** %232, align 8
  %233 = load i32, i32* @CURLE_OK, align 4
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %230, %203, %176, %142, %120, %90, %75, %66, %62
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i32 @GLOBERROR(i8*, i64, i32) #1

declare dso_local i32 @multiply(i64*, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
