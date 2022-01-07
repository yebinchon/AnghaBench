; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_ConversionPathForTypes.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_ConversionPathForTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@COERCION_EXPLICIT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cannot cast %d to %d\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"can not run query which uses an implicit coercion between array types\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConversionPathForTypes(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %15 = load i64, i64* @InvalidOid, align 8
  store i64 %15, i64* %7, align 8
  store i32 128, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  br label %90

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @COERCION_EXPLICIT, align 4
  %26 = call i32 @find_coercion_pathway(i64 %23, i64 %24, i32 %25, i64* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %88 [
    i32 129, label %28
    i32 132, label %34
    i32 131, label %59
    i32 130, label %78
    i32 128, label %85
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %90

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @get_base_element_type(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @get_base_element_type(i64 %37)
  store i64 %38, i64* %10, align 8
  store i32 129, i32* %11, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @InvalidOid, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @InvalidOid, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* @COERCION_EXPLICIT, align 4
  %50 = call i32 @find_coercion_pathway(i64 %47, i64 %48, i32 %49, i64* %7)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %42, %34
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 131
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %22, %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 131, i32* %61, align 4
  store i32 0, i32* %12, align 4
  %62 = load i64, i64* @InvalidOid, align 8
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @getTypeOutputInfo(i64 %63, i64* %13, i32* %12)
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = call i32 @fmgr_info(i64 %65, i32* %67)
  %69 = load i64, i64* @InvalidOid, align 8
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = call i32 @getTypeInputInfo(i64 %70, i64* %14, i32* %72)
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = call i32 @fmgr_info(i64 %74, i32* %76)
  br label %90

78:                                               ; preds = %22
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 130, i32* %80, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = call i32 @fmgr_info(i64 %81, i32* %83)
  br label %90

85:                                               ; preds = %22
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 128, i32* %87, align 4
  br label %90

88:                                               ; preds = %22
  %89 = call i32 @Assert(i32 0)
  br label %90

90:                                               ; preds = %19, %28, %59, %78, %85, %88
  ret void
}

declare dso_local i32 @find_coercion_pathway(i64, i64, i32, i64*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @get_base_element_type(i64) #1

declare dso_local i32 @getTypeOutputInfo(i64, i64*, i32*) #1

declare dso_local i32 @fmgr_info(i64, i32*) #1

declare dso_local i32 @getTypeInputInfo(i64, i64*, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
