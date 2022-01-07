; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkActionTrigger.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fkActionTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_55__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_69__ = type { i8*, i32, i32, i8*, %struct.TYPE_68__* }
%struct.TYPE_68__ = type { %struct.TYPE_69__*, i8*, i32, i32, i8*, %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i8*, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_67__* }
%struct.TYPE_67__ = type { i32, %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_56__ = type { i32, %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i8* }
%struct.TYPE_59__ = type { i32*, i32, %struct.TYPE_69__**, %struct.TYPE_66__*, %struct.TYPE_63__* }
%struct.TYPE_66__ = type { i8*, %struct.TYPE_65__* }
%struct.TYPE_65__ = type { i8*, %struct.TYPE_60__* }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_63__ = type { i32 }
%struct.TYPE_58__ = type { i64* }

@OE_None = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"old\00", align 1
@__const.fkActionTrigger.tOld = private unnamed_addr constant %struct.TYPE_55__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 3, i8* null, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@__const.fkActionTrigger.tNew = private unnamed_addr constant %struct.TYPE_55__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* null, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@TK_EQ = common dso_local global i32 0, align 4
@TK_DOT = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@OE_SetDflt = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_RAISE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"foreign key constraint failed\00", align 1
@OE_Abort = common dso_local global i32 0, align 4
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@TK_NOT = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i8* null, align 8
@TK_DELETE = common dso_local global i8* null, align 8
@TK_UPDATE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_69__* (%struct.TYPE_57__*, %struct.TYPE_56__*, %struct.TYPE_59__*, i32*)* @fkActionTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_69__* @fkActionTrigger(%struct.TYPE_57__* %0, %struct.TYPE_56__* %1, %struct.TYPE_59__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_69__*, align 8
  %6 = alloca %struct.TYPE_57__*, align 8
  %7 = alloca %struct.TYPE_56__*, align 8
  %8 = alloca %struct.TYPE_59__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_67__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_69__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_58__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_68__*, align 8
  %20 = alloca %struct.TYPE_60__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_60__*, align 8
  %25 = alloca %struct.TYPE_55__, align 8
  %26 = alloca %struct.TYPE_55__, align 8
  %27 = alloca %struct.TYPE_55__, align 8
  %28 = alloca %struct.TYPE_55__, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_60__*, align 8
  %31 = alloca %struct.TYPE_60__*, align 8
  %32 = alloca %struct.TYPE_60__*, align 8
  %33 = alloca %struct.TYPE_55__, align 8
  %34 = alloca %struct.TYPE_60__*, align 8
  store %struct.TYPE_57__* %0, %struct.TYPE_57__** %6, align 8
  store %struct.TYPE_56__* %1, %struct.TYPE_56__** %7, align 8
  store %struct.TYPE_59__* %2, %struct.TYPE_59__** %8, align 8
  store i32* %3, i32** %9, align 8
  %35 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_67__*, %struct.TYPE_67__** %36, align 8
  store %struct.TYPE_67__* %37, %struct.TYPE_67__** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_69__**, %struct.TYPE_69__*** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_69__*, %struct.TYPE_69__** %50, i64 %52
  %54 = load %struct.TYPE_69__*, %struct.TYPE_69__** %53, align 8
  store %struct.TYPE_69__* %54, %struct.TYPE_69__** %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @OE_None, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %452

58:                                               ; preds = %4
  %59 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %60 = icmp ne %struct.TYPE_69__* %59, null
  br i1 %60, label %452, label %61

61:                                               ; preds = %58
  store %struct.TYPE_58__* null, %struct.TYPE_58__** %17, align 8
  store i32* null, i32** %18, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %19, align 8
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %24, align 8
  %62 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %63 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %64 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %65 = call i64 @sqlite3FkLocateIndex(%struct.TYPE_57__* %62, %struct.TYPE_56__* %63, %struct.TYPE_59__* %64, %struct.TYPE_58__** %17, i32** %18)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store %struct.TYPE_69__* null, %struct.TYPE_69__** %5, align 8
  br label %454

68:                                               ; preds = %61
  %69 = load i32*, i32** %18, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi i1 [ true, %68 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  store i32 0, i32* %23, align 4
  br label %80

80:                                               ; preds = %261, %76
  %81 = load i32, i32* %23, align 4
  %82 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %264

86:                                               ; preds = %80
  %87 = bitcast %struct.TYPE_55__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 bitcast (%struct.TYPE_55__* @__const.fkActionTrigger.tOld to i8*), i64 32, i1 false)
  %88 = bitcast %struct.TYPE_55__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 bitcast (%struct.TYPE_55__* @__const.fkActionTrigger.tNew to i8*), i64 32, i1 false)
  %89 = load i32*, i32** %18, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  br label %104

97:                                               ; preds = %86
  %98 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_63__*, %struct.TYPE_63__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %104

104:                                              ; preds = %97, %91
  %105 = phi i32 [ %96, %91 ], [ %103, %97 ]
  store i32 %105, i32* %29, align 4
  %106 = load i32, i32* %29, align 4
  %107 = icmp sge i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_58__*, %struct.TYPE_58__** %17, align 8
  %111 = icmp ne %struct.TYPE_58__* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %104
  %113 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_64__*, %struct.TYPE_64__** %114, align 8
  %116 = load %struct.TYPE_58__*, %struct.TYPE_58__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %115, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %127

126:                                              ; preds = %104
  br label %127

127:                                              ; preds = %126, %112
  %128 = phi i8* [ %125, %112 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %126 ]
  %129 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %28, i32 0, i32 2
  store i8* %128, i8** %129, align 8
  %130 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_66__*, %struct.TYPE_66__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_65__*, %struct.TYPE_65__** %133, align 8
  %135 = load i32, i32* %29, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %27, i32 0, i32 2
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %28, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @sqlite3Strlen30(i8* %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %28, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %27, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @sqlite3Strlen30(i8* %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %27, i32 0, i32 3
  store i32 %149, i32* %150, align 8
  %151 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %152 = load i32, i32* @TK_EQ, align 4
  %153 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %154 = load i32, i32* @TK_DOT, align 4
  %155 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %156 = load i32, i32* @TK_ID, align 4
  %157 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %155, i32 %156, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %25)
  %158 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %159 = load i32, i32* @TK_ID, align 4
  %160 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %158, i32 %159, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %28)
  %161 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %153, i32 %154, %struct.TYPE_60__* %157, %struct.TYPE_60__* %160, %struct.TYPE_55__* null)
  %162 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %163 = load i32, i32* @TK_ID, align 4
  %164 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %162, i32 %163, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %27)
  %165 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %151, i32 %152, %struct.TYPE_60__* %161, %struct.TYPE_60__* %164, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %165, %struct.TYPE_60__** %30, align 8
  %166 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %167 = load %struct.TYPE_60__*, %struct.TYPE_60__** %20, align 8
  %168 = load %struct.TYPE_60__*, %struct.TYPE_60__** %30, align 8
  %169 = call %struct.TYPE_60__* @sqlite3ExprAnd(%struct.TYPE_67__* %166, %struct.TYPE_60__* %167, %struct.TYPE_60__* %168)
  store %struct.TYPE_60__* %169, %struct.TYPE_60__** %20, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %198

