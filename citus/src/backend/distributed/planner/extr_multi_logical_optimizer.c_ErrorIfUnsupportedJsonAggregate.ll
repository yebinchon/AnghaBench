; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ErrorIfUnsupportedJsonAggregate.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_ErrorIfUnsupportedJsonAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@AggregateNames = common dso_local global i8** null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s with order by is unsupported\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s (distinct) is unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_3__*)* @ErrorIfUnsupportedJsonAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ErrorIfUnsupportedJsonAggregate(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i8**, i8*** @AggregateNames, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i8**, i8*** @AggregateNames, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @ereport(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
