; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_CurrentPlannerRestrictionContext.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_CurrentPlannerRestrictionContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plannerRestrictionContextList = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"planner restriction context stack was empty\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Please report this to the Citus core team.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @CurrentPlannerRestrictionContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CurrentPlannerRestrictionContext() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = load i64, i64* @plannerRestrictionContextList, align 8
  %3 = load i64, i64* @NIL, align 8
  %4 = icmp ne i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i64, i64* @plannerRestrictionContextList, align 8
  %8 = call i64 @linitial(i64 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %12, %0
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
