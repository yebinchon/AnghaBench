; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ReceiveResults.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ReceiveResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8**, i64, i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"IoContext\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PGRES_SINGLE_TUPLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexpected number of columns from worker: %d, expected %d\00", align 1
@SubPlanLevel = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @ReceiveResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReceiveResults(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %7, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %8, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %9, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %10, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  store i8** %47, i8*** %13, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = icmp ne %struct.TYPE_15__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %53, %2
  %58 = load i32, i32* @CurrentMemoryContext, align 4
  %59 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %60 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %61 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %62 = call i32* @AllocSetContextCreate(i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  store i32* %62, i32** %15, align 8
  br label %63

63:                                               ; preds = %244, %140, %57
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PQisBusy(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %245

70:                                               ; preds = %63
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @PQgetResult(i32 %73)
  store i32* %74, i32** %21, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %245

78:                                               ; preds = %70
  %79 = load i32*, i32** %21, align 8
  %80 = call i64 @PQresultStatus(i32* %79)
  store i64 %80, i64* %20, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = load i32*, i32** %21, align 8
  %86 = call i8* @PQcmdTuples(i32* %85)
  store i8* %86, i8** %22, align 8
  store i64 0, i64* %23, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %24, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %84
  %97 = load i8*, i8** %22, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i8*, i8** %22, align 8
  %103 = call i32 @scanint8(i8* %102, i32 0, i64* %23)
  %104 = load i64, i64* %23, align 8
  %105 = icmp sge i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @Assert(i32 %106)
  %108 = load i64, i64* %23, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %101, %96, %84
  %114 = load i32*, i32** %21, align 8
  %115 = call i32 @PQclear(i32* %114)
  store i32 1, i32* %5, align 4
  br label %245

116:                                              ; preds = %78
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i32*, i32** %21, align 8
  %122 = call i64 @PQntuples(i32* %121)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @Assert(i32 %124)
  %126 = load i32*, i32** %21, align 8
  %127 = call i32 @PQclear(i32* %126)
  store i32 1, i32* %5, align 4
  br label %245

128:                                              ; preds = %116
  %129 = load i64, i64* %20, align 8
  %130 = load i64, i64* @PGRES_SINGLE_TUPLE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = load i32, i32* @ERROR, align 4
  %136 = call i32 @ReportResultError(%struct.TYPE_17__* %133, i32* %134, i32 %135)
  br label %144

137:                                              ; preds = %128
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %21, align 8
  %142 = call i32 @PQclear(i32* %141)
  br label %63

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %132
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i32*, i32** %21, align 8
  %148 = call i64 @PQntuples(i32* %147)
  store i64 %148, i64* %18, align 8
  %149 = load i32*, i32** %21, align 8
  %150 = call i64 @PQnfields(i32* %149)
  store i64 %150, i64* %19, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load i32, i32* @ERROR, align 4
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %156, i64 %157)
  %159 = call i32 @ereport(i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %146
  store i64 0, i64* %16, align 8
  br label %161

161:                                              ; preds = %230, %160
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* %18, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %233

165:                                              ; preds = %161
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %166 = load i8**, i8*** %13, align 8
  %167 = load i64, i64* %19, align 8
  %168 = mul i64 %167, 8
  %169 = call i32 @memset(i8** %166, i32 0, i64 %168)
  store i64 0, i64* %17, align 8
  br label %170

170:                                              ; preds = %210, %165
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %19, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i32*, i32** %21, align 8
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* %17, align 8
  %178 = call i64 @PQgetisnull(i32* %175, i64 %176, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i8**, i8*** %13, align 8
  %182 = load i64, i64* %17, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  store i8* null, i8** %183, align 8
  br label %209

184:                                              ; preds = %174
  %185 = load i32*, i32** %21, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %17, align 8
  %188 = call i8* @PQgetvalue(i32* %185, i64 %186, i64 %187)
  %189 = load i8**, i8*** %13, align 8
  %190 = load i64, i64* %17, align 8
  %191 = getelementptr inbounds i8*, i8** %189, i64 %190
  store i8* %188, i8** %191, align 8
  %192 = load i64, i64* @SubPlanLevel, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %184
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %196 = icmp ne %struct.TYPE_18__* %195, null
  br i1 %196, label %197, label %208

197:                                              ; preds = %194
  %198 = load i32*, i32** %21, align 8
  %199 = load i64, i64* %16, align 8
  %200 = load i64, i64* %17, align 8
  %201 = call i64 @PQgetlength(i32* %198, i64 %199, i64 %200)
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  br label %208

208:                                              ; preds = %197, %194, %184
  br label %209

209:                                              ; preds = %208, %180
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %17, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %17, align 8
  br label %170

213:                                              ; preds = %170
  %214 = load i32*, i32** %15, align 8
  %215 = call i32* @MemoryContextSwitchTo(i32* %214)
  store i32* %215, i32** %26, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = load i8**, i8*** %13, align 8
  %218 = call i32* @BuildTupleFromCStrings(i32* %216, i8** %217)
  store i32* %218, i32** %25, align 8
  %219 = load i32*, i32** %26, align 8
  %220 = call i32* @MemoryContextSwitchTo(i32* %219)
  %221 = load i32*, i32** %14, align 8
  %222 = load i32*, i32** %25, align 8
  %223 = call i32 @tuplestore_puttuple(i32* %221, i32* %222)
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @MemoryContextReset(i32* %224)
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %213
  %231 = load i64, i64* %16, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %16, align 8
  br label %161

233:                                              ; preds = %161
  %234 = load i32*, i32** %21, align 8
  %235 = call i32 @PQclear(i32* %234)
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %237 = icmp ne %struct.TYPE_18__* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %240 = call i64 @CheckIfSizeLimitIsExceeded(%struct.TYPE_18__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i32 (...) @ErrorSizeLimitIsExceeded()
  br label %244

244:                                              ; preds = %242, %238, %233
  br label %63

245:                                              ; preds = %120, %113, %77, %63
  %246 = load i32*, i32** %15, align 8
  %247 = call i32 @MemoryContextDelete(i32* %246)
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PQisBusy(i32) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQcmdTuples(i32*) #1

declare dso_local i32 @scanint8(i8*, i32, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i32 @ReportResultError(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @PQnfields(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i32 @memset(i8**, i32, i64) #1

declare dso_local i64 @PQgetisnull(i32*, i64, i64) #1

declare dso_local i8* @PQgetvalue(i32*, i64, i64) #1

declare dso_local i64 @PQgetlength(i32*, i64, i64) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32* @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @tuplestore_puttuple(i32*, i32*) #1

declare dso_local i32 @MemoryContextReset(i32*) #1

declare dso_local i64 @CheckIfSizeLimitIsExceeded(%struct.TYPE_18__*) #1

declare dso_local i32 @ErrorSizeLimitIsExceeded(...) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
