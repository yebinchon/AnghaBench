; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_EnumValsList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_EnumValsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@Anum_pg_enum_enumtypid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@EnumRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@EnumTypIdSortOrderIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @EnumValsList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @EnumValsList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @Anum_pg_enum_enumtypid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(%struct.TYPE_5__* %6, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = load i32, i32* @EnumRelationId, align 4
  %18 = load i32, i32* @AccessShareLock, align 4
  %19 = call i32* @heap_open(i32 %17, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @EnumTypIdSortOrderIndexId, align 4
  %22 = call i32* @systable_beginscan(i32* %20, i32 %21, i32 1, i32* null, i32 1, %struct.TYPE_5__* %6)
  store i32* %22, i32** %4, align 8
  br label %23

23:                                               ; preds = %28, %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @systable_getnext(i32* %24)
  store i32* %25, i32** %5, align 8
  %26 = call i64 @HeapTupleIsValid(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @GETSTRUCT(i32* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @NameStr(i32 %36)
  %38 = call i32 @pstrdup(i32 %37)
  %39 = call i32 @makeString(i32 %38)
  %40 = call i32* @lappend(i32* %33, i32 %39)
  store i32* %40, i32** %7, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @systable_endscan(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @AccessShareLock, align 4
  %46 = call i32 @heap_close(i32* %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  ret i32* %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ScanKeyInit(%struct.TYPE_5__*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32* @heap_open(i32, i32) #2

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, %struct.TYPE_5__*) #2

declare dso_local i64 @HeapTupleIsValid(i32*) #2

declare dso_local i32* @systable_getnext(i32*) #2

declare dso_local i32 @GETSTRUCT(i32*) #2

declare dso_local i32* @lappend(i32*, i32) #2

declare dso_local i32 @makeString(i32) #2

declare dso_local i32 @pstrdup(i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @systable_endscan(i32*) #2

declare dso_local i32 @heap_close(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
