; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_tscJoinResultsetFromBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSql.c_tscJoinResultsetFromBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_15__**, i64, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i64, i8**, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"%p one subquery exhausted, free other %d subquery\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_15__*)* @tscJoinResultsetFromBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @tscJoinResultsetFromBuf(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %4, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %5, align 8
  br label %27

27:                                               ; preds = %1, %288
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %37, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %8, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %28

51:                                               ; preds = %46, %28
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @tscTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %55, i32 %60)
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %88, %54
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %71, i64 %72
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %11, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %12, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %9, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @tscDestroyJoinSupporter(i64 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = call i32 @taos_free_result(%struct.TYPE_15__* %86)
  br label %88

88:                                               ; preds = %68
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %62

91:                                               ; preds = %62
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @free(i32* %92)
  store i8** null, i8*** %2, align 8
  br label %293

94:                                               ; preds = %51
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = icmp eq i8** %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8** @malloc(i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  store i8** %107, i8*** %109, align 8
  br label %110

110:                                              ; preds = %99, %94
  store i32 0, i32* %13, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp uge i64 %113, 2
  br i1 %114, label %115, label %207

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %118, i64 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %14, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %124, i64 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %15, align 8
  br label %128

128:                                              ; preds = %205, %115
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br label %144

144:                                              ; preds = %136, %128
  %145 = phi i1 [ false, %128 ], [ %143, %136 ]
  br i1 %145, label %146, label %206

146:                                              ; preds = %144
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %149, i64 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = call i32 @doSetResultRowData(%struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %155, i64 1
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = call i32 @doSetResultRowData(%struct.TYPE_15__* %157)
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  %163 = load i8*, i8** %162, align 8
  %164 = bitcast i8* %163 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %16, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 0
  %170 = load i8*, i8** %169, align 8
  %171 = bitcast i8* %170 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %17, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %17, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %146
  store i32 1, i32* %13, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %178, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  br label %206

185:                                              ; preds = %146
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %17, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  br label %204

194:                                              ; preds = %185
  %195 = load i64, i64* %16, align 8
  %196 = load i64, i64* %17, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %198, %194
  br label %204

204:                                              ; preds = %203, %189
  br label %205

205:                                              ; preds = %204
  br label %128

206:                                              ; preds = %176, %144
  br label %229

207:                                              ; preds = %110
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %210, i64 0
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  store %struct.TYPE_14__* %213, %struct.TYPE_14__** %18, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %216, i64 0
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = call i32 @doSetResultRowData(%struct.TYPE_15__* %218)
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %221, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %222, %226
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %13, align 4
  br label %229

229:                                              ; preds = %207, %206
  %230 = load i32, i32* %13, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %278

232:                                              ; preds = %229
  store i64 0, i64* %19, align 8
  br label %233

233:                                              ; preds = %274, %232
  %234 = load i64, i64* %19, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp ult i64 %234, %239
  br i1 %240, label %241, label %277

241:                                              ; preds = %233
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = load i64, i64* %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %20, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = load i64, i64* %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %21, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %257, align 8
  %259 = load i64, i64* %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %258, i64 %259
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 1
  store %struct.TYPE_14__* %262, %struct.TYPE_14__** %22, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = load i64, i64* %21, align 8
  %267 = getelementptr inbounds i8*, i8** %265, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = load i64, i64* %19, align 8
  %273 = getelementptr inbounds i8*, i8** %271, i64 %272
  store i8* %268, i8** %273, align 8
  br label %274

274:                                              ; preds = %241
  %275 = load i64, i64* %19, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %19, align 8
  br label %233

277:                                              ; preds = %233
  br label %289

278:                                              ; preds = %229
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %280 = call i32 @tscFetchDatablockFromSubquery(%struct.TYPE_15__* %279)
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  store i8** null, i8*** %2, align 8
  br label %293

287:                                              ; preds = %278
  br label %288

288:                                              ; preds = %287
  br label %27

289:                                              ; preds = %277
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 1
  %292 = load i8**, i8*** %291, align 8
  store i8** %292, i8*** %2, align 8
  br label %293

293:                                              ; preds = %289, %286, %91
  %294 = load i8**, i8*** %2, align 8
  ret i8** %294
}

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @tscDestroyJoinSupporter(i64) #1

declare dso_local i32 @taos_free_result(%struct.TYPE_15__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @doSetResultRowData(%struct.TYPE_15__*) #1

declare dso_local i32 @tscFetchDatablockFromSubquery(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
