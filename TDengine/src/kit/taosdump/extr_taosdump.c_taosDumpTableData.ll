; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpTableData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpTableData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"select * from %s where _c0 >= %ld and _c0 <= %ld order by _c0 asc\00", align 1
@taos = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to run command %s, reason: %s\0A\00", align 1
@result = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to use result\0A\00", align 1
@COMMAND_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No enough memory\0A\00", align 1
@buffer = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"INSERT INTO %s VALUES (\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosDumpTableData(i32* %0, i8* %1, %struct.arguments* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arguments*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.arguments* %2, %struct.arguments** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32** null, i32*** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = load %struct.arguments*, %struct.arguments** %7, align 8
  %16 = getelementptr inbounds %struct.arguments, %struct.arguments* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %313

20:                                               ; preds = %3
  %21 = load i8*, i8** @command, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.arguments*, %struct.arguments** %7, align 8
  %24 = getelementptr inbounds %struct.arguments, %struct.arguments* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.arguments*, %struct.arguments** %7, align 8
  %27 = getelementptr inbounds %struct.arguments, %struct.arguments* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25, i32 %28)
  %30 = load i32, i32* @taos, align 4
  %31 = load i8*, i8** @command, align 8
  %32 = call i64 @taos_query(i32 %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i32*, i32** @stderr, align 8
  %36 = load i8*, i8** @command, align 8
  %37 = load i32, i32* @taos, align 4
  %38 = call i8* @taos_errstr(i32 %37)
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %38)
  store i32 -1, i32* %4, align 4
  br label %313

40:                                               ; preds = %20
  %41 = load i32, i32* @taos, align 4
  %42 = call i32* @taos_use_result(i32 %41)
  store i32* %42, i32** @result, align 8
  %43 = load i32*, i32** @result, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** @stderr, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %313

48:                                               ; preds = %40
  %49 = load i32, i32* @taos, align 4
  %50 = call i32 @taos_field_count(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** @result, align 8
  %56 = call %struct.TYPE_3__* @taos_fetch_fields(i32* %55)
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %13, align 8
  %57 = load i32, i32* @COMMAND_SIZE, align 4
  %58 = call i64 @malloc(i32 %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32*, i32** @stderr, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %313

65:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %301, %65
  %67 = load i32*, i32** @result, align 8
  %68 = call i32** @taos_fetch_row(i32* %67)
  store i32** %68, i32*** %10, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %70, label %302

70:                                               ; preds = %66
  %71 = load i8*, i8** @buffer, align 8
  store i8* %71, i8** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %9, align 8
  br label %87

81:                                               ; preds = %70
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i8*, i8** %9, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %81, %74
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %276, %87
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %279

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i8*, i8** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i32**, i32*** %10, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i8*, i8** %9, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %9, align 8
  br label %276

114:                                              ; preds = %101
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %274 [
    i32 135, label %121
    i32 128, label %138
    i32 130, label %152
    i32 132, label %166
    i32 137, label %178
    i32 133, label %190
    i32 134, label %204
    i32 136, label %217
    i32 131, label %240
    i32 129, label %262
  ]

121:                                              ; preds = %114
  %122 = load i8*, i8** %9, align 8
  %123 = load i32**, i32*** %10, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = bitcast i32* %127 to i8*
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 1
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %9, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %9, align 8
  br label %275

138:                                              ; preds = %114
  %139 = load i8*, i8** %9, align 8
  %140 = load i32**, i32*** %10, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = call i32 (i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %9, align 8
  br label %275

152:                                              ; preds = %114
  %153 = load i8*, i8** %9, align 8
  %154 = load i32**, i32*** %10, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to i16*
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load i8*, i8** %9, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %9, align 8
  br label %275

166:                                              ; preds = %114
  %167 = load i8*, i8** %9, align 8
  %168 = load i32**, i32*** %10, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** %9, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %9, align 8
  br label %275

178:                                              ; preds = %114
  %179 = load i8*, i8** %9, align 8
  %180 = load i32**, i32*** %10, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %185)
  %187 = load i8*, i8** %9, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %9, align 8
  br label %275

190:                                              ; preds = %114
  %191 = load i8*, i8** %9, align 8
  %192 = load i32**, i32*** %10, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to float*
  %198 = load float, float* %197, align 4
  %199 = fpext float %198 to double
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), double %199)
  %201 = load i8*, i8** %9, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %9, align 8
  br label %275

