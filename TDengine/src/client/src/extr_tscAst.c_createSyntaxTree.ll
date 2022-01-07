; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_createSyntaxTree.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAst.c_createSyntaxTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }

@TK_LP = common dso_local global i64 0, align 8
@TK_RP = common dso_local global i64 0, align 8
@TSQL_NODE_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"not support binary operator:%d\00", align 1
@TK_AND = common dso_local global i64 0, align 8
@TK_OR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*, i32, i8*, i32*)* @createSyntaxTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @createSyntaxTree(%struct.TYPE_23__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call { i64, i64 } @tStrGetToken(i8* %21, i32* %22, i32 0, i32 0, i32* null)
  %24 = bitcast %struct.TYPE_24__* %11 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  %29 = bitcast %struct.TYPE_24__* %10 to i8*
  %30 = bitcast %struct.TYPE_24__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

35:                                               ; preds = %4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TK_LP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call %struct.TYPE_21__* @createSyntaxTree(%struct.TYPE_23__* %41, i32 %42, i8* %43, i32* %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %12, align 8
  br label %56

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TK_RP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

52:                                               ; preds = %46
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.TYPE_21__* @tSQLSyntaxNodeCreate(%struct.TYPE_23__* %53, i32 %54, %struct.TYPE_24__* %10)
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %12, align 8
  br label %56

56:                                               ; preds = %52, %40
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = icmp eq %struct.TYPE_21__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call { i64, i64 } @tStrGetToken(i8* %61, i32* %62, i32 0, i32 0, i32* null)
  %64 = bitcast %struct.TYPE_24__* %13 to { i64, i64 }*
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 0
  %66 = extractvalue { i64, i64 } %63, 0
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 1
  %68 = extractvalue { i64, i64 } %63, 1
  store i64 %68, i64* %67, align 8
  %69 = bitcast %struct.TYPE_24__* %10 to i8*
  %70 = bitcast %struct.TYPE_24__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TK_RP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %74, %60
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TSQL_NODE_EXPR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %87 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_21__* %86, i32* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

88:                                               ; preds = %79
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %5, align 8
  br label %231

90:                                               ; preds = %74
  %91 = call i64 @getBinaryExprOptr(%struct.TYPE_24__* %10)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @pError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %99 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_21__* %98, i32* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

100:                                              ; preds = %90
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %102 = icmp ne %struct.TYPE_21__* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_AND, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TK_OR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TK_LP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %114, %109, %100
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call %struct.TYPE_21__* @createSyntaxTree(%struct.TYPE_23__* %120, i32 %121, i8* %122, i32* %123)
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %15, align 8
  br label %158

125:                                              ; preds = %114
  %126 = load i8*, i8** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call { i64, i64 } @tStrGetToken(i8* %126, i32* %127, i32 1, i32 0, i32* null)
  %129 = bitcast %struct.TYPE_24__* %16 to { i64, i64 }*
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 0
  %131 = extractvalue { i64, i64 } %128, 0
  store i64 %131, i64* %130, align 8
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 1
  %133 = extractvalue { i64, i64 } %128, 1
  store i64 %133, i64* %132, align 8
  %134 = bitcast %struct.TYPE_24__* %10 to i8*
  %135 = bitcast %struct.TYPE_24__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 16, i1 false)
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %141 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_21__* %140, i32* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

142:                                              ; preds = %125
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TK_LP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call %struct.TYPE_21__* @createSyntaxTree(%struct.TYPE_23__* %148, i32 %149, i8* %150, i32* %151)
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %15, align 8
  br label %157

153:                                              ; preds = %142
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call %struct.TYPE_21__* @tSQLSyntaxNodeCreate(%struct.TYPE_23__* %154, i32 %155, %struct.TYPE_24__* %10)
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %15, align 8
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %119
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %160 = icmp eq %struct.TYPE_21__* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %163 = call i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_21__* %162, i32* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

164:                                              ; preds = %158
  %165 = call i64 @calloc(i32 1, i32 32)
  %166 = inttoptr i64 %165 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %17, align 8
  %167 = call i32 @reviseBinaryExprIfNecessary(%struct.TYPE_21__** %12, %struct.TYPE_21__** %15, i64* %14)
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %174 = call i32 @isQueryOnPrimaryKey(i32 %171, %struct.TYPE_21__* %172, %struct.TYPE_21__* %173)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 2
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %179, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  store %struct.TYPE_21__* %180, %struct.TYPE_21__** %182, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call { i64, i64 } @tStrGetToken(i8* %186, i32* %187, i32 1, i32 0, i32* null)
  %189 = bitcast %struct.TYPE_24__* %18 to { i64, i64 }*
  %190 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %189, i32 0, i32 0
  %191 = extractvalue { i64, i64 } %188, 0
  store i64 %191, i64* %190, align 8
  %192 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %189, i32 0, i32 1
  %193 = extractvalue { i64, i64 } %188, 1
  store i64 %193, i64* %192, align 8
  %194 = bitcast %struct.TYPE_24__* %10 to i8*
  %195 = bitcast %struct.TYPE_24__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 16, i1 false)
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %164
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @TK_RP, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %199, %164
  %205 = call %struct.TYPE_21__* @malloc(i32 24)
  store %struct.TYPE_21__* %205, %struct.TYPE_21__** %19, align 8
  %206 = load i64, i64* @TSQL_NODE_EXPR, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 2
  store %struct.TYPE_22__* %209, %struct.TYPE_22__** %211, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  store i32 -1, i32* %213, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %214, %struct.TYPE_21__** %5, align 8
  br label %231

215:                                              ; preds = %199
  %216 = call i64 @getBinaryExprOptr(%struct.TYPE_24__* %10)
  store i64 %216, i64* %20, align 8
  %217 = load i64, i64* %20, align 8
  %218 = icmp sle i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @pError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %221)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  br label %231

223:                                              ; preds = %215
  %224 = load i8*, i8** %8, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %227 = load i64, i64* %20, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = call %struct.TYPE_21__* @parseRemainStr(i8* %224, %struct.TYPE_22__* %225, %struct.TYPE_23__* %226, i64 %227, i32 %228, i32* %229)
  store %struct.TYPE_21__* %230, %struct.TYPE_21__** %5, align 8
  br label %231

231:                                              ; preds = %223, %219, %204, %161, %139, %94, %88, %85, %59, %51, %34
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %232
}

declare dso_local { i64, i64 } @tStrGetToken(i8*, i32*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_21__* @tSQLSyntaxNodeCreate(%struct.TYPE_23__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @tSQLSyntaxNodeDestroy(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @getBinaryExprOptr(%struct.TYPE_24__*) #1

declare dso_local i32 @pError(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @reviseBinaryExprIfNecessary(%struct.TYPE_21__**, %struct.TYPE_21__**, i64*) #1

declare dso_local i32 @isQueryOnPrimaryKey(i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @malloc(i32) #1

declare dso_local %struct.TYPE_21__* @parseRemainStr(i8*, %struct.TYPE_22__*, %struct.TYPE_23__*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
