; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_RangeVarCallbackForDropIndex.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_index.c_RangeVarCallbackForDropIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.DropRelationCallbackState = type { i8, i64, i64 }
%struct.TYPE_6__ = type { i8, i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_INDEX = common dso_local global i8 0, align 1
@InvalidOid = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"\22%s\22 is not an index\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_INDEX = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64, i8*)* @RangeVarCallbackForDropIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForDropIndex(%struct.TYPE_5__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.DropRelationCallbackState*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.DropRelationCallbackState*
  store %struct.DropRelationCallbackState* %16, %struct.DropRelationCallbackState** %10, align 8
  %17 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %18 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 8
  store i8 %19, i8* %11, align 1
  %20 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %21 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @AccessExclusiveLock, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %14, align 4
  %30 = load i8, i8* %11, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @RELKIND_INDEX, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %28
  %41 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %42 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @OidIsValid(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %48 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @UnlockRelationOid(i64 %49, i32 %50)
  %52 = load i64, i64* @InvalidOid, align 8
  %53 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %54 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %40, %28
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @OidIsValid(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %163

60:                                               ; preds = %55
  %61 = load i32, i32* @RELOID, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @ObjectIdGetDatum(i64 %62)
  %64 = call i32 @SearchSysCache1(i32 %61, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @HeapTupleIsValid(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %163

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @GETSTRUCT(i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %13, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 4
  store i8 %75, i8* %12, align 1
  %76 = load i8, i8* %12, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i8, i8* @RELKIND_INDEX, align 1
  store i8 %82, i8* %12, align 1
  br label %83

83:                                               ; preds = %81, %69
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* %11, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = call i32 @ereport(i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %89, %83
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (...) @GetUserId()
  %101 = call i32 @pg_class_ownercheck(i64 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (...) @GetUserId()
  %108 = call i32 @pg_namespace_ownercheck(i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %112 = load i32, i32* @OBJECT_INDEX, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @aclcheck_error(i32 %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %110, %103, %98
  %118 = load i32, i32* @allowSystemTableMods, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %123 = call i64 @IsSystemClass(i64 %121, %struct.TYPE_6__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32, i32* @ERROR, align 4
  %127 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %128 = call i32 @errcode(i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = call i32 @ereport(i32 %126, i32 %132)
  br label %134

134:                                              ; preds = %125, %120, %117
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @ReleaseSysCache(i32 %135)
  %137 = load i8, i8* %11, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* @RELKIND_INDEX, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %134
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i64, i64* %6, align 8
  %148 = call i64 @IndexGetRelation(i64 %147, i32 1)
  %149 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %150 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %152 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @OidIsValid(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %158 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @LockRelationOid(i64 %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %146
  br label %163

163:                                              ; preds = %59, %68, %162, %142, %134
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @pg_namespace_ownercheck(i32, i32) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i64 @IsSystemClass(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
