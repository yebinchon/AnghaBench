; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_RecoverWorkerTransactions.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_transaction_recovery.c_RecoverWorkerTransactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@NIL = common dso_local global i32* null, align 8
@CONNECTION_OK = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"transaction recovery cannot connect to %s:%d\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RecoverWorkerTransactions\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@Anum_pg_dist_transaction_groupid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_pg_dist_transaction_gid = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @RecoverWorkerTransactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecoverWorkerTransactions(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %4, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** @NIL, align 8
  store i32* %48, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %49 = load i32*, i32** @NIL, align 8
  store i32* %49, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %50 = load i32*, i32** @NIL, align 8
  store i32* %50, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %51 = load i32, i32* %25, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.TYPE_12__* @GetNodeConnection(i32 %51, i8* %52, i32 %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %26, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @PQstatus(i32* %62)
  %64 = load i64, i64* @CONNECTION_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59, %1
  %67 = load i32, i32* @WARNING, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %69)
  %71 = call i32 @ereport(i32 %67, i32 %70)
  store i32 0, i32* %2, align 4
  br label %205

72:                                               ; preds = %59
  %73 = load i32, i32* @CurrentMemoryContext, align 4
  %74 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %75 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %76 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %77 = call i32* @AllocSetContextCreateExtended(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  store i32* %77, i32** %22, align 8
  %78 = load i32*, i32** %22, align 8
  %79 = call i32* @MemoryContextSwitchTo(i32* %78)
  store i32* %79, i32** %23, align 8
  %80 = call i32 (...) @DistTransactionRelationId()
  %81 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %82 = call i32* @heap_open(i32 %80, i32 %81)
  store i32* %82, i32** %14, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = call i32* @RelationGetDescr(i32* %83)
  store i32* %84, i32** %20, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %86 = call i32* @PendingWorkerTransactionList(%struct.TYPE_12__* %85)
  store i32* %86, i32** %10, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @NAMEDATALEN, align 4
  %89 = call i32* @ListToHashSet(i32* %87, i32 %88, i32 1)
  store i32* %89, i32** %11, align 8
  %90 = call i32* (...) @ActiveDistributedTransactionNumbers()
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32* @ListToHashSet(i32* %91, i32 4, i32 0)
  store i32* %92, i32** %9, align 8
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %94 = load i32, i32* @Anum_pg_dist_transaction_groupid, align 4
  %95 = load i32, i32* @BTEqualStrategyNumber, align 4
  %96 = load i32, i32* @F_INT4EQ, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @Int32GetDatum(i32 %97)
  %99 = call i32 @ScanKeyInit(i32* %93, i32 %94, i32 %95, i32 %96, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 (...) @DistTransactionGroupIndexId()
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %17, align 4
  %104 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %105 = call i32* @systable_beginscan(i32* %100, i32 %101, i32 %102, i32* null, i32 %103, i32* %104)
  store i32* %105, i32** %15, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %107 = call i32* @PendingWorkerTransactionList(%struct.TYPE_12__* %106)
  store i32* %107, i32** %12, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* @NAMEDATALEN, align 4
  %110 = call i32* @ListToHashSet(i32* %108, i32 %109, i32 1)
  store i32* %110, i32** %13, align 8
  br label %111

111:                                              ; preds = %160, %157, %128, %72
  %112 = load i32*, i32** %15, align 8
  %113 = call %struct.TYPE_13__* @systable_getnext(i32* %112)
  store %struct.TYPE_13__* %113, %struct.TYPE_13__** %19, align 8
  %114 = call i64 @HeapTupleIsValid(%struct.TYPE_13__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %165

116:                                              ; preds = %111
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %118 = load i32, i32* @Anum_pg_dist_transaction_gid, align 4
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @heap_getattr(%struct.TYPE_13__* %117, i32 %118, i32* %119, i32* %27)
  store i32 %120, i32* %31, align 4
  %121 = load i32, i32* %31, align 4
  %122 = call i8* @TextDatumGetCString(i32 %121)
  store i8* %122, i8** %32, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i8*, i8** %32, align 8
  %125 = call i32 @IsTransactionInProgress(i32* %123, i8* %124)
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %28, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %111

129:                                              ; preds = %116
  %130 = load i32*, i32** %11, align 8
  %131 = load i8*, i8** %32, align 8
  %132 = load i32, i32* @HASH_REMOVE, align 4
  %133 = call i32 @hash_search(i32* %130, i8* %131, i32 %132, i32* %29)
  %134 = load i32*, i32** %13, align 8
  %135 = load i8*, i8** %32, align 8
  %136 = load i32, i32* @HASH_FIND, align 4
  %137 = call i32 @hash_search(i32* %134, i8* %135, i32 %136, i32* %30)
  %138 = load i32, i32* %29, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %129
  %141 = load i32, i32* %30, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  store i32 1, i32* %33, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %145 = load i8*, i8** %32, align 8
  %146 = load i32, i32* %33, align 4
  %147 = call i32 @RecoverPreparedTransactionOnWorker(%struct.TYPE_12__* %144, i8* %145, i32 %146)
  store i32 %147, i32* %34, align 4
  %148 = load i32, i32* %34, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  store i32 1, i32* %24, align 4
  br label %165

151:                                              ; preds = %143
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %160

154:                                              ; preds = %140, %129
  %155 = load i32, i32* %30, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %111

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159, %151
  %161 = load i32*, i32** %14, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = call i32 @simple_heap_delete(i32* %161, i32* %163)
  br label %111

165:                                              ; preds = %150, %111
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @systable_endscan(i32* %166)
  %168 = load i32*, i32** %14, align 8
  %169 = load i32, i32* @NoLock, align 4
  %170 = call i32 @heap_close(i32* %168, i32 %169)
  %171 = load i32, i32* %24, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %199, label %173

173:                                              ; preds = %165
  store i8* null, i8** %35, align 8
  store i32 1, i32* %36, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @hash_seq_init(i32* %21, i32* %174)
  br label %176

176:                                              ; preds = %195, %185, %173
  %177 = call i8* @hash_seq_search(i32* %21)
  store i8* %177, i8** %35, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %198

179:                                              ; preds = %176
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i8*, i8** %35, align 8
  %182 = call i32 @IsTransactionInProgress(i32* %180, i8* %181)
  store i32 %182, i32* %37, align 4
  %183 = load i32, i32* %37, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %176

186:                                              ; preds = %179
  store i32 0, i32* %38, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %188 = load i8*, i8** %35, align 8
  %189 = load i32, i32* %38, align 4
  %190 = call i32 @RecoverPreparedTransactionOnWorker(%struct.TYPE_12__* %187, i8* %188, i32 %189)
  store i32 %190, i32* %36, align 4
  %191 = load i32, i32* %36, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = call i32 @hash_seq_term(i32* %21)
  br label %198

195:                                              ; preds = %186
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %176

198:                                              ; preds = %193, %176
  br label %199

199:                                              ; preds = %198, %165
  %200 = load i32*, i32** %23, align 8
  %201 = call i32* @MemoryContextSwitchTo(i32* %200)
  %202 = load i32*, i32** %22, align 8
  %203 = call i32 @MemoryContextDelete(i32* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %199, %66
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_12__* @GetNodeConnection(i32, i8*, i32) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32* @AllocSetContextCreateExtended(i32, i8*, i32, i32, i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistTransactionRelationId(...) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32* @PendingWorkerTransactionList(%struct.TYPE_12__*) #1

declare dso_local i32* @ListToHashSet(i32*, i32, i32) #1

declare dso_local i32* @ActiveDistributedTransactionNumbers(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistTransactionGroupIndexId(...) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @systable_getnext(i32*) #1

declare dso_local i32 @heap_getattr(%struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @IsTransactionInProgress(i32*, i8*) #1

declare dso_local i32 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @RecoverPreparedTransactionOnWorker(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @simple_heap_delete(i32*, i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i8* @hash_seq_search(i32*) #1

declare dso_local i32 @hash_seq_term(i32*) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
