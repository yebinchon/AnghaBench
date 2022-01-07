; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ErrorIfUnsupportedForeignConstraintExists.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ErrorIfUnsupportedForeignConstraintExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@ShardReplicationFactor = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot create foreign key constraint\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Referenced table must be a distributed table or a reference table.\00", align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [118 x i8] c"cannot create foreign key constraint since foreign keys from reference tables to distributed tables are not supported\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"A reference table can only have reference keys to other reference tables\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"cannot create foreign key constraint since relations are not colocated or not referencing a reference table\00", align 1
@.str.5 = private unnamed_addr constant [130 x i8] c"A distributed table can only have foreign keys if it is referencing another colocated hash distributed table or a reference table\00", align 1
@FKCONSTR_ACTION_SETNULL = common dso_local global i64 0, align 8
@FKCONSTR_ACTION_SETDEFAULT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [128 x i8] c"SET NULL or SET DEFAULT is not supported in ON DELETE operation when distribution key is included in the foreign key constraint\00", align 1
@FKCONSTR_ACTION_CASCADE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [132 x i8] c"SET NULL, SET DEFAULT or CASCADE is not supported in ON UPDATE operation  when distribution key included in the foreign constraint.\00", align 1
@.str.8 = private unnamed_addr constant [186 x i8] c"Foreign keys are supported in two cases, either in between two colocated tables including partition column in the same ordinal in the both tables or from distributed to reference tables\00", align 1
@.str.9 = private unnamed_addr constant [114 x i8] c"Citus Community Edition currently supports foreign key constraints only for \22citus.shard_replication_factor = 1\22.\00", align 1
@.str.10 = private unnamed_addr constant [185 x i8] c"Please change \22citus.shard_replication_factor to 1\22. To learn more about using foreign keys with other replication factors, please contact us at https://citusdata.com/about/contact_us.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ErrorIfUnsupportedForeignConstraintExists(%struct.TYPE_7__* %0, i8 signext %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 1, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @InvalidOid, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  store i64 %33, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @IsDistributedTable(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @SingleReplicatedTable(i32 %38)
  store i32 %39, i32* %18, align 4
  br label %44

