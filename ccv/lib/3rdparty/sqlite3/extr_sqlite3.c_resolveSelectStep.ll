; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_resolveSelectStep.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_resolveSelectStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { %struct.TYPE_44__*, %struct.TYPE_38__ }
%struct.TYPE_44__ = type { i8*, i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_36__*, %struct.TYPE_40__*, i64, %struct.TYPE_44__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_40__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i8*, %struct.TYPE_43__*, %struct.TYPE_35__, %struct.TYPE_39__ }
%struct.TYPE_35__ = type { %struct.TYPE_36__* }
%struct.TYPE_39__ = type { i32, i64 }
%struct.TYPE_43__ = type { i32, i64, %struct.TYPE_43__*, %struct.TYPE_34__*, %struct.TYPE_36__*, %struct.TYPE_40__*, i32, i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_33__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32 }

@SF_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@SF_Expanded = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@SF_Converted = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@NC_MinMaxAgg = common dso_local global i32 0, align 4
@SF_MinMaxAgg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"a GROUP BY clause is required before HAVING\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ORDER\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@EP_Agg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"aggregate functions are not allowed in the GROUP BY clause\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_42__*, %struct.TYPE_43__*)* @resolveSelectStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveSelectStep(%struct.TYPE_42__* %0, %struct.TYPE_43__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca %struct.TYPE_43__*, align 8
  %16 = alloca %struct.SrcList_item*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.SrcList_item*, align 8
  %21 = alloca %struct.TYPE_43__*, align 8
  %22 = alloca %struct.ExprList_item*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  %23 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %24 = icmp ne %struct.TYPE_43__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SF_Resolved, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @WRC_Prune, align 4
  store i32 %34, i32* %3, align 4
  br label %541

35:                                               ; preds = %2
  %36 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %6, align 8
  %40 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %41, align 8
  store %struct.TYPE_44__* %42, %struct.TYPE_44__** %10, align 8
  %43 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_41__*, %struct.TYPE_41__** %44, align 8
  store %struct.TYPE_41__* %45, %struct.TYPE_41__** %14, align 8
  %46 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SF_Expanded, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %35
  %53 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %54 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %56 = call i32 @sqlite3SelectPrep(%struct.TYPE_44__* %53, %struct.TYPE_43__* %54, %struct.TYPE_32__* %55)
  %57 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %52
  %67 = load i32, i32* @WRC_Abort, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @WRC_Prune, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %3, align 4
  br label %541

72:                                               ; preds = %35
  %73 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_43__*, %struct.TYPE_43__** %74, align 8
  %76 = icmp ne %struct.TYPE_43__* %75, null
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %78 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  store %struct.TYPE_43__* %78, %struct.TYPE_43__** %13, align 8
  br label %79

79:                                               ; preds = %523, %72
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %81 = icmp ne %struct.TYPE_43__* %80, null
  br i1 %81, label %82, label %529

82:                                               ; preds = %79
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SF_Expanded, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SF_Resolved, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* @SF_Resolved, align 4
  %100 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = call i32 @memset(%struct.TYPE_32__* %7, i32 0, i32 48)
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 5
  store %struct.TYPE_44__* %105, %struct.TYPE_44__** %106, align 8
  %107 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_32__* %7, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %82
  %113 = load i32, i32* @WRC_Abort, align 4
  store i32 %113, i32* %3, align 4
  br label %541

114:                                              ; preds = %82
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SF_Converted, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %114
  %122 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 1
  %126 = load %struct.SrcList_item*, %struct.SrcList_item** %125, align 8
  %127 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %126, i64 0
  %128 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %127, i32 0, i32 1
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %128, align 8
  store %struct.TYPE_43__* %129, %struct.TYPE_43__** %15, align 8
  %130 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %136, %121
  %142 = phi i1 [ false, %121 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_43__*, %struct.TYPE_43__** %146, align 8
  %148 = icmp ne %struct.TYPE_43__* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br label %154

154:                                              ; preds = %149, %141
  %155 = phi i1 [ false, %141 ], [ %153, %149 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %154, %114
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %276, %165
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_40__*, %struct.TYPE_40__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %167, %172
  br i1 %173, label %174, label %279

174:                                              ; preds = %166
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %177, i32 0, i32 1
  %179 = load %struct.SrcList_item*, %struct.SrcList_item** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %179, i64 %181
  store %struct.SrcList_item* %182, %struct.SrcList_item** %16, align 8
  %183 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %184 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %183, i32 0, i32 1
  %185 = load %struct.TYPE_43__*, %struct.TYPE_43__** %184, align 8
  %186 = icmp ne %struct.TYPE_43__* %185, null
  br i1 %186, label %187, label %275

187:                                              ; preds = %174
  store i32 0, i32* %18, align 4
  %188 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %19, align 8
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %191, %struct.TYPE_32__** %17, align 8
  br label %192

192:                                              ; preds = %203, %187
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %194 = icmp ne %struct.TYPE_32__* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %195
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %205, align 8
  store %struct.TYPE_32__* %206, %struct.TYPE_32__** %17, align 8
  br label %192

207:                                              ; preds = %192
  %208 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %209 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %214 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %212, %207
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %220 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %221 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %220, i32 0, i32 1
  %222 = load %struct.TYPE_43__*, %struct.TYPE_43__** %221, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %224 = call i32 @sqlite3ResolveSelectNames(%struct.TYPE_44__* %219, %struct.TYPE_43__* %222, %struct.TYPE_32__* %223)
  %225 = load i8*, i8** %19, align 8
  %226 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %218
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232, %218
  %238 = load i32, i32* @WRC_Abort, align 4
  store i32 %238, i32* %3, align 4
  br label %541

239:                                              ; preds = %232
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %240, %struct.TYPE_32__** %17, align 8
  br label %241

241:                                              ; preds = %252, %239
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %243 = icmp ne %struct.TYPE_32__* %242, null
  br i1 %243, label %244, label %256

244:                                              ; preds = %241
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %18, align 4
  br label %252

252:                                              ; preds = %244
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %254, align 8
  store %struct.TYPE_32__* %255, %struct.TYPE_32__** %17, align 8
  br label %241

256:                                              ; preds = %241
  %257 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %258 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* %18, align 4
  %264 = icmp sle i32 %263, 0
  br label %265

265:                                              ; preds = %262, %256
  %266 = phi i1 [ false, %256 ], [ %264, %262 ]
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert(i32 %267)
  %269 = load i32, i32* %18, align 4
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i32
  %272 = load %struct.SrcList_item*, %struct.SrcList_item** %16, align 8
  %273 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  br label %275

275:                                              ; preds = %265, %174
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %11, align 4
  br label %166

279:                                              ; preds = %166
  %280 = load i32, i32* @NC_AllowAgg, align 4
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  store i32 %280, i32* %281, align 8
  %282 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 3
  store %struct.TYPE_40__* %284, %struct.TYPE_40__** %285, align 8
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  store %struct.TYPE_32__* %286, %struct.TYPE_32__** %287, align 8
  %288 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %288, i32 0, i32 4
  %290 = load %struct.TYPE_36__*, %struct.TYPE_36__** %289, align 8
  %291 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_32__* %7, %struct.TYPE_36__* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %279
  %294 = load i32, i32* @WRC_Abort, align 4
  store i32 %294, i32* %3, align 4
  br label %541

295:                                              ; preds = %279
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @SF_Aggregate, align 4
  %300 = and i32 %298, %299
  %301 = icmp eq i32 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %304, i32 0, i32 8
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %305, align 8
  store %struct.TYPE_33__* %306, %struct.TYPE_33__** %12, align 8
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %308 = icmp ne %struct.TYPE_33__* %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %295
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @NC_HasAgg, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %331

315:                                              ; preds = %309, %295
  %316 = load i32, i32* @NC_MinMaxAgg, align 4
  %317 = load i32, i32* @SF_MinMaxAgg, align 4
  %318 = icmp eq i32 %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @assert(i32 %319)
  %321 = load i32, i32* @SF_Aggregate, align 4
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @NC_MinMaxAgg, align 4
  %325 = and i32 %323, %324
  %326 = or i32 %321, %325
  %327 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %337

331:                                              ; preds = %309
  %332 = load i32, i32* @NC_AllowAgg, align 4
  %333 = xor i32 %332, -1
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %333
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %331, %315
  %338 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %337
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %344 = icmp ne %struct.TYPE_33__* %343, null
  br i1 %344, label %349, label %345

345:                                              ; preds = %342
  %346 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %347 = call i32 @sqlite3ErrorMsg(%struct.TYPE_44__* %346, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %348 = load i32, i32* @WRC_Abort, align 4
  store i32 %348, i32* %3, align 4
  br label %541

349:                                              ; preds = %342, %337
  %350 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %350, i32 0, i32 4
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 2
  store %struct.TYPE_36__* %352, %struct.TYPE_36__** %353, align 8
  %354 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_32__* %7, i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %349
  %360 = load i32, i32* @WRC_Abort, align 4
  store i32 %360, i32* %3, align 4
  br label %541

361:                                              ; preds = %349
  %362 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = call i64 @sqlite3ResolveExprNames(%struct.TYPE_32__* %7, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %361
  %368 = load i32, i32* @WRC_Abort, align 4
  store i32 %368, i32* %3, align 4
  br label %541

369:                                              ; preds = %361
  store i32 0, i32* %11, align 4
  br label %370

370:                                              ; preds = %402, %369
  %371 = load i32, i32* %11, align 4
  %372 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %372, i32 0, i32 5
  %374 = load %struct.TYPE_40__*, %struct.TYPE_40__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %371, %376
  br i1 %377, label %378, label %405

378:                                              ; preds = %370
  %379 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %379, i32 0, i32 5
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 1
  %383 = load %struct.SrcList_item*, %struct.SrcList_item** %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %383, i64 %385
  store %struct.SrcList_item* %386, %struct.SrcList_item** %20, align 8
  %387 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %388 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %401

392:                                              ; preds = %378
  %393 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  %394 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_36__*, %struct.TYPE_36__** %395, align 8
  %397 = call i64 @sqlite3ResolveExprListNames(%struct.TYPE_32__* %7, %struct.TYPE_36__* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %392
  %400 = load i32, i32* @WRC_Abort, align 4
  store i32 %400, i32* %3, align 4
  br label %541

401:                                              ; preds = %392, %378
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %11, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %11, align 4
  br label %370

405:                                              ; preds = %370
  %406 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %406, align 8
  %407 = load i32, i32* @NC_AllowAgg, align 4
  %408 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %407
  store i32 %410, i32* %408, align 8
  %411 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @SF_Converted, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %433

417:                                              ; preds = %405
  %418 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %418, i32 0, i32 5
  %420 = load %struct.TYPE_40__*, %struct.TYPE_40__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %420, i32 0, i32 1
  %422 = load %struct.SrcList_item*, %struct.SrcList_item** %421, align 8
  %423 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %422, i64 0
  %424 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %423, i32 0, i32 1
  %425 = load %struct.TYPE_43__*, %struct.TYPE_43__** %424, align 8
  store %struct.TYPE_43__* %425, %struct.TYPE_43__** %21, align 8
  %426 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %427 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %429, i32 0, i32 1
  store i64 %428, i64* %430, align 8
  %431 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %432 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %431, i32 0, i32 1
  store i64 0, i64* %432, align 8
  br label %433

433:                                              ; preds = %417, %405
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %9, align 4
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %447

437:                                              ; preds = %433
  %438 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %439 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = inttoptr i64 %441 to %struct.TYPE_33__*
  %443 = call i64 @resolveOrderGroupBy(%struct.TYPE_32__* %7, %struct.TYPE_43__* %438, %struct.TYPE_33__* %442, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = load i32, i32* @WRC_Abort, align 4
  store i32 %446, i32* %3, align 4
  br label %541

447:                                              ; preds = %437, %433
  %448 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %449 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %447
  %453 = load i32, i32* @WRC_Abort, align 4
  store i32 %453, i32* %3, align 4
  br label %541

454:                                              ; preds = %447
  %455 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %456 = icmp ne %struct.TYPE_33__* %455, null
  br i1 %456, label %457, label %497

457:                                              ; preds = %454
  %458 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %460 = call i64 @resolveOrderGroupBy(%struct.TYPE_32__* %7, %struct.TYPE_43__* %458, %struct.TYPE_33__* %459, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %457
  %463 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %464 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %462, %457
  %468 = load i32, i32* @WRC_Abort, align 4
  store i32 %468, i32* %3, align 4
  br label %541

469:                                              ; preds = %462
  store i32 0, i32* %11, align 4
  %470 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %470, i32 0, i32 1
  %472 = load %struct.ExprList_item*, %struct.ExprList_item** %471, align 8
  store %struct.ExprList_item* %472, %struct.ExprList_item** %22, align 8
  br label %473

473:                                              ; preds = %491, %469
  %474 = load i32, i32* %11, align 4
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = icmp slt i32 %474, %477
  br i1 %478, label %479, label %496

479:                                              ; preds = %473
  %480 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %481 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @EP_Agg, align 4
  %484 = call i64 @ExprHasProperty(i32 %482, i32 %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %490

486:                                              ; preds = %479
  %487 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %488 = call i32 @sqlite3ErrorMsg(%struct.TYPE_44__* %487, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %489 = load i32, i32* @WRC_Abort, align 4
  store i32 %489, i32* %3, align 4
  br label %541

490:                                              ; preds = %479
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %11, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %11, align 4
  %494 = load %struct.ExprList_item*, %struct.ExprList_item** %22, align 8
  %495 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %494, i32 1
  store %struct.ExprList_item* %495, %struct.ExprList_item** %22, align 8
  br label %473

496:                                              ; preds = %473
  br label %497

497:                                              ; preds = %496, %454
  %498 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %498, i32 0, i32 3
  %500 = load %struct.TYPE_34__*, %struct.TYPE_34__** %499, align 8
  %501 = icmp ne %struct.TYPE_34__* %500, null
  br i1 %501, label %502, label %523

502:                                              ; preds = %497
  %503 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %503, i32 0, i32 4
  %505 = load %struct.TYPE_36__*, %struct.TYPE_36__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %508, i32 0, i32 3
  %510 = load %struct.TYPE_34__*, %struct.TYPE_34__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 0
  %512 = load %struct.TYPE_37__*, %struct.TYPE_37__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %507, %514
  br i1 %515, label %516, label %523

516:                                              ; preds = %502
  %517 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %518 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %518, i32 0, i32 3
  %520 = load %struct.TYPE_34__*, %struct.TYPE_34__** %519, align 8
  %521 = call i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_44__* %517, %struct.TYPE_34__* %520)
  %522 = load i32, i32* @WRC_Abort, align 4
  store i32 %522, i32* %3, align 4
  br label %541

523:                                              ; preds = %502, %497
  %524 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %524, i32 0, i32 2
  %526 = load %struct.TYPE_43__*, %struct.TYPE_43__** %525, align 8
  store %struct.TYPE_43__* %526, %struct.TYPE_43__** %5, align 8
  %527 = load i32, i32* %9, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %9, align 4
  br label %79

529:                                              ; preds = %79
  %530 = load i32, i32* %8, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %539

532:                                              ; preds = %529
  %533 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %534 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %535 = call i64 @resolveCompoundOrderBy(%struct.TYPE_44__* %533, %struct.TYPE_43__* %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = load i32, i32* @WRC_Abort, align 4
  store i32 %538, i32* %3, align 4
  br label %541

539:                                              ; preds = %532, %529
  %540 = load i32, i32* @WRC_Prune, align 4
  store i32 %540, i32* %3, align 4
  br label %541

541:                                              ; preds = %539, %537, %516, %486, %467, %452, %445, %399, %367, %359, %345, %293, %237, %112, %70, %33
  %542 = load i32, i32* %3, align 4
  ret i32 %542
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_44__*, %struct.TYPE_43__*, %struct.TYPE_32__*) #1

declare dso_local i32 @memset(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @sqlite3ResolveExprNames(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @sqlite3ResolveSelectNames(%struct.TYPE_44__*, %struct.TYPE_43__*, %struct.TYPE_32__*) #1

declare dso_local i64 @sqlite3ResolveExprListNames(%struct.TYPE_32__*, %struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_44__*, i8*) #1

declare dso_local i64 @resolveOrderGroupBy(%struct.TYPE_32__*, %struct.TYPE_43__*, %struct.TYPE_33__*, i8*) #1

declare dso_local i64 @ExprHasProperty(i32, i32) #1

declare dso_local i32 @sqlite3SelectWrongNumTermsError(%struct.TYPE_44__*, %struct.TYPE_34__*) #1

declare dso_local i64 @resolveCompoundOrderBy(%struct.TYPE_44__*, %struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