172:                                              ; preds = %127
  %173 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %174 = load i32, i32* @TK_IS, align 4
  %175 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %176 = load i32, i32* @TK_DOT, align 4
  %177 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %178 = load i32, i32* @TK_ID, align 4
  %179 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %177, i32 %178, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %25)
  %180 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %181 = load i32, i32* @TK_ID, align 4
  %182 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %180, i32 %181, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %28)
  %183 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %175, i32 %176, %struct.TYPE_60__* %179, %struct.TYPE_60__* %182, %struct.TYPE_55__* null)
  %184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %185 = load i32, i32* @TK_DOT, align 4
  %186 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %187 = load i32, i32* @TK_ID, align 4
  %188 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %186, i32 %187, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %26)
  %189 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %190 = load i32, i32* @TK_ID, align 4
  %191 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %189, i32 %190, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %28)
  %192 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %184, i32 %185, %struct.TYPE_60__* %188, %struct.TYPE_60__* %191, %struct.TYPE_55__* null)
  %193 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %173, i32 %174, %struct.TYPE_60__* %183, %struct.TYPE_60__* %192, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %193, %struct.TYPE_60__** %30, align 8
  %194 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %195 = load %struct.TYPE_60__*, %struct.TYPE_60__** %24, align 8
  %196 = load %struct.TYPE_60__*, %struct.TYPE_60__** %30, align 8
  %197 = call %struct.TYPE_60__* @sqlite3ExprAnd(%struct.TYPE_67__* %194, %struct.TYPE_60__* %195, %struct.TYPE_60__* %196)
  store %struct.TYPE_60__* %197, %struct.TYPE_60__** %24, align 8
  br label %198

