; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLExprCreate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_tSQLExprCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, double }

@TK_INTEGER = common dso_local global i64 0, align 8
@TK_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i8* null, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i64 0, align 8
@TK_IN = common dso_local global i32 0, align 4
@TK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @tSQLExprCreate(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.TYPE_9__* @calloc(i32 1, i32 56)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 130
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 132
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %274

26:                                               ; preds = %23, %20, %17, %14, %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TK_INTEGER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_INTEGER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TK_TIMESTAMP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %141

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TK_TIMESTAMP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %141

50:                                               ; preds = %44, %32
  %51 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %136 [
    i32 130, label %61
    i32 131, label %74
    i32 128, label %87
    i32 132, label %100
    i32 129, label %123
  ]

61:                                               ; preds = %50
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %65, %69
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  br label %136

74:                                               ; preds = %50
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %78, %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  br label %136

87:                                               ; preds = %50
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %91, %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  br label %136

100:                                              ; preds = %50
  %101 = load i8*, i8** @TK_FLOAT, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sitofp i32 %112 to double
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %113, %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store double %119, double* %122, align 8
  br label %136

123:                                              ; preds = %50
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = srem i32 %127, %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %50, %123, %100, %87, %74, %61
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = call i32 @tSQLExprDestroy(%struct.TYPE_9__* %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = call i32 @tSQLExprDestroy(%struct.TYPE_9__* %139)
  br label %273

141:                                              ; preds = %44, %38
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %169, label %155

155:                                              ; preds = %148, %141
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %261

162:                                              ; preds = %155
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TSDB_DATA_TYPE_BIGINT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %261

169:                                              ; preds = %162, %148
  %170 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load i8*, i8** @TK_FLOAT, align 8
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %169
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load double, double* %187, align 8
  br label %195

189:                                              ; preds = %169
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sitofp i32 %193 to double
  br label %195

195:                                              ; preds = %189, %184
  %196 = phi double [ %188, %184 ], [ %194, %189 ]
  store double %196, double* %8, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @TSDB_DATA_TYPE_DOUBLE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load double, double* %206, align 8
  br label %214

208:                                              ; preds = %195
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sitofp i32 %212 to double
  br label %214

214:                                              ; preds = %208, %203
  %215 = phi double [ %207, %203 ], [ %213, %208 ]
  store double %215, double* %9, align 8
  %216 = load i32, i32* %6, align 4
  switch i32 %216, label %256 [
    i32 130, label %217
    i32 131, label %224
    i32 128, label %231
    i32 132, label %238
    i32 129, label %245
  ]

217:                                              ; preds = %214
  %218 = load double, double* %8, align 8
  %219 = load double, double* %9, align 8
  %220 = fadd double %218, %219
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store double %220, double* %223, align 8
  br label %256

224:                                              ; preds = %214
  %225 = load double, double* %8, align 8
  %226 = load double, double* %9, align 8
  %227 = fsub double %225, %226
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store double %227, double* %230, align 8
  br label %256

231:                                              ; preds = %214
  %232 = load double, double* %8, align 8
  %233 = load double, double* %9, align 8
  %234 = fmul double %232, %233
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  store double %234, double* %237, align 8
  br label %256

238:                                              ; preds = %214
  %239 = load double, double* %8, align 8
  %240 = load double, double* %9, align 8
  %241 = fdiv double %239, %240
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  store double %241, double* %244, align 8
  br label %256

245:                                              ; preds = %214
  %246 = load double, double* %8, align 8
  %247 = load double, double* %8, align 8
  %248 = load double, double* %9, align 8
  %249 = fdiv double %247, %248
  %250 = load double, double* %9, align 8
  %251 = fmul double %249, %250
  %252 = fsub double %246, %251
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  store double %252, double* %255, align 8
  br label %256

256:                                              ; preds = %214, %245, %238, %231, %224, %217
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %258 = call i32 @tSQLExprDestroy(%struct.TYPE_9__* %257)
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %260 = call i32 @tSQLExprDestroy(%struct.TYPE_9__* %259)
  br label %272

261:                                              ; preds = %162, %155
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  store %struct.TYPE_9__* %266, %struct.TYPE_9__** %268, align 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  store %struct.TYPE_9__* %269, %struct.TYPE_9__** %271, align 8
  br label %272

272:                                              ; preds = %261, %256
  br label %273

273:                                              ; preds = %272, %136
  br label %310

274:                                              ; preds = %23
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @TK_IN, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %298

278:                                              ; preds = %274
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 2
  store %struct.TYPE_9__* %283, %struct.TYPE_9__** %285, align 8
  %286 = call %struct.TYPE_9__* @calloc(i32 1, i32 56)
  store %struct.TYPE_9__* %286, %struct.TYPE_9__** %10, align 8
  %287 = load i32, i32* @TK_SET, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %292 = bitcast %struct.TYPE_9__* %291 to i32*
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 3
  store i32* %292, i32** %294, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  store %struct.TYPE_9__* %295, %struct.TYPE_9__** %297, align 8
  br label %309

298:                                              ; preds = %274
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  store %struct.TYPE_9__* %303, %struct.TYPE_9__** %305, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  store %struct.TYPE_9__* %306, %struct.TYPE_9__** %308, align 8
  br label %309

309:                                              ; preds = %298, %278
  br label %310

310:                                              ; preds = %309, %273
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %311
}

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @tSQLExprDestroy(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