204:                                              ; preds = %114
  %205 = load i8*, i8** %9, align 8
  %206 = load i32**, i32*** %10, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast i32* %210 to double*
  %212 = load double, double* %211, align 8
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), double %212)
  %214 = load i8*, i8** %9, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %9, align 8
  br label %275

217:                                              ; preds = %114
  %218 = load i8*, i8** %9, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %9, align 8
  store i8 39, i8* %218, align 1
  %220 = load i32**, i32*** %10, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = bitcast i32* %224 to i8*
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %12, align 8
  %233 = load i32, i32* @COMMAND_SIZE, align 4
  %234 = call i32 @converStringToReadable(i8* %225, i32 %231, i8* %232, i32 %233)
  %235 = load i8*, i8** %9, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = call i8* @stpcpy(i8* %235, i8* %236)
  store i8* %237, i8** %9, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %9, align 8
  store i8 39, i8* %238, align 1
  br label %275

240:                                              ; preds = %114
  %241 = load i32**, i32*** %10, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = bitcast i32* %245 to i8*
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i8*, i8** %12, align 8
  %254 = load i32, i32* @COMMAND_SIZE, align 4
  %255 = call i32 @convertNCharToReadable(i8* %246, i32 %252, i8* %253, i32 %254)
  %256 = load i8*, i8** %9, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = call i32 (i8*, i8*, ...) @sprintf(i8* %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %257)
  %259 = load i8*, i8** %9, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %9, align 8
  br label %275

262:                                              ; preds = %114
  %263 = load i8*, i8** %9, align 8
  %264 = load i32**, i32*** %10, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i8*, i8*, ...) @sprintf(i8* %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %269)
  %271 = load i8*, i8** %9, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %9, align 8
  br label %275

274:                                              ; preds = %114
  br label %275

275:                                              ; preds = %274, %262, %240, %217, %204, %190, %178, %166, %152, %138, %121
  br label %276

276:                                              ; preds = %275, %108
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %14, align 4
  br label %88

279:                                              ; preds = %88
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %282 = load i8*, i8** %9, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8* %284, i8** %9, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  %287 = load i32*, i32** %5, align 8
  %288 = load i8*, i8** @buffer, align 8
  %289 = call i32 (i32*, i8*, ...) @fprintf(i32* %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %288)
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.arguments*, %struct.arguments** %7, align 8
  %292 = getelementptr inbounds %struct.arguments, %struct.arguments* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp sge i32 %290, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %279
  %296 = load i32*, i32** %5, align 8
  %297 = call i32 (i32*, i8*, ...) @fprintf(i32* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %301

298:                                              ; preds = %279
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 (i32*, i8*, ...) @fprintf(i32* %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %295
  br label %66

302:                                              ; preds = %66
  %303 = load i32*, i32** %5, align 8
  %304 = call i32 (i32*, i8*, ...) @fprintf(i32* %303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %305 = load i8*, i8** %12, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i8*, i8** %12, align 8
  %309 = call i32 @free(i8* %308)
  br label %310

310:                                              ; preds = %307, %302
  %311 = load i32*, i32** @result, align 8
  %312 = call i32 @taos_free_result(i32* %311)
  store i32* null, i32** @result, align 8
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %310, %62, %45, %34, %19
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @taos_query(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @taos_errstr(i32) #1

declare dso_local i32* @taos_use_result(i32) #1

declare dso_local i32 @taos_field_count(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @taos_fetch_fields(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32** @taos_fetch_row(i32*) #1

declare dso_local i32 @converStringToReadable(i8*, i32, i8*, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i32 @convertNCharToReadable(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @taos_free_result(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
