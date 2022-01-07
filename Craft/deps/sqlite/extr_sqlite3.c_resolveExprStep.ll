; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveExprStep.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveExprStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { %struct.TYPE_45__*, %struct.TYPE_38__ }
%struct.TYPE_45__ = type { i64, %struct.TYPE_37__*, i64 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_32__*, %struct.TYPE_44__*, i32, %struct.TYPE_45__* }
%struct.TYPE_44__ = type { i64, i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i32 }
%struct.TYPE_35__ = type { i32, i64, i32, %struct.TYPE_41__, i32, %struct.TYPE_42__, %struct.TYPE_35__*, %struct.TYPE_40__*, i32, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_42__ = type { i8* }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i8* }
%struct.TYPE_33__ = type { i32, i32 }

@EP_Resolved = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_FUNCTION = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DENY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"not authorized to use function: %s\00", align 1
@TK_NULL = common dso_local global i32 0, align 4
@NC_AllowAgg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"misuse of aggregate function %.*s()\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no such function: %.*s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"wrong number of arguments to function %.*s()\00", align 1
@TK_AGG_FUNCTION = common dso_local global i32 0, align 4
@NC_HasAgg = common dso_local global i32 0, align 4
@NC_IsCheck = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"subqueries prohibited in CHECK constraints\00", align 1
@EP_VarSelect = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"parameters prohibited in CHECK constraints\00", align 1
@WRC_Abort = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@SQLITE_AFF_INTEGER = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_43__*, %struct.TYPE_35__*)* @resolveExprStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolveExprStep(%struct.TYPE_43__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_43__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  %26 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  store %struct.TYPE_32__* %29, %struct.TYPE_32__** %6, align 8
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %31 = icmp ne %struct.TYPE_32__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_45__*, %struct.TYPE_45__** %35, align 8
  store %struct.TYPE_45__* %36, %struct.TYPE_45__** %7, align 8
  %37 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %38 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_45__*, %struct.TYPE_45__** %39, align 8
  %41 = icmp eq %struct.TYPE_45__* %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %45 = load i32, i32* @EP_Resolved, align 4
  %46 = call i64 @ExprHasAnyProperty(%struct.TYPE_35__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @WRC_Prune, align 4
  store i32 %49, i32* %3, align 4
  br label %471

50:                                               ; preds = %2
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %52 = load i32, i32* @EP_Resolved, align 4
  %53 = call i32 @ExprSetProperty(%struct.TYPE_35__* %51, i32 %52)
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %55, align 8
  %57 = icmp ne %struct.TYPE_44__* %56, null
  br i1 %57, label %58, label %108

58:                                               ; preds = %50
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %58
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_44__*, %struct.TYPE_44__** %67, align 8
  store %struct.TYPE_44__* %68, %struct.TYPE_44__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %104, %65
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_44__*, %struct.TYPE_44__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %69
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 2
  %80 = load %struct.SrcList_item*, %struct.SrcList_item** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %80, i64 %82
  %84 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %88, i32 0, i32 2
  %90 = load %struct.SrcList_item*, %struct.SrcList_item** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %90, i64 %92
  %94 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br label %100

100:                                              ; preds = %87, %77
  %101 = phi i1 [ false, %77 ], [ %99, %87 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %69

107:                                              ; preds = %69
  br label %108

108:                                              ; preds = %107, %58, %50
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %453 [
    i32 132, label %112
    i32 135, label %121
    i32 136, label %173
    i32 133, label %173
    i32 129, label %386
    i32 134, label %386
    i32 131, label %393
    i32 128, label %442
  ]

112:                                              ; preds = %108
  %113 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %120 = call i32 @lookupName(%struct.TYPE_45__* %113, i8* null, i8* null, i8* %117, %struct.TYPE_32__* %118, %struct.TYPE_35__* %119)
  store i32 %120, i32* %3, align 4
  br label %471

121:                                              ; preds = %108
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %123, align 8
  store %struct.TYPE_35__* %124, %struct.TYPE_35__** %13, align 8
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 132
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  store i8* null, i8** %12, align 8
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_40__*, %struct.TYPE_40__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %11, align 8
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %10, align 8
  br label %165

140:                                              ; preds = %121
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 135
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %12, align 8
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_40__*, %struct.TYPE_40__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %11, align 8
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %10, align 8
  br label %165

165:                                              ; preds = %140, %129
  %166 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %172 = call i32 @lookupName(%struct.TYPE_45__* %166, i8* %167, i8* %168, i8* %169, %struct.TYPE_32__* %170, %struct.TYPE_35__* %171)
  store i32 %172, i32* %3, align 4
  br label %471

173:                                              ; preds = %108, %108
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %176, align 8
  store %struct.TYPE_34__* %177, %struct.TYPE_34__** %14, align 8
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %179 = icmp ne %struct.TYPE_34__* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  br label %185

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %180
  %186 = phi i32 [ %183, %180 ], [ 0, %184 ]
  store i32 %186, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %187 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %188, align 8
  %190 = call i32 @ENC(%struct.TYPE_37__* %189)
  store i32 %190, i32* %23, align 4
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 136
  %195 = zext i1 %194 to i32
  %196 = call i32 @testcase(i32 %195)
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %198 = load i32, i32* @EP_xIsSelect, align 4
  %199 = call i32 @ExprHasProperty(%struct.TYPE_35__* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %21, align 8
  %208 = load i8*, i8** %21, align 8
  %209 = call i32 @sqlite3Strlen30(i8* %208)
  store i32 %209, i32* %20, align 4
  %210 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %211, align 8
  %213 = load i8*, i8** %21, align 8
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %23, align 4
  %217 = call %struct.TYPE_33__* @sqlite3FindFunction(%struct.TYPE_37__* %212, i8* %213, i32 %214, i32 %215, i32 %216, i32 0)
  store %struct.TYPE_33__* %217, %struct.TYPE_33__** %22, align 8
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %219 = icmp eq %struct.TYPE_33__* %218, null
  br i1 %219, label %220, label %233

220:                                              ; preds = %185
  %221 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %222, align 8
  %224 = load i8*, i8** %21, align 8
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %23, align 4
  %227 = call %struct.TYPE_33__* @sqlite3FindFunction(%struct.TYPE_37__* %223, i8* %224, i32 %225, i32 -2, i32 %226, i32 0)
  store %struct.TYPE_33__* %227, %struct.TYPE_33__** %22, align 8
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %229 = icmp eq %struct.TYPE_33__* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  store i32 1, i32* %16, align 4
  br label %232

231:                                              ; preds = %220
  store i32 1, i32* %17, align 4
  br label %232

232:                                              ; preds = %231, %230
  br label %239

233:                                              ; preds = %185
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 0
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %18, align 4
  br label %239

239:                                              ; preds = %233, %232
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %241 = icmp ne %struct.TYPE_33__* %240, null
  br i1 %241, label %242, label %272

242:                                              ; preds = %239
  %243 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %244 = load i32, i32* @SQLITE_FUNCTION, align 4
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @sqlite3AuthCheck(%struct.TYPE_45__* %243, i32 %244, i32 0, i32 %247, i32 0)
  store i32 %248, i32* %19, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* @SQLITE_OK, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %242
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* @SQLITE_DENY, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %252
  %257 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %257, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %260)
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %256, %252
  %267 = load i32, i32* @TK_NULL, align 4
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* @WRC_Prune, align 4
  store i32 %270, i32* %3, align 4
  br label %471

271:                                              ; preds = %242
  br label %272

272:                                              ; preds = %271, %239
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %272
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @NC_AllowAgg, align 4
  %280 = and i32 %278, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %275
  %283 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %284 = load i32, i32* %20, align 4
  %285 = load i8*, i8** %21, align 8
  %286 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %284, i8* %285)
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  store i32 0, i32* %18, align 4
  br label %325

291:                                              ; preds = %275, %272
  %292 = load i32, i32* %16, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %291
  %295 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %294
  %303 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %304 = load i32, i32* %20, align 4
  %305 = load i8*, i8** %21, align 8
  %306 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %304, i8* %305)
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  br label %324

311:                                              ; preds = %294, %291
  %312 = load i32, i32* %17, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %311
  %315 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %316 = load i32, i32* %20, align 4
  %317 = load i8*, i8** %21, align 8
  %318 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %315, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %316, i8* %317)
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %314, %311
  br label %324

