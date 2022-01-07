; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_attach_table.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_attach_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, i32*, %struct.pfr_ktable* }
%struct.pf_ruleset = type { %struct.pf_anchor* }
%struct.pf_anchor = type { i8* }
%struct.pfr_table = type { %struct.pfr_table*, %struct.pfr_table* }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFR_REFCNT_RULE = common dso_local global i64 0, align 8
@PFR_TFLAG_REFERENCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pfr_ktable* @pfr_attach_table(%struct.pf_ruleset* %0, i8* %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca %struct.pf_ruleset*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfr_ktable*, align 8
  %7 = alloca %struct.pfr_ktable*, align 8
  %8 = alloca %struct.pfr_table, align 8
  %9 = alloca %struct.pf_anchor*, align 8
  store %struct.pf_ruleset* %0, %struct.pf_ruleset** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pf_ruleset*, %struct.pf_ruleset** %4, align 8
  %11 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %10, i32 0, i32 0
  %12 = load %struct.pf_anchor*, %struct.pf_anchor** %11, align 8
  store %struct.pf_anchor* %12, %struct.pf_anchor** %9, align 8
  %13 = load i32, i32* @pf_lock, align 4
  %14 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32 %13, i32 %14)
  %16 = call i32 @bzero(%struct.pfr_table* %8, i32 16)
  %17 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 1
  %18 = load %struct.pfr_table*, %struct.pfr_table** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlcpy(%struct.pfr_table* %18, i8* %19, i32 8)
  %21 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %22 = icmp ne %struct.pf_anchor* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 0
  %25 = load %struct.pfr_table*, %struct.pfr_table** %24, align 8
  %26 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %27 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlcpy(%struct.pfr_table* %25, i8* %28, i32 8)
  br label %30

30:                                               ; preds = %23, %2
  %31 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %8)
  store %struct.pfr_ktable* %31, %struct.pfr_ktable** %6, align 8
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %33 = icmp eq %struct.pfr_ktable* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = call i32 (...) @pf_calendar_time_second()
  %36 = call %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table* %8, i32 %35, i32 1)
  store %struct.pfr_ktable* %36, %struct.pfr_ktable** %6, align 8
  %37 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %38 = icmp eq %struct.pfr_ktable* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %3, align 8
  br label %86

40:                                               ; preds = %34
  %41 = load %struct.pf_anchor*, %struct.pf_anchor** %9, align 8
  %42 = icmp ne %struct.pf_anchor* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %8, i32 0, i32 0
  %45 = load %struct.pfr_table*, %struct.pfr_table** %44, align 8
  %46 = call i32 @bzero(%struct.pfr_table* %45, i32 8)
  %47 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %8)
  store %struct.pfr_ktable* %47, %struct.pfr_ktable** %7, align 8
  %48 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %49 = icmp eq %struct.pfr_ktable* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = call %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table* %8, i32 0, i32 1)
  store %struct.pfr_ktable* %51, %struct.pfr_ktable** %7, align 8
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %53 = icmp eq %struct.pfr_ktable* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %56 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %55, i32 0)
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %3, align 8
  br label %86

57:                                               ; preds = %50
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %59 = call i32 @pfr_insert_ktable(%struct.pfr_ktable* %58)
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.pfr_ktable*, %struct.pfr_ktable** %7, align 8
  %62 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %63 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %62, i32 0, i32 2
  store %struct.pfr_ktable* %61, %struct.pfr_ktable** %63, align 8
  br label %64

64:                                               ; preds = %60, %40
  %65 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %66 = call i32 @pfr_insert_ktable(%struct.pfr_ktable* %65)
  br label %67

67:                                               ; preds = %64, %30
  %68 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %69 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @PFR_REFCNT_RULE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %78 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  %79 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PFR_TFLAG_REFERENCED, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @pfr_setflags_ktable(%struct.pfr_ktable* %77, i32 %82)
  br label %84

84:                                               ; preds = %76, %67
  %85 = load %struct.pfr_ktable*, %struct.pfr_ktable** %6, align 8
  store %struct.pfr_ktable* %85, %struct.pfr_ktable** %3, align 8
  br label %86

86:                                               ; preds = %84, %54, %39
  %87 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  ret %struct.pfr_ktable* %87
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @bzero(%struct.pfr_table*, i32) #1

declare dso_local i32 @strlcpy(%struct.pfr_table*, i8*, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local %struct.pfr_ktable* @pfr_create_ktable(%struct.pfr_table*, i32, i32) #1

declare dso_local i32 @pf_calendar_time_second(...) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_insert_ktable(%struct.pfr_ktable*) #1

declare dso_local i32 @pfr_setflags_ktable(%struct.pfr_ktable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