198:                                              ; preds = %172, %127
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 128
  br i1 %200, label %201, label %260

201:                                              ; preds = %198
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 129
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32*, i32** %9, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %260

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %208, 129
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %212 = load i32, i32* @TK_DOT, align 4
  %213 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %214 = load i32, i32* @TK_ID, align 4
  %215 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %213, i32 %214, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %26)
  %216 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %217 = load i32, i32* @TK_ID, align 4
  %218 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %216, i32 %217, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* %28)
  %219 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %211, i32 %212, %struct.TYPE_60__* %215, %struct.TYPE_60__* %218, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %219, %struct.TYPE_60__** %31, align 8
  br label %252

220:                                              ; preds = %207
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @OE_SetDflt, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %247

224:                                              ; preds = %220
  %225 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_66__*, %struct.TYPE_66__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_65__*, %struct.TYPE_65__** %228, align 8
  %230 = load i32, i32* %29, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_60__*, %struct.TYPE_60__** %233, align 8
  store %struct.TYPE_60__* %234, %struct.TYPE_60__** %32, align 8
  %235 = load %struct.TYPE_60__*, %struct.TYPE_60__** %32, align 8
  %236 = icmp ne %struct.TYPE_60__* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %224
  %238 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %239 = load %struct.TYPE_60__*, %struct.TYPE_60__** %32, align 8
  %240 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %238, %struct.TYPE_60__* %239, i32 0)
  %241 = bitcast i8* %240 to %struct.TYPE_60__*
  store %struct.TYPE_60__* %241, %struct.TYPE_60__** %31, align 8
  br label %246

242:                                              ; preds = %224
  %243 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %244 = load i32, i32* @TK_NULL, align 4
  %245 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %243, i32 %244, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %245, %struct.TYPE_60__** %31, align 8
  br label %246

246:                                              ; preds = %242, %237
  br label %251

247:                                              ; preds = %220
  %248 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %249 = load i32, i32* @TK_NULL, align 4
  %250 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %248, i32 %249, %struct.TYPE_60__* null, %struct.TYPE_60__* null, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %250, %struct.TYPE_60__** %31, align 8
  br label %251

251:                                              ; preds = %247, %246
  br label %252

252:                                              ; preds = %251, %210
  %253 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %254 = load i32*, i32** %21, align 8
  %255 = load %struct.TYPE_60__*, %struct.TYPE_60__** %31, align 8
  %256 = call i32* @sqlite3ExprListAppend(%struct.TYPE_57__* %253, i32* %254, %struct.TYPE_60__* %255)
  store i32* %256, i32** %21, align 8
  %257 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %258 = load i32*, i32** %21, align 8
  %259 = call i32 @sqlite3ExprListSetName(%struct.TYPE_57__* %257, i32* %258, %struct.TYPE_55__* %27, i32 0)
  br label %260