324:                                              ; preds = %323, %302
  br label %325

325:                                              ; preds = %324, %282
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %325
  %329 = load i32, i32* @NC_AllowAgg, align 4
  %330 = xor i32 %329, -1
  %331 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = and i32 %333, %330
  store i32 %334, i32* %332, align 8
  br label %335

335:                                              ; preds = %328, %325
  %336 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %338 = call i32 @sqlite3WalkExprList(%struct.TYPE_43__* %336, %struct.TYPE_34__* %337)
  %339 = load i32, i32* %18, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %384

341:                                              ; preds = %335
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %342, %struct.TYPE_32__** %24, align 8
  %343 = load i32, i32* @TK_AGG_FUNCTION, align 4
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 8
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 4
  store i32 0, i32* %347, align 8
  br label %348

348:                                              ; preds = %361, %341
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %350 = icmp ne %struct.TYPE_32__* %349, null
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_44__*, %struct.TYPE_44__** %354, align 8
  %356 = call i32 @sqlite3FunctionUsesThisSrc(%struct.TYPE_35__* %352, %struct.TYPE_44__* %355)
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  br label %359

359:                                              ; preds = %351, %348
  %360 = phi i1 [ false, %348 ], [ %358, %351 ]
  br i1 %360, label %361, label %369

361:                                              ; preds = %359
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %363, align 8
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_32__*, %struct.TYPE_32__** %367, align 8
  store %struct.TYPE_32__* %368, %struct.TYPE_32__** %24, align 8
  br label %348

