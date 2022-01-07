; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_ruleset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_ruleset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { i32 }
%struct.pf_anchor = type { %struct.pf_ruleset }

@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_ruleset* @pf_find_ruleset(i8* %0) #0 {
  %2 = alloca %struct.pf_ruleset*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pf_anchor*, align 8
  store i8* %0, i8** %3, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %3, align 8
  br label %5

13:                                               ; preds = %5
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store %struct.pf_ruleset* @pf_main_ruleset, %struct.pf_ruleset** %2, align 8
  br label %27

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call %struct.pf_anchor* @pf_find_anchor(i8* %19)
  store %struct.pf_anchor* %20, %struct.pf_anchor** %4, align 8
  %21 = load %struct.pf_anchor*, %struct.pf_anchor** %4, align 8
  %22 = icmp eq %struct.pf_anchor* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.pf_ruleset* null, %struct.pf_ruleset** %2, align 8
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.pf_anchor*, %struct.pf_anchor** %4, align 8
  %26 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %25, i32 0, i32 0
  store %struct.pf_ruleset* %26, %struct.pf_ruleset** %2, align 8
  br label %27

27:                                               ; preds = %24, %23, %17
  %28 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  ret %struct.pf_ruleset* %28
}

declare dso_local %struct.pf_anchor* @pf_find_anchor(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
