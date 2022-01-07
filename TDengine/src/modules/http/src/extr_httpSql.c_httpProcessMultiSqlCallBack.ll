; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessMultiSqlCallBack.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessMultiSqlCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, %struct.TYPE_29__*, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* }
%struct.TYPE_28__ = type { i32, i64, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_28__* }

@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, code:%d:inprogress, sql:%s\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos jump to:%d, last code:%d, last sql:%s\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, error code:%d, sql:%s\00", align 1
@HTTP_CMD_RETURN_TYPE_WITH_RETURN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, affect rows:%d, sql:%s\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, start retrieve, sql:%s\00", align 1
@httpProcessMultiSqlRetrieveCallBack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpProcessMultiSqlCallBack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %7, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %16 = icmp eq %struct.TYPE_30__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %22 = icmp ne %struct.TYPE_30__* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %3
  br label %312

24:                                               ; preds = %17
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %8, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %9, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i64 %37
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %10, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @httpGetCmdsString(%struct.TYPE_30__* %39, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %24
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @httpWarn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %63, i8* %64)
  br label %312

66:                                               ; preds = %24
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %174

69:                                               ; preds = %66
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 4
  %72 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* %72, null
  br i1 %73, label %74, label %113

74:                                               ; preds = %69
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 4
  %77 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %76, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ 0, %82 ], [ %85, %83 ]
  %88 = call i32 %77(%struct.TYPE_30__* %78, %struct.TYPE_28__* %79, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 0, %109
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 (i8*, %struct.TYPE_30__*, i32, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_30__* %95, i32 %98, i32 %101, i32 %104, i32 %108, i32 %110, i8* %111)
  br label %167

113:                                              ; preds = %86, %69
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 0, %114
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 0, %131
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @httpError(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_30__* %118, i32 %121, i32 %124, i32 %127, i32 %130, i32 %132, i8* %133)
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %113
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %142, align 8
  %144 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %147, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 %148(%struct.TYPE_30__* %149, %struct.TYPE_28__* %150, i32* %151)
  br label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 2
  %156 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)** %155, align 8
  %157 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 2
  %161 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)** %160, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %164 = call i32 %161(%struct.TYPE_30__* %162, %struct.TYPE_28__* %163)
  br label %165

165:                                              ; preds = %158, %153
  br label %166

166:                                              ; preds = %165, %113
  br label %167

167:                                              ; preds = %166, %90
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %173 = call i32 @httpProcessMultiSql(%struct.TYPE_30__* %172)
  br label %312

174:                                              ; preds = %66
  %175 = load i32*, i32** %5, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %273

177:                                              ; preds = %174
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %12, align 4
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i8*, i8** %11, align 8
  %194 = call i32 (i8*, %struct.TYPE_30__*, i32, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_30__* %179, i32 %182, i32 %185, i32 %188, i32 %191, i32 %192, i8* %193)
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %177
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %204, align 8
  %206 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %209, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 %210(%struct.TYPE_30__* %211, %struct.TYPE_28__* %212, i32* %213)
  br label %215

215:                                              ; preds = %207, %202, %177
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %215
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 3
  %224 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %223, align 8
  %225 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 3
  %229 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %228, align 8
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i32 %229(%struct.TYPE_30__* %230, %struct.TYPE_28__* %231, i32 %232)
  br label %234

234:                                              ; preds = %226, %221, %215
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %234
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 2
  %243 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)** %242, align 8
  %244 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)* %243, null
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 2
  %248 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*)** %247, align 8
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %251 = call i32 %248(%struct.TYPE_30__* %249, %struct.TYPE_28__* %250)
  br label %252

252:                                              ; preds = %245, %240, %234
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 1
  %255 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %254, align 8
  %256 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 1
  %260 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %259, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 %260(%struct.TYPE_30__* %261, %struct.TYPE_28__* %262, i32 %263)
  br label %270

265:                                              ; preds = %252
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %272 = call i32 @httpProcessMultiSql(%struct.TYPE_30__* %271)
  br label %312

273:                                              ; preds = %174
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = call i32 (i8*, %struct.TYPE_30__*, i32, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_30__* %274, i32 %277, i32 %280, i32 %283, i32 %286, i8* %287)
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %273
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %296, align 8
  %298 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)* %297, null
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %300, i32 0, i32 0
  %302 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32*)** %301, align 8
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %305 = load i32*, i32** %5, align 8
  %306 = call i32 %302(%struct.TYPE_30__* %303, %struct.TYPE_28__* %304, i32* %305)
  br label %307

307:                                              ; preds = %299, %294, %273
  %308 = load i32*, i32** %5, align 8
  %309 = load i32, i32* @httpProcessMultiSqlRetrieveCallBack, align 4
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %311 = call i32 @taos_fetch_rows_a(i32* %308, i32 %309, %struct.TYPE_30__* %310)
  br label %312

312:                                              ; preds = %23, %48, %167, %307, %270
  ret void
}

declare dso_local i8* @httpGetCmdsString(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @httpWarn(i8*, %struct.TYPE_30__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_30__*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_30__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @httpProcessMultiSql(%struct.TYPE_30__*) #1

declare dso_local i32 @taos_fetch_rows_a(i32*, i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