369:                                              ; preds = %359
  %370 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %371 = icmp ne %struct.TYPE_32__* %370, null
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = load i32, i32* @NC_HasAgg, align 4
  %374 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 8
  br label %378

378:                                              ; preds = %372, %369
  %379 = load i32, i32* @NC_AllowAgg, align 4
  %380 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, %379
  store i32 %383, i32* %381, align 8
  br label %384

384:                                              ; preds = %378, %335
  %385 = load i32, i32* @WRC_Prune, align 4
  store i32 %385, i32* %3, align 4
  br label %471

386:                                              ; preds = %108, %108
  %387 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, 134
  %391 = zext i1 %390 to i32
  %392 = call i32 @testcase(i32 %391)
  br label %393

393:                                              ; preds = %108, %386
  %394 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 131
  %398 = zext i1 %397 to i32
  %399 = call i32 @testcase(i32 %398)
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %401 = load i32, i32* @EP_xIsSelect, align 4
  %402 = call i32 @ExprHasProperty(%struct.TYPE_35__* %400, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %441

404:                                              ; preds = %393
  %405 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  store i32 %407, i32* %25, align 4
  %408 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @NC_IsCheck, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %404
  %415 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %416 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %415, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %417

417:                                              ; preds = %414, %404
  %418 = load %struct.TYPE_43__*, %struct.TYPE_43__** %4, align 8
  %419 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @sqlite3WalkSelect(%struct.TYPE_43__* %418, i32 %422)
  %424 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %25, align 4
  %428 = icmp sge i32 %426, %427
  %429 = zext i1 %428 to i32
  %430 = call i32 @assert(i32 %429)
  %431 = load i32, i32* %25, align 4
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %431, %434
  br i1 %435, label %436, label %440

436:                                              ; preds = %417
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %438 = load i32, i32* @EP_VarSelect, align 4
  %439 = call i32 @ExprSetProperty(%struct.TYPE_35__* %437, i32 %438)
  br label %440

440:                                              ; preds = %436, %417
  br label %441

441:                                              ; preds = %440, %393
  br label %453

442:                                              ; preds = %108
  %443 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @NC_IsCheck, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %442
  %450 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %451 = call i32 (%struct.TYPE_45__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_45__* %450, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %452

452:                                              ; preds = %449, %442
  br label %453

453:                                              ; preds = %108, %452, %441
  %454 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %454, i32 0, i32 2
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %465, label %458

458:                                              ; preds = %453
  %459 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %459, i32 0, i32 1
  %461 = load %struct.TYPE_37__*, %struct.TYPE_37__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %458, %453
  %466 = load i32, i32* @WRC_Abort, align 4
  br label %469

467:                                              ; preds = %458
  %468 = load i32, i32* @WRC_Continue, align 4
  br label %469

469:                                              ; preds = %467, %465
  %470 = phi i32 [ %466, %465 ], [ %468, %467 ]
  store i32 %470, i32* %3, align 4
  br label %471

471:                                              ; preds = %469, %384, %266, %165, %112, %48
  %472 = load i32, i32* %3, align 4
  ret i32 %472
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasAnyProperty(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @lookupName(%struct.TYPE_45__*, i8*, i8*, i8*, %struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ENC(%struct.TYPE_37__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local %struct.TYPE_33__* @sqlite3FindFunction(%struct.TYPE_37__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3AuthCheck(%struct.TYPE_45__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_45__*, i8*, ...) #1

declare dso_local i32 @sqlite3WalkExprList(%struct.TYPE_43__*, %struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3FunctionUsesThisSrc(%struct.TYPE_35__*, %struct.TYPE_44__*) #1

declare dso_local i32 @sqlite3WalkSelect(%struct.TYPE_43__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
