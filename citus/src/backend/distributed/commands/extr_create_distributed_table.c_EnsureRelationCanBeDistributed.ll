; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureRelationCanBeDistributed.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_create_distributed_table.c_EnsureRelationCanBeDistributed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cannot distribute relations using non-heap access methods\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot distribute relation: %s\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Distributed relations must not specify the WITH (OIDS) option in their definitions.\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Distributed relations must not use GENERATED ... AS IDENTITY.\00", align 1
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Distribution column must not use GENERATED ALWAYS AS (...) STORED.\00", align 1
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@HASH_AM_OID = common dso_local global i32 0, align 4
@HASHSTANDARD_PROC = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"could not identify a hash function for type %s\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"Partition column types must have a hash function defined to use hash partitioning.\00", align 1
@DISTRIBUTE_BY_RANGE = common dso_local global i8 0, align 1
@BTREE_AM_OID = common dso_local global i32 0, align 4
@BTORDER_PROC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"could not identify a comparison function for type %s\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"Partition column types must have a comparison function defined to use range partitioning.\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"cannot distribute relation \22%s\22 which is partition of \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"Citus does not support distributing partitions if their parent is not distributed table.\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Distribute the partitioned table \22%s\22 instead.\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"distributing partitioned tables in only supported with create_distributed_table UDF\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"distributing partitioned tables in only supported for hash-distributed tables\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"distributing multi-level partitioned tables is not supported\00", align 1
@.str.15 = private unnamed_addr constant [85 x i8] c"Relation \22%s\22 is partitioned table itself and it is also partition of relation \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_10__*, i8, i32, i8, i32)* @EnsureRelationCanBeDistributed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EnsureRelationCanBeDistributed(i64 %0, %struct.TYPE_10__* %1, i8 signext %2, i32 %3, i8 signext %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  store i8* null, i8** %15, align 8
  %21 = load i64, i64* @InvalidOid, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @EnsureTableNotDistributed(i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i8, i8* %9, align 1
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @EnsureLocalTableEmptyIfNecessary(i64 %24, i8 signext %25, i32 %26)
  %28 = load i64, i64* @InvalidOid, align 8
  %29 = load i8, i8* %11, align 1
  %30 = call i32 @EnsureReplicationSettings(i64 %28, i8 signext %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @NoLock, align 4
  %33 = call i32* @relation_open(i64 %31, i32 %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call %struct.TYPE_11__* @RelationGetDescr(i32* %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %14, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i8* @RelationGetRelationName(i32* %36)
  store i8* %37, i8** %15, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @RelationUsesHeapAccessMethodOrNone(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ereport(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %6
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = call i64 @RelationUsesIdentityColumns(%struct.TYPE_11__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @ereport(i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load i8, i8* %9, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = call i64 @DistributionColumnUsesGeneratedStoredColumn(%struct.TYPE_11__* %77, %struct.TYPE_10__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %81, %76, %70
  %90 = load i8, i8* %9, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = load i32, i32* @HASH_AM_OID, align 4
  %98 = load i32, i32* @HASHSTANDARD_PROC, align 4
  %99 = call i64 @SupportFunctionForColumn(%struct.TYPE_10__* %96, i32 %97, i32 %98)
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* @InvalidOid, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %95
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %106 = call i32 @errcode(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @format_type_be(i32 %109)
  %111 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @errdatatype(i32 %114)
  %116 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0))
  %117 = call i32 @ereport(i32 %104, i32 %116)
  br label %118

118:                                              ; preds = %103, %95
  br label %150

119:                                              ; preds = %89
  %120 = load i8, i8* %9, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @DISTRIBUTE_BY_RANGE, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %119
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = load i32, i32* @BTREE_AM_OID, align 4
  %128 = load i32, i32* @BTORDER_PROC, align 4
  %129 = call i64 @SupportFunctionForColumn(%struct.TYPE_10__* %126, i32 %127, i32 %128)
  store i64 %129, i64* %18, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* @InvalidOid, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %125
  %134 = load i32, i32* @ERROR, align 4
  %135 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %136 = call i32 @errcode(i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @format_type_be(i32 %139)
  %141 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @errdatatype(i32 %144)
  %146 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0))
  %147 = call i32 @ereport(i32 %134, i32 %146)
  br label %148

148:                                              ; preds = %133, %125
  br label %149

149:                                              ; preds = %148, %119
  br label %150

150:                                              ; preds = %149, %118
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @PartitionTable(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i64, i64* %7, align 8
  %156 = call i64 @PartitionParentOid(i64 %155)
  store i64 %156, i64* %16, align 8
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i64, i64* %7, align 8
  %159 = call i64 @PartitionTable(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i64, i64* %16, align 8
  %163 = call i32 @IsDistributedTable(i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %16, align 8
  %167 = call i8* @get_rel_name(i64 %166)
  store i8* %167, i8** %19, align 8
  %168 = load i32, i32* @ERROR, align 4
  %169 = load i8*, i8** %15, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i8* %169, i8* %170)
  %172 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0))
  %173 = load i8*, i8** %19, align 8
  %174 = call i32 @errhint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %173)
  %175 = call i32 @ereport(i32 %168, i32 %174)
  br label %176

176:                                              ; preds = %165, %161, %157
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @PartitionedTable(i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %217

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* @ERROR, align 4
  %185 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %186 = call i32 @errcode(i32 %185)
  %187 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i64 0, i64 0))
  %188 = call i32 @ereport(i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %183, %180
  %190 = load i8, i8* %9, align 1
  %191 = sext i8 %190 to i32
  %192 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i32, i32* @ERROR, align 4
  %197 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %198 = call i32 @errcode(i32 %197)
  %199 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0))
  %200 = call i32 @ereport(i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %195, %189
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @PartitionTable(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load i64, i64* %16, align 8
  %207 = call i8* @get_rel_name(i64 %206)
  store i8* %207, i8** %20, align 8
  %208 = load i32, i32* @ERROR, align 4
  %209 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %210 = call i32 @errcode(i32 %209)
  %211 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %212 = load i8*, i8** %15, align 8
  %213 = load i8*, i8** %20, align 8
  %214 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.15, i64 0, i64 0), i8* %212, i8* %213)
  %215 = call i32 @ereport(i32 %208, i32 %214)
  br label %216

216:                                              ; preds = %205, %201
  br label %217

217:                                              ; preds = %216, %176
  %218 = load i32*, i32** %13, align 8
  %219 = load i8, i8* %9, align 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @ErrorIfUnsupportedConstraint(i32* %218, i8 signext %219, %struct.TYPE_10__* %220, i32 %221)
  %223 = load i32*, i32** %13, align 8
  %224 = call i32 @ErrorIfUnsupportedPolicy(i32* %223)
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* @NoLock, align 4
  %227 = call i32 @relation_close(i32* %225, i32 %226)
  ret void
}

declare dso_local i32 @EnsureTableNotDistributed(i64) #1

declare dso_local i32 @EnsureLocalTableEmptyIfNecessary(i64, i8 signext, i32) #1

declare dso_local i32 @EnsureReplicationSettings(i64, i8 signext) #1

declare dso_local i32* @relation_open(i64, i32) #1

declare dso_local %struct.TYPE_11__* @RelationGetDescr(i32*) #1

declare dso_local i8* @RelationGetRelationName(i32*) #1

declare dso_local i32 @RelationUsesHeapAccessMethodOrNone(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i64 @RelationUsesIdentityColumns(%struct.TYPE_11__*) #1

declare dso_local i64 @DistributionColumnUsesGeneratedStoredColumn(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @SupportFunctionForColumn(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @errdatatype(i32) #1

declare dso_local i64 @PartitionTable(i64) #1

declare dso_local i64 @PartitionParentOid(i64) #1

declare dso_local i32 @IsDistributedTable(i64) #1

declare dso_local i8* @get_rel_name(i64) #1

declare dso_local i32 @errhint(i8*, i8*) #1

declare dso_local i64 @PartitionedTable(i64) #1

declare dso_local i32 @ErrorIfUnsupportedConstraint(i32*, i8 signext, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ErrorIfUnsupportedPolicy(i32*) #1

declare dso_local i32 @relation_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