40:                                               ; preds = %4
  %41 = load i32, i32* @ShardReplicationFactor, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @ConstraintRelationId, align 4
  %46 = load i32, i32* @AccessShareLock, align 4
  %47 = call %struct.TYPE_7__* @heap_open(i32 %45, i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %49 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %50 = load i32, i32* @BTEqualStrategyNumber, align 4
  %51 = load i32, i32* @F_OIDEQ, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ScanKeyInit(i32* %48, i32 %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %58 = load i32, i32* %12, align 4
  %59 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %60 = call i32* @systable_beginscan(%struct.TYPE_7__* %56, i32 %57, i32 1, i32* null, i32 %58, i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32* @systable_getnext(i32* %61)
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %265, %143, %77, %44
  %64 = load i32*, i32** %13, align 8
  %65 = call i64 @HeapTupleIsValid(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %268

67:                                               ; preds = %63
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @GETSTRUCT(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %19, align 8
  store i32 0, i32* %20, align 4
  store i8 0, i8* %21, align 1
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @systable_getnext(i32* %78)
  store i32* %79, i32** %13, align 8
  br label %63

80:                                               ; preds = %67
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @IsDistributedTable(i32 %88)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %100 = call i32 @errdetail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %101 = call i32 @ereport(i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %95, %92, %80
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = call signext i8 @PartitionMethod(i32 %106)
  store i8 %107, i8* %21, align 1
  %108 = load i8, i8* %21, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %15, align 4
  %116 = call i32* @DistPartitionKey(i32 %115)
  br label %117

117:                                              ; preds = %114, %113
  %118 = phi i32* [ null, %113 ], [ %116, %114 ]
  store i32* %118, i32** %22, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @TableColocationId(i32 %119)
  store i64 %120, i64* %16, align 8
  br label %125

121:                                              ; preds = %102
  %122 = load i8, i8* %6, align 1
  store i8 %122, i8* %21, align 1
  %123 = load i32*, i32** %7, align 8
  store i32* %123, i32** %22, align 8
  %124 = load i64, i64* %8, align 8
  store i64 %124, i64* %16, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i8, i8* %6, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %23, align 4
  %132 = load i8, i8* %21, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %23, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  %141 = load i32, i32* %24, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32*, i32** %10, align 8
  %145 = call i32* @systable_getnext(i32* %144)
  store i32* %145, i32** %13, align 8
  br label %63

146:                                              ; preds = %140, %125
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = call i32 @errmsg(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0))
  %157 = call i32 @errdetail(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %158 = call i32 @ereport(i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %152, %149, %146
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load i32, i32* %24, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %167, %159
  %171 = load i32, i32* @ERROR, align 4
  %172 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %173 = call i32 @errcode(i32 %172)
  %174 = call i32 @errmsg(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0))
  %175 = call i32 @errdetail(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.5, i64 0, i64 0))
  %176 = call i32 @ereport(i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %170, %167, %163
  %178 = load i32*, i32** %13, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = load i32*, i32** %22, align 8
  %181 = call i32 @ForeignConstraintFindDistKeys(i32* %178, i32* %179, i32* %180, i32* %25, i32* %26)
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, -1
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %27, align 4
  %185 = load i32, i32* %27, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* %26, align 4
  %190 = icmp eq i32 %188, %189
  br label %191

191:                                              ; preds = %187, %177
  %192 = phi i1 [ false, %177 ], [ %190, %187 ]
  %193 = zext i1 %192 to i32
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %27, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %241

196:                                              ; preds = %191
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @FKCONSTR_ACTION_SETNULL, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @FKCONSTR_ACTION_SETDEFAULT, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %202, %196
  %209 = load i32, i32* @ERROR, align 4
  %210 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %211 = call i32 @errcode(i32 %210)
  %212 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %213 = call i32 @errdetail(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.6, i64 0, i64 0))
  %214 = call i32 @ereport(i32 %209, i32 %213)
  br label %215

215:                                              ; preds = %208, %202
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @FKCONSTR_ACTION_SETNULL, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @FKCONSTR_ACTION_SETDEFAULT, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @FKCONSTR_ACTION_CASCADE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %227, %221, %215
  %234 = load i32, i32* @ERROR, align 4
  %235 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %236 = call i32 @errcode(i32 %235)
  %237 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %238 = call i32 @errdetail(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.7, i64 0, i64 0))
  %239 = call i32 @ereport(i32 %234, i32 %238)
  br label %240

240:                                              ; preds = %233, %227
  br label %241

241:                                              ; preds = %240, %191
  %242 = load i32, i32* %24, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %241
  %245 = load i32, i32* %28, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @ERROR, align 4
  %249 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %250 = call i32 @errcode(i32 %249)
  %251 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %252 = call i32 @errdetail(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.8, i64 0, i64 0))
  %253 = call i32 @ereport(i32 %248, i32 %252)
  br label %254

254:                                              ; preds = %247, %244, %241
  %255 = load i32, i32* %18, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* @ERROR, align 4
  %259 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %260 = call i32 @errcode(i32 %259)
  %261 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %262 = call i32 @errdetail(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.9, i64 0, i64 0))
  %263 = call i32 @errhint(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.10, i64 0, i64 0))
  %264 = call i32 @ereport(i32 %258, i32 %263)
  br label %265

265:                                              ; preds = %257, %254
  %266 = load i32*, i32** %10, align 8
  %267 = call i32* @systable_getnext(i32* %266)
  store i32* %267, i32** %13, align 8
  br label %63

268:                                              ; preds = %63
  %269 = load i32*, i32** %10, align 8
  %270 = call i32 @systable_endscan(i32* %269)
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %272 = load i32, i32* @AccessShareLock, align 4
  %273 = call i32 @heap_close(%struct.TYPE_7__* %271, i32 %272)
  ret void
}

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i32 @SingleReplicatedTable(i32) #1

declare dso_local %struct.TYPE_7__* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @systable_beginscan(%struct.TYPE_7__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i32* @DistPartitionKey(i32) #1

declare dso_local i64 @TableColocationId(i32) #1

declare dso_local i32 @ForeignConstraintFindDistKeys(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