260:                                              ; preds = %252, %204, %198
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %23, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %23, align 4
  br label %80

264:                                              ; preds = %80
  %265 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %266 = load i32*, i32** %18, align 8
  %267 = call i32 @sqlite3DbFree(%struct.TYPE_67__* %265, i32* %266)
  %268 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_66__*, %struct.TYPE_66__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %15, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = call i8* @sqlite3Strlen30(i8* %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp eq i32 %276, 128
  br i1 %277, label %278, label %301

278:                                              ; preds = %264
  %279 = load i8*, i8** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %33, i32 0, i32 2
  store i8* %279, i8** %280, align 8
  %281 = load i32, i32* %16, align 4
  %282 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %33, i32 0, i32 3
  store i32 %281, i32* %282, align 8
  %283 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %284 = load i32, i32* @TK_RAISE, align 4
  %285 = call %struct.TYPE_60__* @sqlite3Expr(%struct.TYPE_67__* %283, i32 %284, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_60__* %285, %struct.TYPE_60__** %34, align 8
  %286 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %287 = icmp ne %struct.TYPE_60__* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %278
  %289 = load i32, i32* @OE_Abort, align 4
  %290 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %291 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  br label %292

292:                                              ; preds = %288, %278
  %293 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %294 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %295 = load %struct.TYPE_60__*, %struct.TYPE_60__** %34, align 8
  %296 = call i32* @sqlite3ExprListAppend(%struct.TYPE_57__* %294, i32* null, %struct.TYPE_60__* %295)
  %297 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %298 = call i32 @sqlite3SrcListAppend(%struct.TYPE_67__* %297, i32 0, %struct.TYPE_55__* %33, i32 0)
  %299 = load %struct.TYPE_60__*, %struct.TYPE_60__** %20, align 8
  %300 = call i32* @sqlite3SelectNew(%struct.TYPE_57__* %293, i32* %296, i32 %298, %struct.TYPE_60__* %299, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32* %300, i32** %22, align 8
  store %struct.TYPE_60__* null, %struct.TYPE_60__** %20, align 8
  br label %301

301:                                              ; preds = %292, %264
  %302 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %14, align 4
  %306 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 4
  %309 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = add i64 80, %311
  %313 = add i64 %312, 1
  %314 = trunc i64 %313 to i32
  %315 = call i64 @sqlite3DbMallocZero(%struct.TYPE_67__* %309, i32 %314)
  %316 = inttoptr i64 %315 to %struct.TYPE_69__*
  store %struct.TYPE_69__* %316, %struct.TYPE_69__** %12, align 8
  %317 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %318 = icmp ne %struct.TYPE_69__* %317, null
  br i1 %318, label %319, label %374

319:                                              ; preds = %301
  %320 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %320, i64 1
  %322 = bitcast %struct.TYPE_69__* %321 to %struct.TYPE_68__*
  %323 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %323, i32 0, i32 4
  store %struct.TYPE_68__* %322, %struct.TYPE_68__** %324, align 8
  store %struct.TYPE_68__* %322, %struct.TYPE_68__** %19, align 8
  %325 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %326 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %325, i64 1
  %327 = bitcast %struct.TYPE_68__* %326 to i8*
  %328 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %329, i32 0, i32 0
  store i8* %327, i8** %330, align 8
  %331 = load i32, i32* %16, align 4
  %332 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %333 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %333, i32 0, i32 1
  store i32 %331, i32* %334, align 8
  %335 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %336 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i8*, i8** %15, align 8
  %340 = load i32, i32* %16, align 4
  %341 = call i32 @memcpy(i8* %338, i8* %339, i32 %340)
  %342 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %343 = load %struct.TYPE_60__*, %struct.TYPE_60__** %20, align 8
  %344 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %345 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %342, %struct.TYPE_60__* %343, i32 %344)
  %346 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %347 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %346, i32 0, i32 4
  store i8* %345, i8** %347, align 8
  %348 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %349 = load i32*, i32** %21, align 8
  %350 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %351 = call i32 @sqlite3ExprListDup(%struct.TYPE_67__* %348, i32* %349, i32 %350)
  %352 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %353 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %352, i32 0, i32 3
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %355 = load i32*, i32** %22, align 8
  %356 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %357 = call i32 @sqlite3SelectDup(%struct.TYPE_67__* %354, i32* %355, i32 %356)
  %358 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_60__*, %struct.TYPE_60__** %24, align 8
  %361 = icmp ne %struct.TYPE_60__* %360, null
  br i1 %361, label %362, label %373

362:                                              ; preds = %319
  %363 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %364 = load i32, i32* @TK_NOT, align 4
  %365 = load %struct.TYPE_60__*, %struct.TYPE_60__** %24, align 8
  %366 = call %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__* %363, i32 %364, %struct.TYPE_60__* %365, %struct.TYPE_60__* null, %struct.TYPE_55__* null)
  store %struct.TYPE_60__* %366, %struct.TYPE_60__** %24, align 8
  %367 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %368 = load %struct.TYPE_60__*, %struct.TYPE_60__** %24, align 8
  %369 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %370 = call i8* @sqlite3ExprDup(%struct.TYPE_67__* %367, %struct.TYPE_60__* %368, i32 %369)
  %371 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %371, i32 0, i32 3
  store i8* %370, i8** %372, align 8
  br label %373

373:                                              ; preds = %362, %319
  br label %374

374:                                              ; preds = %373, %301
  %375 = load i32, i32* %14, align 4
  %376 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 4
  %379 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %380 = load %struct.TYPE_60__*, %struct.TYPE_60__** %20, align 8
  %381 = call i32 @sqlite3ExprDelete(%struct.TYPE_67__* %379, %struct.TYPE_60__* %380)
  %382 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %383 = load %struct.TYPE_60__*, %struct.TYPE_60__** %24, align 8
  %384 = call i32 @sqlite3ExprDelete(%struct.TYPE_67__* %382, %struct.TYPE_60__* %383)
  %385 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %386 = load i32*, i32** %21, align 8
  %387 = call i32 @sqlite3ExprListDelete(%struct.TYPE_67__* %385, i32* %386)
  %388 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %389 = load i32*, i32** %22, align 8
  %390 = call i32 @sqlite3SelectDelete(%struct.TYPE_67__* %388, i32* %389)
  %391 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %399

395:                                              ; preds = %374
  %396 = load %struct.TYPE_67__*, %struct.TYPE_67__** %10, align 8
  %397 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %398 = call i32 @fkTriggerDelete(%struct.TYPE_67__* %396, %struct.TYPE_69__* %397)
  store %struct.TYPE_69__* null, %struct.TYPE_69__** %5, align 8
  br label %454

399:                                              ; preds = %374
  %400 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %401 = icmp ne %struct.TYPE_68__* %400, null
  %402 = zext i1 %401 to i32
  %403 = call i32 @assert(i32 %402)
  %404 = load i32, i32* %11, align 4
  switch i32 %404, label %417 [
    i32 128, label %405
    i32 129, label %409
  ]

405:                                              ; preds = %399
  %406 = load i8*, i8** @TK_SELECT, align 8
  %407 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %408 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %407, i32 0, i32 1
  store i8* %406, i8** %408, align 8
  br label %421

409:                                              ; preds = %399
  %410 = load i32*, i32** %9, align 8
  %411 = icmp ne i32* %410, null
  br i1 %411, label %416, label %412

412:                                              ; preds = %409
  %413 = load i8*, i8** @TK_DELETE, align 8
  %414 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %415 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %414, i32 0, i32 1
  store i8* %413, i8** %415, align 8
  br label %421

416:                                              ; preds = %409
  br label %417

417:                                              ; preds = %399, %416
  %418 = load i8*, i8** @TK_UPDATE, align 8
  %419 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %420 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %419, i32 0, i32 1
  store i8* %418, i8** %420, align 8
  br label %421

421:                                              ; preds = %417, %412, %405
  %422 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %423 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %423, i32 0, i32 0
  store %struct.TYPE_69__* %422, %struct.TYPE_69__** %424, align 8
  %425 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 4
  %430 = load %struct.TYPE_56__*, %struct.TYPE_56__** %7, align 8
  %431 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %433, i32 0, i32 1
  store i32 %432, i32* %434, align 8
  %435 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %436 = load %struct.TYPE_59__*, %struct.TYPE_59__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %436, i32 0, i32 2
  %438 = load %struct.TYPE_69__**, %struct.TYPE_69__*** %437, align 8
  %439 = load i32, i32* %13, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_69__*, %struct.TYPE_69__** %438, i64 %440
  store %struct.TYPE_69__* %435, %struct.TYPE_69__** %441, align 8
  %442 = load i32*, i32** %9, align 8
  %443 = icmp ne i32* %442, null
  br i1 %443, label %444, label %446

444:                                              ; preds = %421
  %445 = load i8*, i8** @TK_UPDATE, align 8
  br label %448

446:                                              ; preds = %421
  %447 = load i8*, i8** @TK_DELETE, align 8
  br label %448

448:                                              ; preds = %446, %444
  %449 = phi i8* [ %445, %444 ], [ %447, %446 ]
  %450 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  %451 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %450, i32 0, i32 0
  store i8* %449, i8** %451, align 8
  br label %452

452:                                              ; preds = %448, %58, %4
  %453 = load %struct.TYPE_69__*, %struct.TYPE_69__** %12, align 8
  store %struct.TYPE_69__* %453, %struct.TYPE_69__** %5, align 8
  br label %454

454:                                              ; preds = %452, %395, %67
  %455 = load %struct.TYPE_69__*, %struct.TYPE_69__** %5, align 8
  ret %struct.TYPE_69__* %455
}

