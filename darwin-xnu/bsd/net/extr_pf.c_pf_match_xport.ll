; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_match_xport.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_match_xport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pf_rule_xport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%union.pf_state_xport = type { i32 }

@PF_GRE_PPTP_VARIANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_match_xport(i32 %0, i32 %1, %union.pf_rule_xport* %2, %union.pf_state_xport* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.pf_rule_xport*, align 8
  %8 = alloca %union.pf_state_xport*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %union.pf_rule_xport* %2, %union.pf_rule_xport** %7, align 8
  store %union.pf_state_xport* %3, %union.pf_state_xport** %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load %union.pf_state_xport*, %union.pf_state_xport** %8, align 8
  %11 = icmp ne %union.pf_state_xport* %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %65 [
    i32 132, label %14
    i32 133, label %28
    i32 129, label %37
    i32 128, label %37
    i32 131, label %37
    i32 130, label %37
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PF_GRE_PPTP_VARIANT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %20 = bitcast %union.pf_rule_xport* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = load %union.pf_state_xport*, %union.pf_state_xport** %8, align 8
  %23 = bitcast %union.pf_state_xport* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %18, %14
  br label %66

28:                                               ; preds = %12
  %29 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %30 = bitcast %union.pf_rule_xport* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load %union.pf_state_xport*, %union.pf_state_xport** %8, align 8
  %33 = bitcast %union.pf_state_xport* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %66

37:                                               ; preds = %12, %12, %12, %12
  %38 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %39 = bitcast %union.pf_rule_xport* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %45 = bitcast %union.pf_rule_xport* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %49 = bitcast %union.pf_rule_xport* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %union.pf_rule_xport*, %union.pf_rule_xport** %7, align 8
  %55 = bitcast %union.pf_rule_xport* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %union.pf_state_xport*, %union.pf_state_xport** %8, align 8
  %61 = bitcast %union.pf_state_xport* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pf_match_port(i32 %47, i32 %53, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %43, %37
  br label %66

65:                                               ; preds = %12
  br label %66

66:                                               ; preds = %65, %64, %28, %27
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @pf_match_port(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
