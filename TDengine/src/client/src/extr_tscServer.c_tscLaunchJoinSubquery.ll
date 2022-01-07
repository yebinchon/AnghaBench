; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLaunchJoinSubquery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLaunchJoinSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { %struct.TYPE_47__, i32, %struct.TYPE_45__**, %struct.TYPE_39__ }
%struct.TYPE_47__ = type { i32, %struct.TYPE_40__, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_40__ = type { i64, i32* }
%struct.TYPE_39__ = type { i32, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_41__, i32, i32, i32, i32, i32, %struct.TYPE_42__* }
%struct.TYPE_41__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }

@POINTER_BYTES = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@tscJoinQueryCallback = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i32 0, align 4
@TSDB_FUNC_TS_COMP = common dso_local global i32 0, align 4
@TSDB_COL_NORMAL = common dso_local global i32 0, align 4
@TSDB_QUERY_TYPE_SUBQUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tscLaunchJoinSubquery(%struct.TYPE_45__* %0, i32 %1, i32 %2, %struct.TYPE_36__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_47__*, align 8
  %11 = alloca %struct.TYPE_45__*, align 8
  %12 = alloca %struct.TYPE_48__, align 4
  %13 = alloca %struct.TYPE_37__, align 4
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_38__*, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %9, align 8
  %19 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 0
  store %struct.TYPE_47__* %20, %struct.TYPE_47__** %10, align 8
  %21 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_45__**, %struct.TYPE_45__*** %28, align 8
  %30 = icmp eq %struct.TYPE_45__** %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %4
  %32 = load i32, i32* @POINTER_BYTES, align 4
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_42__*, %struct.TYPE_42__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = call %struct.TYPE_45__** @malloc(i32 %38)
  %40 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %40, i32 0, i32 2
  store %struct.TYPE_45__** %39, %struct.TYPE_45__*** %41, align 8
  %42 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_45__**, %struct.TYPE_45__*** %43, align 8
  %45 = icmp eq %struct.TYPE_45__** %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %47, i64* %5, align 8
  br label %223

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @tscJoinQueryCallback, align 4
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %55 = call %struct.TYPE_45__* @createSubqueryObj(%struct.TYPE_45__* %50, i32 %51, i32 %52, i32 %53, %struct.TYPE_36__* %54, i32* null)
  store %struct.TYPE_45__* %55, %struct.TYPE_45__** %11, align 8
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %57 = icmp eq %struct.TYPE_45__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 8
  store i64 %59, i64* %5, align 8
  br label %223

60:                                               ; preds = %49
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %62 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_45__**, %struct.TYPE_45__*** %63, align 8
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_45__*, %struct.TYPE_45__** %64, i64 %69
  store %struct.TYPE_45__* %61, %struct.TYPE_45__** %70, align 8
  %71 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @QUERY_IS_JOIN_QUERY(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %213

76:                                               ; preds = %60
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %78 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @addGroupInfoForSubquery(%struct.TYPE_45__* %77, %struct.TYPE_45__* %78, i32 %79)
  %81 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %82, i32 0, i32 1
  %84 = call i32 @tscColumnBaseInfoUpdateTableIndex(%struct.TYPE_40__* %83, i32 0)
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %88, i32 0, i32 1
  %90 = call i32 @tscColumnBaseInfoCopy(%struct.TYPE_41__* %86, %struct.TYPE_40__* %89, i32 0)
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @tscSqlExprCopy(i32* %92, i32* %95, i32 %98)
  %100 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 3
  %105 = call i32 @tscFieldInfoCopyAll(i32* %102, i32* %104)
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %109, i32 0, i32 6
  %111 = call i32 @tscTagCondCopy(i32* %107, i32* %110)
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %125, i32 0, i32 3
  %127 = call i32 @memset(i32* %126, i32 0, i32 4)
  %128 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %129, i32 0, i32 2
  %131 = call i32 @memset(i32* %130, i32 0, i32 4)
  %132 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %132, i32 0, i32 0
  %134 = call i32 @tscFreeSqlCmdData(%struct.TYPE_47__* %133)
  %135 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  store i32 1, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 1
  %137 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  store i32 %137, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 0
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 1
  %140 = load i32, i32* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 4
  store i32 %140, i32* %139, align 4
  %141 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %141, i32 0, i32 0
  %143 = load i32, i32* @TSDB_FUNC_TS_COMP, align 4
  %144 = load i32, i32* @TSDB_COL_NORMAL, align 4
  %145 = call i32 @tscAddSpecialColumnForSelect(%struct.TYPE_47__* %142, i32 0, i32 %143, %struct.TYPE_37__* %13, %struct.TYPE_48__* %12, i32 %144)
  %146 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %146, i32 0, i32 0
  %148 = call %struct.TYPE_46__* @tscSqlExprGet(%struct.TYPE_47__* %147, i32 0)
  store %struct.TYPE_46__* %148, %struct.TYPE_46__** %14, align 8
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 0
  %151 = call %struct.TYPE_49__* @tscGetMeterMetaInfo(%struct.TYPE_47__* %150, i32 0)
  store %struct.TYPE_49__* %151, %struct.TYPE_49__** %15, align 8
  %152 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @tscGetJoinTagColIndexByUid(%struct.TYPE_47__* %153, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @addRequiredTagColumn(%struct.TYPE_47__* %167, i32 %168, i32 0)
  store i64 0, i64* %17, align 8
  br label %170

170:                                              ; preds = %209, %76
  %171 = load i64, i64* %17, align 8
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %171, %175
  br i1 %176, label %177, label %212

177:                                              ; preds = %170
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %180, align 8
  %182 = load i64, i64* %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i64 %182
  store %struct.TYPE_38__* %183, %struct.TYPE_38__** %18, align 8
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %177
  %189 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %201 = call i32 @tscColumnBaseCopy(i32* %199, %struct.TYPE_38__* %200)
  %202 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  br label %208

208:                                              ; preds = %188, %177
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %17, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %17, align 8
  br label %170

212:                                              ; preds = %170
  br label %220

213:                                              ; preds = %60
  %214 = load i32, i32* @TSDB_QUERY_TYPE_SUBQUERY, align 4
  %215 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %213, %212
  %221 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %222 = call i64 @tscProcessSql(%struct.TYPE_45__* %221)
  store i64 %222, i64* %5, align 8
  br label %223

223:                                              ; preds = %220, %58, %46
  %224 = load i64, i64* %5, align 8
  ret i64 %224
}

declare dso_local %struct.TYPE_45__** @malloc(i32) #1

declare dso_local %struct.TYPE_45__* @createSubqueryObj(%struct.TYPE_45__*, i32, i32, i32, %struct.TYPE_36__*, i32*) #1

declare dso_local i64 @QUERY_IS_JOIN_QUERY(i32) #1

declare dso_local i32 @addGroupInfoForSubquery(%struct.TYPE_45__*, %struct.TYPE_45__*, i32) #1

declare dso_local i32 @tscColumnBaseInfoUpdateTableIndex(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @tscColumnBaseInfoCopy(%struct.TYPE_41__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @tscSqlExprCopy(i32*, i32*, i32) #1

declare dso_local i32 @tscFieldInfoCopyAll(i32*, i32*) #1

declare dso_local i32 @tscTagCondCopy(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tscFreeSqlCmdData(%struct.TYPE_47__*) #1

declare dso_local i32 @tscAddSpecialColumnForSelect(%struct.TYPE_47__*, i32, i32, %struct.TYPE_37__*, %struct.TYPE_48__*, i32) #1

declare dso_local %struct.TYPE_46__* @tscSqlExprGet(%struct.TYPE_47__*, i32) #1

declare dso_local %struct.TYPE_49__* @tscGetMeterMetaInfo(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @tscGetJoinTagColIndexByUid(%struct.TYPE_47__*, i32) #1

declare dso_local i32 @addRequiredTagColumn(%struct.TYPE_47__*, i32, i32) #1

declare dso_local i32 @tscColumnBaseCopy(i32*, %struct.TYPE_38__*) #1

declare dso_local i64 @tscProcessSql(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
