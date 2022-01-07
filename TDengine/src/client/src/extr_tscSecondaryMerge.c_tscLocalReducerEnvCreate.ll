; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscLocalReducerEnvCreate.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscLocalReducerEnvCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_34__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_35__ = type { i32, i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_33__ = type { i64, i32 }
%struct.TYPE_30__ = type { i32, i64, i32 }

@POINTER_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%p failed to allocate memory\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tv_bf_db\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%p create [%d](%d) tmp file for subquery:%s\00", align 1
@MULTIPLE_APPEND_MODEL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tscLocalReducerEnvCreate(%struct.TYPE_32__* %0, %struct.TYPE_29__*** %1, i32** %2, i32** %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_29__***, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [512 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_29__*** %1, %struct.TYPE_29__**** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 1
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %12, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 0
  store %struct.TYPE_31__* %28, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %14, align 8
  store i32* null, i32** %15, align 8
  %29 = load i32**, i32*** %10, align 8
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %31 = call %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_34__* %30, i32 0)
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %16, align 8
  %32 = load i32, i32* @POINTER_BYTES, align 4
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_29__**
  %41 = load %struct.TYPE_29__***, %struct.TYPE_29__**** %8, align 8
  store %struct.TYPE_29__** %40, %struct.TYPE_29__*** %41, align 8
  %42 = load %struct.TYPE_29__***, %struct.TYPE_29__**** %8, align 8
  %43 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %42, align 8
  %44 = icmp eq %struct.TYPE_29__** %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %5
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %47 = call i32 @tscError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %46)
  %48 = load i8*, i8** @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %242

55:                                               ; preds = %5
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 24, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @calloc(i32 1, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %64, %struct.TYPE_35__** %14, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %66 = icmp eq %struct.TYPE_35__* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %69 = call i32 @tscError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %68)
  %70 = load i8*, i8** @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  br label %242

77:                                               ; preds = %55
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %78

78:                                               ; preds = %109, %77
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %79, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %78
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %88 = load i64, i64* %18, align 8
  %89 = call %struct.TYPE_33__* @tscSqlExprGet(%struct.TYPE_34__* %87, i64 %88)
  store %struct.TYPE_33__* %89, %struct.TYPE_33__** %19, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 1
  store i64 %92, i64* %96, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %101 = load i64, i64* %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %17, align 8
  br label %109

109:                                              ; preds = %86
  %110 = load i64, i64* %18, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %18, align 8
  br label %78

112:                                              ; preds = %78
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %17, align 8
  %115 = udiv i64 %113, %114
  store i64 %115, i64* %20, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %20, align 8
  %123 = call i32* @tColModelCreate(%struct.TYPE_35__* %116, i64 %121, i64 %122)
  store i32* %123, i32** %15, align 8
  store i64 0, i64* %21, align 8
  br label %124

124:                                              ; preds = %163, %112
  %125 = load i64, i64* %21, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %125, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %124
  %134 = bitcast [512 x i8]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %134, i8 0, i64 512, i1 false)
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %136 = call i32 @getTmpfilePath(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %135)
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %21, align 8
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %146 = call i32 @tscTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_32__* %137, i64 %143, i64 %144, i8* %145)
  %147 = load %struct.TYPE_29__***, %struct.TYPE_29__**** %8, align 8
  %148 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %147, align 8
  %149 = load i64, i64* %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %148, i64 %149
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %17, align 8
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @tExtMemBufferCreate(%struct.TYPE_29__** %150, i64 %151, i64 %152, i8* %153, i32* %154)
  %156 = load i32, i32* @MULTIPLE_APPEND_MODEL, align 4
  %157 = load %struct.TYPE_29__***, %struct.TYPE_29__**** %8, align 8
  %158 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %157, align 8
  %159 = load i64, i64* %21, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %158, i64 %159
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  store i32 %156, i32* %162, align 4
  br label %163

163:                                              ; preds = %133
  %164 = load i64, i64* %21, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %21, align 8
  br label %124

166:                                              ; preds = %124
  %167 = load i32**, i32*** %9, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = call i64 @createOrderDescriptor(i32** %167, %struct.TYPE_34__* %168, i32* %169)
  %171 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i8*, i8** @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %6, align 8
  br label %242

181:                                              ; preds = %166
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %183 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 24, %187
  %189 = trunc i64 %188 to i32
  %190 = call i32 @memset(%struct.TYPE_35__* %182, i32 0, i32 %189)
  store i64 0, i64* %23, align 8
  br label %191

191:                                              ; preds = %226, %181
  %192 = load i64, i64* %23, align 8
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp ult i64 %192, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %191
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %201 = load i64, i64* %23, align 8
  %202 = call %struct.TYPE_30__* @tscFieldInfoGetField(%struct.TYPE_34__* %200, i64 %201)
  store %struct.TYPE_30__* %202, %struct.TYPE_30__** %24, align 8
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %207 = load i64, i64* %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 2
  store i32 %205, i32* %209, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %214 = load i64, i64* %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 1
  store i64 %212, i64* %216, align 8
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %218 = load i64, i64* %23, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @strcpy(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %199
  %227 = load i64, i64* %23, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %23, align 8
  br label %191

229:                                              ; preds = %191
  %230 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %20, align 8
  %237 = call i32* @tColModelCreate(%struct.TYPE_35__* %230, i64 %235, i64 %236)
  %238 = load i32**, i32*** %10, align 8
  store i32* %237, i32** %238, align 8
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %240 = call i32 @tfree(%struct.TYPE_35__* %239)
  %241 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %241, i64* %6, align 8
  br label %242

242:                                              ; preds = %229, %173, %67, %45
  %243 = load i64, i64* %6, align 8
  ret i64 %243
}

declare dso_local %struct.TYPE_26__* @tscGetMeterMetaInfo(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_32__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.TYPE_33__* @tscSqlExprGet(%struct.TYPE_34__*, i64) #1

declare dso_local i32* @tColModelCreate(%struct.TYPE_35__*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @getTmpfilePath(i8*, i8*) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_32__*, i64, i64, i8*) #1

declare dso_local i32 @tExtMemBufferCreate(%struct.TYPE_29__**, i64, i64, i8*, i32*) #1

declare dso_local i64 @createOrderDescriptor(i32**, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_35__*, i32, i32) #1

declare dso_local %struct.TYPE_30__* @tscFieldInfoGetField(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @tfree(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
