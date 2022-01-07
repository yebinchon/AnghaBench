; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeMultiMeterMultiOutputProcessor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeMultiMeterMultiOutputProcessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32, i32, %struct.TYPE_39__*, %struct.TYPE_46__ }
%struct.TYPE_39__ = type { i64, i64, i64, %struct.TYPE_44__*, i64, i64, %struct.TYPE_49__*, i32, %struct.TYPE_45__, %struct.TYPE_38__** }
%struct.TYPE_44__ = type { i64, i64*, i64 }
%struct.TYPE_49__ = type { %struct.TYPE_42__*, i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_45__ = type { i64, i64, %struct.TYPE_49__*, %struct.TYPE_41__*, i32, i32, i32*, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_46__ = type { i64, i64, i64, i64, i64, %struct.TYPE_43__, i64, i32, i32, i64, i64 }
%struct.TYPE_43__ = type { i64, i64 }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_48__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"QInfo:%p last_row query on vid:%d, numOfGroups:%d, current group:%d\00", align 1
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"QInfo:%p interp query on vid:%d, numOfGroups:%d, current group:%d\00", align 1
@POINTER_BYTES = common dso_local global i32 0, align 4
@taosHashInt = common dso_local global i32 0, align 4
@QUERY_COMPLETED = common dso_local global i32 0, align 4
@QUERY_RESBUF_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [135 x i8] c"QInfo %p vid:%d, numOfMeters:%d, index:%d, numOfGroups:%d, %d points returned, totalRead:%d totalReturn:%d,next skey:%lld, offset:%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_47__*)* @vnodeMultiMeterMultiOutputProcessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnodeMultiMeterMultiOutputProcessor(%struct.TYPE_47__* %0) #0 {
  %2 = alloca %struct.TYPE_47__*, align 8
  %3 = alloca %struct.TYPE_39__*, align 8
  %4 = alloca %struct.TYPE_38__**, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca %struct.TYPE_46__*, align 8
  %7 = alloca %struct.TYPE_44__*, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_49__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_48__, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_49__*, align 8
  %28 = alloca i64, align 8
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %2, align 8
  %29 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  store %struct.TYPE_39__* %31, %struct.TYPE_39__** %3, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %32, i32 0, i32 9
  %34 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %33, align 8
  store %struct.TYPE_38__** %34, %struct.TYPE_38__*** %4, align 8
  %35 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %35, i32 0, i32 8
  store %struct.TYPE_45__* %36, %struct.TYPE_45__** %5, align 8
  %37 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %37, i32 0, i32 3
  store %struct.TYPE_46__* %38, %struct.TYPE_46__** %6, align 8
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_44__*, %struct.TYPE_44__** %40, align 8
  store %struct.TYPE_44__* %41, %struct.TYPE_44__** %7, align 8
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %45, i64 0
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_40__* @getMeterObj(i32 %44, i32 %49)
  store %struct.TYPE_40__* %50, %struct.TYPE_40__** %8, align 8
  %51 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %52 = call i32 @resetCtxOutputBuf(%struct.TYPE_45__* %51)
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %54 = call i64 @isPointInterpoQuery(%struct.TYPE_46__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %247

56:                                               ; preds = %1
  %57 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i1 [ false, %56 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %245, %68
  %73 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %246

80:                                               ; preds = %72
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  %89 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %97, 1
  store i64 %98, i64* %10, align 8
  %99 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %100 = call i64 @isFirstLastRowQuery(%struct.TYPE_46__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %184

102:                                              ; preds = %80
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, %struct.TYPE_47__*, i32, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.TYPE_47__* %103, i32 %106, i64 %109, i64 %112)
  store i64 -1, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %9, align 8
  store i64 %117, i64* %13, align 8
  br label %118

118:                                              ; preds = %156, %102
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp ule i64 %119, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %118
  %123 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %124 = call i64 @isQueryKilled(%struct.TYPE_46__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %128 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %129 = call i32 @setQueryStatus(%struct.TYPE_46__* %127, i32 %128)
  br label %666

130:                                              ; preds = %122
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %4, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %134, i64 %135
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_40__* @getMeterObj(i32 %133, i32 %139)
  store %struct.TYPE_40__* %140, %struct.TYPE_40__** %14, align 8
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %142 = icmp ne %struct.TYPE_40__* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %130
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %12, align 8
  br label %154

154:                                              ; preds = %149, %143
  br label %155

155:                                              ; preds = %154, %130
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %13, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %13, align 8
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %160, align 8
  br label %118

163:                                              ; preds = %118
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %165, i32 0, i32 6
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %168, i32 0, i32 10
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* %9, align 8
  %179 = call i64 @doCheckMetersInGroup(%struct.TYPE_47__* %176, i64 %177, i64 %178)
  store i64 %179, i64* %15, align 8
  %180 = load i64, i64* %15, align 8
  %181 = icmp sge i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  br label %232

184:                                              ; preds = %80
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i8*, %struct.TYPE_47__*, i32, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_47__* %185, i32 %188, i64 %191, i64 %194)
  %196 = load i64, i64* %9, align 8
  store i64 %196, i64* %16, align 8
  br label %197

197:                                              ; preds = %228, %184
  %198 = load i64, i64* %16, align 8
  %199 = load i64, i64* %10, align 8
  %200 = icmp ule i64 %198, %199
  br i1 %200, label %201, label %231

201:                                              ; preds = %197
  %202 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %203 = call i64 @isQueryKilled(%struct.TYPE_46__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %207 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %208 = call i32 @setQueryStatus(%struct.TYPE_46__* %206, i32 %207)
  br label %666

209:                                              ; preds = %201
  %210 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %213, i32 0, i32 6
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %218, i32 0, i32 10
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %9, align 8
  %223 = call i64 @doCheckMetersInGroup(%struct.TYPE_47__* %220, i64 %221, i64 %222)
  store i64 %223, i64* %17, align 8
  %224 = load i64, i64* %17, align 8
  %225 = icmp eq i64 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %209
  br label %231

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %16, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %16, align 8
  br label %197

231:                                              ; preds = %226, %197
  br label %232

232:                                              ; preds = %231, %163
  %233 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %234, align 8
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  br label %246

245:                                              ; preds = %232
  br label %72

246:                                              ; preds = %244, %72
  br label %535

247:                                              ; preds = %1
  %248 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp uge i64 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ugt i64 %256, 0
  br i1 %257, label %258, label %279

258:                                              ; preds = %247
  %259 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 6
  %262 = load %struct.TYPE_49__*, %struct.TYPE_49__** %261, align 8
  %263 = call i32 @copyFromGroupBuf(%struct.TYPE_47__* %259, %struct.TYPE_49__* %262)
  %264 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %266
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %268, align 4
  %273 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %258
  br label %666

278:                                              ; preds = %258
  br label %279

279:                                              ; preds = %278, %247
  %280 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp uge i64 %282, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  br label %666

288:                                              ; preds = %279
  store i64 0, i64* %18, align 8
  br label %289

289:                                              ; preds = %306, %288
  %290 = load i64, i64* %18, align 8
  %291 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ult i64 %290, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %289
  %296 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_49__*, %struct.TYPE_49__** %297, align 8
  %299 = load i64, i64* %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %298, i64 %299
  store %struct.TYPE_49__* %300, %struct.TYPE_49__** %19, align 8
  %301 = load %struct.TYPE_49__*, %struct.TYPE_49__** %19, align 8
  %302 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @clearGroupResultBuf(%struct.TYPE_49__* %301, i64 %304)
  br label %306

306:                                              ; preds = %295
  %307 = load i64, i64* %18, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %18, align 8
  br label %289

309:                                              ; preds = %289
  %310 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %310, i32 0, i32 0
  store i64 0, i64* %311, align 8
  %312 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @taosCleanUpIntHash(i32 %314)
  store i64 10039, i64* %20, align 8
  %316 = load i64, i64* %20, align 8
  %317 = load i32, i32* @POINTER_BYTES, align 4
  %318 = load i32, i32* @taosHashInt, align 4
  %319 = call i32 @taosInitIntHash(i64 %316, i32 %317, i32 %318)
  %320 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %320, i32 0, i32 7
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %533, %516, %422, %385, %346, %309
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = icmp ult i64 %325, %328
  br i1 %329, label %330, label %534

330:                                              ; preds = %322
  %331 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %21, align 8
  %334 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %335 = call i64 @isQueryKilled(%struct.TYPE_46__* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %330
  %338 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %339 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %340 = call i32 @setQueryStatus(%struct.TYPE_46__* %338, i32 %339)
  br label %666

341:                                              ; preds = %330
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %342 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %343 = load i64, i64* %21, align 8
  %344 = call i32 @multimeterMultioutputHelper(%struct.TYPE_47__* %342, i32* %22, i32* %23, i64 %343, i32 0)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %361, label %346

346:                                              ; preds = %341
  %347 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %350, i32 0, i32 6
  store i64 %349, i64* %351, align 8
  %352 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %355, i32 0, i32 10
  store i64 %354, i64* %356, align 8
  %357 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %358, align 8
  br label %322

361:                                              ; preds = %341
  store i64 0, i64* %24, align 8
  br label %362

362:                                              ; preds = %375, %361
  %363 = load i64, i64* %24, align 8
  %364 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = icmp ult i64 %363, %366
  br i1 %367, label %368, label %378

368:                                              ; preds = %362
  %369 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %369, i32 0, i32 6
  %371 = load i32*, i32** %370, align 8
  %372 = load i64, i64* %24, align 8
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  %374 = call i32 @resetMMapWindow(i32* %373)
  br label %375

375:                                              ; preds = %368
  %376 = load i64, i64* %24, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %24, align 8
  br label %362

378:                                              ; preds = %362
  %379 = bitcast %struct.TYPE_48__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %379, i8 0, i64 4, i1 false)
  %380 = load i32, i32* %22, align 4
  %381 = load i32, i32* %23, align 4
  %382 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %383 = call i32 @normalizedFirstQueryRange(i32 %380, i32 %381, %struct.TYPE_39__* %382, %struct.TYPE_48__* %25)
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %400

385:                                              ; preds = %378
  %386 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %389, i32 0, i32 6
  store i64 %388, i64* %390, align 8
  %391 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %394, i32 0, i32 10
  store i64 %393, i64* %395, align 8
  %396 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = add i64 %398, 1
  store i64 %399, i64* %397, align 8
  br label %322

400:                                              ; preds = %378
  %401 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %438

405:                                              ; preds = %400
  %406 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %438

411:                                              ; preds = %405
  %412 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %413 = call i32 @forwardQueryStartPosition(%struct.TYPE_45__* %412)
  %414 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %418 = load i32, i32* @QUERY_COMPLETED, align 4
  %419 = or i32 %417, %418
  %420 = call i32 @Q_STATUS_EQUAL(i32 %416, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %437

422:                                              ; preds = %411
  %423 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %423, i32 0, i32 5
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %426, i32 0, i32 6
  store i64 %425, i64* %427, align 8
  %428 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %431, i32 0, i32 10
  store i64 %430, i64* %432, align 8
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = add i64 %435, 1
  store i64 %436, i64* %434, align 8
  br label %322

437:                                              ; preds = %411
  br label %438

438:                                              ; preds = %437, %405, %400
  %439 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %440 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @vnodeUpdateQueryColumnIndex(%struct.TYPE_46__* %439, i32 %442)
  %444 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %445 = call i32 @vnodeUpdateFilterColumnIndex(%struct.TYPE_46__* %444)
  %446 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %447 = call i32 @vnodeScanAllData(%struct.TYPE_45__* %446)
  %448 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %449 = call i64 @getNumOfResult(%struct.TYPE_45__* %448)
  %450 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %450, i32 0, i32 0
  store i64 %449, i64* %451, align 8
  %452 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %453 = call i32 @doSkipResults(%struct.TYPE_45__* %452)
  %454 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %455 = call i64 @doRevisedResultsByLimit(%struct.TYPE_47__* %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %465

457:                                              ; preds = %438
  %458 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %458, i32 0, i32 3
  %460 = load %struct.TYPE_44__*, %struct.TYPE_44__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %460, i32 0, i32 2
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %463, i32 0, i32 1
  store i64 %462, i64* %464, align 8
  br label %534

465:                                              ; preds = %438
  %466 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %466, i32 0, i32 8
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %470 = load i32, i32* @QUERY_COMPLETED, align 4
  %471 = or i32 %469, %470
  %472 = call i32 @Q_STATUS_EQUAL(i32 %468, i32 %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %506

474:                                              ; preds = %465
  %475 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %476 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %478, i32 0, i32 6
  store i64 %477, i64* %479, align 8
  %480 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %480, i32 0, i32 4
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %483, i32 0, i32 10
  store i64 %482, i64* %484, align 8
  %485 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %485, i32 0, i32 1
  %487 = load i64, i64* %486, align 8
  %488 = add i64 %487, 1
  store i64 %488, i64* %486, align 8
  %489 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %489, i32 0, i32 8
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %493 = call i32 @Q_STATUS_EQUAL(i32 %491, i32 %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %504, label %495

495:                                              ; preds = %474
  %496 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %496, i32 0, i32 7
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %499, i32 0, i32 3
  %501 = load %struct.TYPE_44__*, %struct.TYPE_44__** %500, align 8
  %502 = call i64 @isGroupbyEachTable(i32 %498, %struct.TYPE_44__* %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %495, %474
  br label %534

505:                                              ; preds = %495
  br label %533

506:                                              ; preds = %465
  %507 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %507, i32 0, i32 9
  %509 = load i64, i64* %508, align 8
  %510 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %510, i32 0, i32 6
  store i64 %509, i64* %511, align 8
  %512 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %526

516:                                              ; preds = %506
  %517 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %517, i32 0, i32 8
  %519 = load i32, i32* %518, align 4
  %520 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %521 = call i32 @Q_STATUS_EQUAL(i32 %519, i32 %520)
  %522 = icmp ne i32 %521, 0
  %523 = xor i1 %522, true
  %524 = zext i1 %523 to i32
  %525 = call i32 @assert(i32 %524)
  br label %322

526:                                              ; preds = %506
  %527 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %527, i32 0, i32 8
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %531 = call i32 @Q_STATUS_EQUAL(i32 %529, i32 %530)
  %532 = call i32 @assert(i32 %531)
  br label %534

533:                                              ; preds = %505
  br label %322

534:                                              ; preds = %526, %504, %457, %322
  br label %535

535:                                              ; preds = %534, %246
  %536 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %536, i32 0, i32 7
  %538 = load i32, i32* %537, align 8
  %539 = call i64 @isGroupbyNormalCol(i32 %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %548, label %541

541:                                              ; preds = %535
  %542 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %543 = call i64 @isFirstLastRowQuery(%struct.TYPE_46__* %542)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %541
  %546 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %547 = call i32 @doFinalizeResult(%struct.TYPE_45__* %546)
  br label %548

548:                                              ; preds = %545, %541, %535
  %549 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %549, i32 0, i32 3
  %551 = load %struct.TYPE_41__*, %struct.TYPE_41__** %550, align 8
  %552 = icmp ne %struct.TYPE_41__* %551, null
  br i1 %552, label %553, label %561

553:                                              ; preds = %548
  %554 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %554, i32 0, i32 3
  %556 = load %struct.TYPE_41__*, %struct.TYPE_41__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %560 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %559, i32 0, i32 4
  store i32 %558, i32* %560, align 8
  br label %561

561:                                              ; preds = %553, %548
  %562 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %562, i32 0, i32 7
  %564 = load i32, i32* %563, align 8
  %565 = call i64 @isGroupbyNormalCol(i32 %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %619

567:                                              ; preds = %561
  store i64 0, i64* %26, align 8
  br label %568

568:                                              ; preds = %604, %567
  %569 = load i64, i64* %26, align 8
  %570 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = icmp ult i64 %569, %572
  br i1 %573, label %574, label %607

574:                                              ; preds = %568
  %575 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %576 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %575, i32 0, i32 2
  %577 = load %struct.TYPE_49__*, %struct.TYPE_49__** %576, align 8
  %578 = load i64, i64* %26, align 8
  %579 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %577, i64 %578
  store %struct.TYPE_49__* %579, %struct.TYPE_49__** %27, align 8
  store i64 0, i64* %28, align 8
  br label %580

580:                                              ; preds = %600, %574
  %581 = load i64, i64* %28, align 8
  %582 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %583 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %582, i32 0, i32 2
  %584 = load i64, i64* %583, align 8
  %585 = icmp ult i64 %581, %584
  br i1 %585, label %586, label %603

586:                                              ; preds = %580
  %587 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %588 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %591 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_42__*, %struct.TYPE_42__** %591, align 8
  %593 = load i64, i64* %28, align 8
  %594 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %592, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @MAX(i32 %589, i32 %596)
  %598 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %599 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %598, i32 0, i32 1
  store i32 %597, i32* %599, align 8
  br label %600

600:                                              ; preds = %586
  %601 = load i64, i64* %28, align 8
  %602 = add i64 %601, 1
  store i64 %602, i64* %28, align 8
  br label %580

603:                                              ; preds = %580
  br label %604

604:                                              ; preds = %603
  %605 = load i64, i64* %26, align 8
  %606 = add i64 %605, 1
  store i64 %606, i64* %26, align 8
  br label %568

607:                                              ; preds = %568
  %608 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %609 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %608, i32 0, i32 2
  %610 = load %struct.TYPE_39__*, %struct.TYPE_39__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %610, i32 0, i32 0
  store i64 0, i64* %611, align 8
  %612 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %613 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %612, i32 0, i32 0
  store i64 0, i64* %613, align 8
  %614 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %615 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %616 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %615, i32 0, i32 2
  %617 = load %struct.TYPE_49__*, %struct.TYPE_49__** %616, align 8
  %618 = call i32 @copyFromGroupBuf(%struct.TYPE_47__* %614, %struct.TYPE_49__* %617)
  br label %619

619:                                              ; preds = %607, %561
  %620 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %621 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %624 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = add nsw i64 %626, %622
  %628 = trunc i64 %627 to i32
  store i32 %628, i32* %624, align 4
  %629 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %630 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %629, i32 0, i32 1
  %631 = load i64, i64* %630, align 8
  %632 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %633 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %632, i32 0, i32 4
  store i64 %631, i64* %633, align 8
  %634 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %635 = call i32 @moveDescOrderResultsToFront(%struct.TYPE_45__* %634)
  %636 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %637 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %638 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 8
  %640 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %640, i32 0, i32 2
  %642 = load i64, i64* %641, align 8
  %643 = load %struct.TYPE_39__*, %struct.TYPE_39__** %3, align 8
  %644 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %643, i32 0, i32 1
  %645 = load i64, i64* %644, align 8
  %646 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %647 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %650 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %649, i32 0, i32 0
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %653 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %656 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %659 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %658, i32 0, i32 6
  %660 = load i64, i64* %659, align 8
  %661 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %662 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %662, i32 0, i32 0
  %664 = load i64, i64* %663, align 8
  %665 = call i32 (i8*, %struct.TYPE_47__*, i32, i64, i64, ...) @dTrace(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_47__* %636, i32 %639, i64 %642, i64 %645, i64 %648, i64 %651, i32 %654, i32 %657, i64 %660, i64 %664)
  br label %666

666:                                              ; preds = %619, %337, %287, %277, %205, %126
  ret void
}

declare dso_local %struct.TYPE_40__* @getMeterObj(i32, i32) #1

declare dso_local i32 @resetCtxOutputBuf(%struct.TYPE_45__*) #1

declare dso_local i64 @isPointInterpoQuery(%struct.TYPE_46__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isFirstLastRowQuery(%struct.TYPE_46__*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_47__*, i32, i64, i64, ...) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_46__*) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_46__*, i32) #1

declare dso_local i64 @doCheckMetersInGroup(%struct.TYPE_47__*, i64, i64) #1

declare dso_local i32 @copyFromGroupBuf(%struct.TYPE_47__*, %struct.TYPE_49__*) #1

declare dso_local i32 @clearGroupResultBuf(%struct.TYPE_49__*, i64) #1

declare dso_local i32 @taosCleanUpIntHash(i32) #1

declare dso_local i32 @taosInitIntHash(i64, i32, i32) #1

declare dso_local i32 @multimeterMultioutputHelper(%struct.TYPE_47__*, i32*, i32*, i64, i32) #1

declare dso_local i32 @resetMMapWindow(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @normalizedFirstQueryRange(i32, i32, %struct.TYPE_39__*, %struct.TYPE_48__*) #1

declare dso_local i32 @forwardQueryStartPosition(%struct.TYPE_45__*) #1

declare dso_local i32 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i32 @vnodeUpdateQueryColumnIndex(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @vnodeUpdateFilterColumnIndex(%struct.TYPE_46__*) #1

declare dso_local i32 @vnodeScanAllData(%struct.TYPE_45__*) #1

declare dso_local i64 @getNumOfResult(%struct.TYPE_45__*) #1

declare dso_local i32 @doSkipResults(%struct.TYPE_45__*) #1

declare dso_local i64 @doRevisedResultsByLimit(%struct.TYPE_47__*) #1

declare dso_local i64 @isGroupbyEachTable(i32, %struct.TYPE_44__*) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @doFinalizeResult(%struct.TYPE_45__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @moveDescOrderResultsToFront(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
