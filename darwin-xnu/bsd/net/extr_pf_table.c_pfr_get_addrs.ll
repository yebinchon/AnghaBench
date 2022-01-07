; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_get_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_get_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)* }
%struct.pfr_walktree = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)* }

@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFRW_GET_ADDRS = common dso_local global i32 0, align 4
@pfr_walktree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pfr_get_addrs: corruption detected (%d).\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_get_addrs(%struct.pfr_table* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_ktable*, align 8
  %11 = alloca %struct.pfr_walktree, align 4
  %12 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @ACCEPT_FLAGS(i32 %13, i32 0)
  %15 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %16 = call i64 @pfr_validate_table(%struct.pfr_table* %15, i32 0, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %100

20:                                               ; preds = %4
  %21 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %22 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %21)
  store %struct.pfr_ktable* %22, %struct.pfr_ktable** %10, align 8
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %24 = icmp eq %struct.pfr_ktable* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %27 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* @ESRCH, align 4
  store i32 %33, i32* %5, align 4
  br label %100

34:                                               ; preds = %25
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %36 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %100

46:                                               ; preds = %34
  %47 = call i32 @bzero(%struct.pfr_walktree* %11, i32 16)
  %48 = load i32, i32* @PFRW_GET_ADDRS, align 4
  %49 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %59 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_4__*, i32, %struct.pfr_walktree*)** %61, align 8
  %63 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %64 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* @pfr_walktree, align 4
  %67 = call i32 %62(%struct.TYPE_4__* %65, i32 %66, %struct.pfr_walktree* %11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %46
  %71 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %72 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)*, i32 (%struct.TYPE_3__*, i32, %struct.pfr_walktree*)** %74, align 8
  %76 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %77 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* @pfr_walktree, align 4
  %80 = call i32 %75(%struct.TYPE_3__* %78, i32 %79, %struct.pfr_walktree* %11)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %70, %46
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %100

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENOTTY, align 4
  store i32 %94, i32* %5, align 4
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.pfr_ktable*, %struct.pfr_ktable** %10, align 8
  %97 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %90, %84, %41, %32, %18
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @bzero(%struct.pfr_walktree*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
