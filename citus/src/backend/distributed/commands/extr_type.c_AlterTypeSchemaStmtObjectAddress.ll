; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_AlterTypeSchemaStmtObjectAddress.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_AlterTypeSchemaStmtObjectAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@OBJECT_TYPE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AlterTypeSchemaStmtObjectAddress(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBJECT_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @makeTypeNameFromNameList(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @LookupTypeNameOid(i32* null, i32* %25, i32 1)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @InvalidOid, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %2
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @list_tail(i32* %31)
  %33 = call i32* @lfirst(i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @makeString(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @list_make2(i32 %37, i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @makeTypeNameFromNameList(i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @LookupTypeNameOid(i32* null, i32* %42, i32 1)
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %30
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @InvalidOid, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @makeTypeNameFromNameList(i32* %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @TypeNameToString(i32* %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %50, %46, %30
  br label %65

65:                                               ; preds = %64, %2
  %66 = call i32* @palloc0(i32 4)
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TypeRelationId, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ObjectAddressSet(i32 %68, i32 %69, i64 %70)
  %72 = load i32*, i32** %5, align 8
  ret i32* %72
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @makeTypeNameFromNameList(i32*) #1

declare dso_local i64 @LookupTypeNameOid(i32*, i32*, i32) #1

declare dso_local i32* @lfirst(i32) #1

declare dso_local i32 @list_tail(i32*) #1

declare dso_local i32* @list_make2(i32, i32*) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i32* @palloc0(i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
