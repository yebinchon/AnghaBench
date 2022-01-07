; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_UnmarkObjectDistributed.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_UnmarkObjectDistributed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@OIDOID = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"DELETE FROM citus.pg_dist_object WHERE classid = $1 AND objid = $2 AND objsubid = $3\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to delete object from citus.pg_dist_object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnmarkObjectDistributed(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 3, i32* %3, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @OIDOID, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @OIDOID, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @INT4OID, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds i32, i32* %14, i64 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds i32, i32* %19, i64 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Int32GetDatum(i32 %27)
  store i32 %28, i32* %24, align 4
  store i32 0, i32* %6, align 4
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %33 = call i32 @ExecuteCommandAsSuperuser(i8* %29, i32 %30, i32* %31, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ExecuteCommandAsSuperuser(i8*, i32, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
