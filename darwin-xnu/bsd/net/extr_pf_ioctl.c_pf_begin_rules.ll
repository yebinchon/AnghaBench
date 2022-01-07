; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_begin_rules.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_begin_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }
%struct.pf_rule = type { i32 }

@PF_RULESET_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i8*)* @pf_begin_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_begin_rules(i64* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pf_ruleset*, align 8
  %9 = alloca %struct.pf_rule*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PF_RULESET_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %80

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.pf_ruleset* @pf_find_or_create_ruleset(i8* %19)
  store %struct.pf_ruleset* %20, %struct.pf_ruleset** %8, align 8
  %21 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %22 = icmp eq %struct.pf_ruleset* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %38, %25
  %27 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %28 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.pf_rule* @TAILQ_FIRST(i32 %35)
  store %struct.pf_rule* %36, %struct.pf_rule** %9, align 8
  %37 = icmp ne %struct.pf_rule* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %26
  %39 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %40 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %49 = call i32 @pf_rm_rule(i32 %47, %struct.pf_rule* %48)
  %50 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %51 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %26

60:                                               ; preds = %26
  %61 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %62 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load i64*, i64** %5, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.pf_ruleset*, %struct.pf_ruleset** %8, align 8
  %73 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %60, %23, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.pf_ruleset* @pf_find_or_create_ruleset(i8*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i32 @pf_rm_rule(i32, %struct.pf_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