declare dso_local i64 @sqlite3FkLocateIndex(%struct.TYPE_57__*, %struct.TYPE_56__*, %struct.TYPE_59__*, %struct.TYPE_58__**, i32**) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @sqlite3Strlen30(i8*) #1

declare dso_local %struct.TYPE_60__* @sqlite3PExpr(%struct.TYPE_57__*, i32, %struct.TYPE_60__*, %struct.TYPE_60__*, %struct.TYPE_55__*) #1

declare dso_local %struct.TYPE_60__* @sqlite3ExprAnd(%struct.TYPE_67__*, %struct.TYPE_60__*, %struct.TYPE_60__*) #1

declare dso_local i8* @sqlite3ExprDup(%struct.TYPE_67__*, %struct.TYPE_60__*, i32) #1

declare dso_local i32* @sqlite3ExprListAppend(%struct.TYPE_57__*, i32*, %struct.TYPE_60__*) #1

declare dso_local i32 @sqlite3ExprListSetName(%struct.TYPE_57__*, i32*, %struct.TYPE_55__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_67__*, i32*) #1

declare dso_local %struct.TYPE_60__* @sqlite3Expr(%struct.TYPE_67__*, i32, i8*) #1

declare dso_local i32* @sqlite3SelectNew(%struct.TYPE_57__*, i32*, i32, %struct.TYPE_60__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3SrcListAppend(%struct.TYPE_67__*, i32, %struct.TYPE_55__*, i32) #1

declare dso_local i64 @sqlite3DbMallocZero(%struct.TYPE_67__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3ExprListDup(%struct.TYPE_67__*, i32*, i32) #1

declare dso_local i32 @sqlite3SelectDup(%struct.TYPE_67__*, i32*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_67__*, %struct.TYPE_60__*) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_67__*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_67__*, i32*) #1

declare dso_local i32 @fkTriggerDelete(%struct.TYPE_67__*, %struct.TYPE_69__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
