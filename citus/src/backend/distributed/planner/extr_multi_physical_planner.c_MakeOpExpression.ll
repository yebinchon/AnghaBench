; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_MakeOpExpression.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_MakeOpExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i8 }

@BTREE_AM_OID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@TYPTYPE_PSEUDO = common dso_local global i8 0, align 1
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @MakeOpExpression(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %24 = load i64, i64* @BTREE_AM_OID, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @InvalidOid, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @InvalidOid, align 8
  store i64 %26, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store i8 0, i8* %14, align 1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.TYPE_8__* @LookupOperatorByType(i64 %27, i64 %28, i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 8
  store i8 %39, i8* %14, align 1
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %2
  %44 = load i8, i8* %14, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @TYPTYPE_PSEUDO, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = bitcast %struct.TYPE_7__* %50 to i32*
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %55 = call i64 @makeRelabelType(i32* %51, i64 %52, i32 -1, i64 %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %3, align 8
  br label %57

57:                                               ; preds = %49, %43, %2
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32* @makeNullConst(i64 %58, i64 %59, i64 %60)
  store i32* %61, i32** %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @InvalidOid, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = bitcast %struct.TYPE_7__* %64 to i32*
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* @InvalidOid, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @make_opclause(i64 %62, i64 %63, i32 0, i32* %65, i32* %66, i64 %67, i64 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @get_opcode(i64 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @get_func_rettype(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  ret %struct.TYPE_9__* %81
}

declare dso_local %struct.TYPE_8__* @LookupOperatorByType(i64, i64, i32) #1

declare dso_local i64 @makeRelabelType(i32*, i64, i32, i64, i32) #1

declare dso_local i32* @makeNullConst(i64, i64, i64) #1

declare dso_local i64 @make_opclause(i64, i64, i32, i32*, i32*, i64, i64) #1

declare dso_local i32 @get_opcode(i64) #1

declare dso_local i32 @get_func_rettype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
