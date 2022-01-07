; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_tableschemadef_string.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_pg_get_tableschemadef_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i8 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_32__*, %struct.TYPE_23__* }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_27__ = type { i8*, i32, i32, i32, i32* }
%struct.TYPE_29__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { i8* }

@AccessShareLock = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CREATE \00", align 1
@RELPERSISTENCE_UNLOGGED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"UNLOGGED \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"TABLE %s (\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CREATE FOREIGN TABLE %s (\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" DEFAULT %s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" NOT NULL\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c" COLLATE %s\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"CONSTRAINT %s CHECK \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" SERVER %s\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" PARTITION BY %s \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" WITH (%s)\00", align 1
@ATTRIBUTE_GENERATED_STORED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_get_tableschemadef_string(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_30__*, align 8
  %30 = alloca %struct.TYPE_31__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8 0, i8* %7, align 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %34 = bitcast %struct.TYPE_27__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 32, i1 false)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @AccessShareLock, align 4
  %37 = call %struct.TYPE_28__* @relation_open(i32 %35, i32 %36)
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @NIL, align 4
  %40 = call i8* @generate_relation_name(i32 %38, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @EnsureRelationKindSupported(i32 %41)
  %43 = call i32 @initStringInfo(%struct.TYPE_27__* %15)
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @RegularTable(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %2
  %48 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RELPERSISTENCE_UNLOGGED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %64

61:                                               ; preds = %2
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %66 = call %struct.TYPE_25__* @RelationGetDescr(%struct.TYPE_28__* %65)
  store %struct.TYPE_25__* %66, %struct.TYPE_25__** %8, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %68, align 8
  store %struct.TYPE_26__* %69, %struct.TYPE_26__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %190, %64
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %193

76:                                               ; preds = %70
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.TYPE_29__* @TupleDescAttr(%struct.TYPE_25__* %77, i32 %78)
  store %struct.TYPE_29__* %79, %struct.TYPE_29__** %16, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %189, label %84

84:                                               ; preds = %76
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  store i32 1, i32* %11, align 4
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @NameStr(i32 %92)
  store i8* %93, i8** %17, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = call i8* @quote_identifier(i8* %94)
  %96 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @format_type_with_typemod(i32 %99, i32 %102)
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* %104)
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %163

110:                                              ; preds = %89
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i8* null, i8** %23, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = icmp ne %struct.TYPE_26__* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %19, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %119 = icmp ne %struct.TYPE_23__* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @Assert(i32 %120)
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i64 %123
  store %struct.TYPE_23__* %124, %struct.TYPE_23__** %20, align 8
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %12, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  %132 = icmp eq i32 %129, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ule i64 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @Assert(i32 %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @stringToNode(i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %21, align 8
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %110
  %150 = load i32*, i32** %21, align 8
  %151 = call i32 @contain_nextval_expression_walker(i32* %150, i32* null)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %149, %110
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %3, align 4
  %156 = call i32* @deparse_context_for(i8* %154, i32 %155)
  store i32* %156, i32** %22, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = load i32*, i32** %22, align 8
  %159 = call i8* @deparse_expression(i32* %157, i32* %158, i32 0, i32 0)
  store i8* %159, i8** %23, align 8
  %160 = load i8*, i8** %23, align 8
  %161 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %153, %149
  br label %163

163:                                              ; preds = %162, %89
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %163
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @InvalidOid, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i8* @generate_collation_name(i64 %185)
  %187 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %186)
  br label %188

188:                                              ; preds = %182, %176, %170
  br label %189

189:                                              ; preds = %188, %76
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %70

193:                                              ; preds = %70
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %195 = icmp ne %struct.TYPE_26__* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %14, align 8
  br label %200

200:                                              ; preds = %196, %193
  store i64 0, i64* %13, align 8
  br label %201

201:                                              ; preds = %238, %200
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* %14, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %201
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  store %struct.TYPE_32__* %208, %struct.TYPE_32__** %24, align 8
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %210 = load i64, i64* %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i64 %210
  store %struct.TYPE_32__* %211, %struct.TYPE_32__** %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  store i8* null, i8** %28, align 8
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %205
  %215 = load i64, i64* %13, align 8
  %216 = icmp ugt i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214, %205
  %218 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %214
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @quote_identifier(i8* %222)
  %224 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %223)
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @stringToNode(i32 %227)
  %229 = inttoptr i64 %228 to i32*
  store i32* %229, i32** %26, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* %3, align 4
  %232 = call i32* @deparse_context_for(i8* %230, i32 %231)
  store i32* %232, i32** %27, align 8
  %233 = load i32*, i32** %26, align 8
  %234 = load i32*, i32** %27, align 8
  %235 = call i8* @deparse_expression(i32* %233, i32* %234, i32 0, i32 0)
  store i8* %235, i8** %28, align 8
  %236 = load i8*, i8** %28, align 8
  %237 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* %236)
  br label %238

238:                                              ; preds = %219
  %239 = load i64, i64* %13, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %13, align 8
  br label %201

241:                                              ; preds = %201
  %242 = call i32 @appendStringInfoString(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 1
  %247 = load i8, i8* %246, align 8
  store i8 %247, i8* %7, align 1
  %248 = load i8, i8* %7, align 1
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %270

253:                                              ; preds = %241
  %254 = load i32, i32* %3, align 4
  %255 = call %struct.TYPE_30__* @GetForeignTable(i32 %254)
  store %struct.TYPE_30__* %255, %struct.TYPE_30__** %29, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call %struct.TYPE_31__* @GetForeignServer(i32 %258)
  store %struct.TYPE_31__* %259, %struct.TYPE_31__** %30, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %31, align 8
  %263 = load i8*, i8** %31, align 8
  %264 = call i8* @quote_identifier(i8* %263)
  %265 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %264)
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @AppendOptionListToString(%struct.TYPE_27__* %15, i32 %268)
  br label %282

270:                                              ; preds = %241
  %271 = load i8, i8* %7, align 1
  %272 = sext i8 %271 to i32
  %273 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp eq i32 %272, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %270
  %277 = load i32, i32* %3, align 4
  %278 = call i8* @GeneratePartitioningInformation(i32 %277)
  store i8* %278, i8** %32, align 8
  %279 = load i8*, i8** %32, align 8
  %280 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %279)
  br label %281

281:                                              ; preds = %276, %270
  br label %282

282:                                              ; preds = %281, %253
  %283 = load i32, i32* %3, align 4
  %284 = call i8* @flatten_reloptions(i32 %283)
  store i8* %284, i8** %33, align 8
  %285 = load i8*, i8** %33, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load i8*, i8** %33, align 8
  %289 = call i32 @appendStringInfo(%struct.TYPE_27__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %288)
  %290 = load i8*, i8** %33, align 8
  %291 = call i32 @pfree(i8* %290)
  br label %292

292:                                              ; preds = %287, %282
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %294 = load i32, i32* @AccessShareLock, align 4
  %295 = call i32 @relation_close(%struct.TYPE_28__* %293, i32 %294)
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  ret i8* %297
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_28__* @relation_open(i32, i32) #2

declare dso_local i8* @generate_relation_name(i32, i32) #2

declare dso_local i32 @EnsureRelationKindSupported(i32) #2

declare dso_local i32 @initStringInfo(%struct.TYPE_27__*) #2

declare dso_local i64 @RegularTable(i32) #2

declare dso_local i32 @appendStringInfoString(%struct.TYPE_27__*, i8*) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_27__*, i8*, i8*) #2

declare dso_local %struct.TYPE_25__* @RelationGetDescr(%struct.TYPE_28__*) #2

declare dso_local %struct.TYPE_29__* @TupleDescAttr(%struct.TYPE_25__*, i32) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i8* @quote_identifier(i8*) #2

declare dso_local i8* @format_type_with_typemod(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @stringToNode(i32) #2

declare dso_local i32 @contain_nextval_expression_walker(i32*, i32*) #2

declare dso_local i32* @deparse_context_for(i8*, i32) #2

declare dso_local i8* @deparse_expression(i32*, i32*, i32, i32) #2

declare dso_local i8* @generate_collation_name(i64) #2

declare dso_local %struct.TYPE_30__* @GetForeignTable(i32) #2

declare dso_local %struct.TYPE_31__* @GetForeignServer(i32) #2

declare dso_local i32 @AppendOptionListToString(%struct.TYPE_27__*, i32) #2

declare dso_local i8* @GeneratePartitioningInformation(i32) #2

declare dso_local i8* @flatten_reloptions(i32) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @relation_close(%struct.TYPE_28__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
