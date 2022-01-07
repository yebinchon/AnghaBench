; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscInitSqlContext.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscInitSqlContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_31__, %struct.TYPE_50__, %struct.TYPE_45__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_40__ = type { %struct.TYPE_39__*, %struct.TYPE_38__*, %struct.TYPE_46__*, %struct.TYPE_42__*, %struct.TYPE_41__* }
%struct.TYPE_39__ = type { i32, i32, %struct.TYPE_32__, %struct.TYPE_38__*, %struct.TYPE_49__*, i64, i64, i32, i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_39__** }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i64, i8* }
%struct.TYPE_46__ = type { i64 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { %struct.TYPE_47__*, i64* }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i64, i64 }

@SECONDARY_STAGE_MERGE = common dso_local global i32 0, align 4
@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@POINTER_BYTES = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG_DUMMY = common dso_local global i64 0, align 8
@TSDB_FUNC_TS_DUMMY = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_43__* null, align 8
@TSDB_FUNCSTATE_SELECTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_40__*, %struct.TYPE_33__*)* @tscInitSqlContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscInitSqlContext(%struct.TYPE_37__* %0, %struct.TYPE_35__* %1, %struct.TYPE_40__* %2, %struct.TYPE_33__* %3) #0 {
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_39__**, align 8
  %18 = alloca %struct.TYPE_39__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_40__* %2, %struct.TYPE_40__** %7, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %210, %4
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %213

28:                                               ; preds = %21
  %29 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %31, i64 %32
  store %struct.TYPE_39__* %33, %struct.TYPE_39__** %10, align 8
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_41__*, %struct.TYPE_41__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @tscFieldInfoGetOffset(%struct.TYPE_37__* %39, i64 %40)
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_42__*, %struct.TYPE_42__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %38, %48
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 15
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 14
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_46__*, %struct.TYPE_46__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_48__*, %struct.TYPE_48__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %72, %80
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %82, i32 0, i32 13
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_48__*, %struct.TYPE_48__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_47__*, %struct.TYPE_47__** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_48__*, %struct.TYPE_48__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_47__*, %struct.TYPE_47__** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %104, i32 0, i32 11
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call %struct.TYPE_34__* @tscFieldInfoGetField(%struct.TYPE_37__* %106, i64 %107)
  store %struct.TYPE_34__* %108, %struct.TYPE_34__** %11, align 8
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %119, i32 0, i32 8
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* @SECONDARY_STAGE_MERGE, align 4
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call %struct.TYPE_36__* @tscSqlExprGet(%struct.TYPE_37__* %136, i64 %137)
  store %struct.TYPE_36__* %138, %struct.TYPE_36__** %12, align 8
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %28
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %182

149:                                              ; preds = %145, %28
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_39__*, %struct.TYPE_39__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %156, i32 0, i32 6
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_49__*, %struct.TYPE_49__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %164, i64 2
  %166 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %165, i32 0, i32 0
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %168 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_49__*, %struct.TYPE_49__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %170, i64 2
  %172 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %171, i32 0, i32 1
  store i32 %167, i32* %172, align 4
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_49__*, %struct.TYPE_49__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 4
  br label %182

182:                                              ; preds = %149, %145
  %183 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %184, align 8
  %186 = load i64, i64* %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i64 %186
  store %struct.TYPE_38__* %187, %struct.TYPE_38__** %14, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @calloc(i32 1, i64 %195)
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %201, i64 %202
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 3
  store %struct.TYPE_38__* %203, %struct.TYPE_38__** %205, align 8
  %206 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %182
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  br label %21

213:                                              ; preds = %21
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load i64, i64* @POINTER_BYTES, align 8
  %220 = call i8* @calloc(i32 %218, i64 %219)
  %221 = bitcast i8* %220 to %struct.TYPE_39__**
  store %struct.TYPE_39__** %221, %struct.TYPE_39__*** %17, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %18, align 8
  store i64 0, i64* %19, align 8
  br label %222

222:                                              ; preds = %278, %213
  %223 = load i64, i64* %19, align 8
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ult i64 %223, %227
  br i1 %228, label %229, label %281

229:                                              ; preds = %222
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %231 = load i64, i64* %19, align 8
  %232 = call %struct.TYPE_36__* @tscSqlExprGet(%struct.TYPE_37__* %230, i64 %231)
  store %struct.TYPE_36__* %232, %struct.TYPE_36__** %20, align 8
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TSDB_FUNC_TAG_DUMMY, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %229
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %238, %229
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* %16, align 8
  %249 = add nsw i64 %248, %247
  store i64 %249, i64* %16, align 8
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_39__*, %struct.TYPE_39__** %251, align 8
  %253 = load i64, i64* %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %252, i64 %253
  %255 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %17, align 8
  %256 = load i64, i64* %15, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %255, i64 %256
  store %struct.TYPE_39__* %254, %struct.TYPE_39__** %258, align 8
  br label %277

259:                                              ; preds = %238
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** @aAggs, align 8
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %260, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @TSDB_FUNCSTATE_SELECTIVITY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %259
  %271 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %272, align 8
  %274 = load i64, i64* %19, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i64 %274
  store %struct.TYPE_39__* %275, %struct.TYPE_39__** %18, align 8
  br label %276

276:                                              ; preds = %270, %259
  br label %277

277:                                              ; preds = %276, %244
  br label %278

278:                                              ; preds = %277
  %279 = load i64, i64* %19, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %19, align 8
  br label %222

281:                                              ; preds = %222
  %282 = load i64, i64* %15, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %17, align 8
  %286 = call i32 @free(%struct.TYPE_39__** %285)
  br label %300

287:                                              ; preds = %281
  %288 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %17, align 8
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 2
  store %struct.TYPE_39__** %288, %struct.TYPE_39__*** %291, align 8
  %292 = load i64, i64* %15, align 8
  %293 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 1
  store i64 %292, i64* %295, align 8
  %296 = load i64, i64* %16, align 8
  %297 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %298 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 0
  store i64 %296, i64* %299, align 8
  br label %300

300:                                              ; preds = %287, %284
  ret void
}

declare dso_local i32 @tscFieldInfoGetOffset(%struct.TYPE_37__*, i64) #1

declare dso_local %struct.TYPE_34__* @tscFieldInfoGetField(%struct.TYPE_37__*, i64) #1

declare dso_local %struct.TYPE_36__* @tscSqlExprGet(%struct.TYPE_37__*, i64) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_39__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
