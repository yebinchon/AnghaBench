; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_rm_rule.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_rm_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rulequeue = type { i32 }
%struct.pf_rule = type { i64, i32, i64, %struct.TYPE_8__, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@entries = common dso_local global i32 0, align 4
@PFI_KIF_REF_RULE = common dso_local global i32 0, align 4
@pf_rule_pl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_rm_rule(%struct.pf_rulequeue* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca %struct.pf_rulequeue*, align 8
  %4 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rulequeue* %0, %struct.pf_rulequeue** %3, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %4, align 8
  %5 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %3, align 8
  %6 = icmp ne %struct.pf_rulequeue* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %9 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %14 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @pf_tbladdr_remove(i32* %15)
  %17 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %18 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @pf_tbladdr_remove(i32* %19)
  %21 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %22 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %27 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pfr_detach_table(i64 %28)
  br label %30

30:                                               ; preds = %25, %12
  br label %31

31:                                               ; preds = %30, %7
  %32 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %3, align 8
  %33 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %34 = load i32, i32* @entries, align 4
  %35 = call i32 @TAILQ_REMOVE(%struct.pf_rulequeue* %32, %struct.pf_rule* %33, i32 %34)
  %36 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %37 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %36, i32 0, i32 10
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %40 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %43 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %48 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %53 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %46, %41
  br label %118

58:                                               ; preds = %51
  %59 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %60 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pf_tag_unref(i32 %61)
  %63 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %64 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pf_tag_unref(i32 %65)
  %67 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %68 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @pf_rtlabel_remove(i32* %69)
  %71 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %72 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @pf_rtlabel_remove(i32* %73)
  %75 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %76 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @pfi_dynaddr_remove(i32* %77)
  %79 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %80 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @pfi_dynaddr_remove(i32* %81)
  %83 = load %struct.pf_rulequeue*, %struct.pf_rulequeue** %3, align 8
  %84 = icmp eq %struct.pf_rulequeue* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %58
  %86 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %87 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @pf_tbladdr_remove(i32* %88)
  %90 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %91 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = call i32 @pf_tbladdr_remove(i32* %92)
  %94 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %95 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %100 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pfr_detach_table(i64 %101)
  br label %103

103:                                              ; preds = %98, %85
  br label %104

104:                                              ; preds = %103, %58
  %105 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %106 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %109 = call i32 @pfi_kif_unref(i32 %107, i32 %108)
  %110 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %111 = call i32 @pf_anchor_remove(%struct.pf_rule* %110)
  %112 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %113 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = call i32 @pf_empty_pool(i32* %114)
  %116 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %117 = call i32 @pool_put(i32* @pf_rule_pl, %struct.pf_rule* %116)
  br label %118

118:                                              ; preds = %104, %57
  ret void
}

declare dso_local i32 @pf_tbladdr_remove(i32*) #1

declare dso_local i32 @pfr_detach_table(i64) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_rulequeue*, %struct.pf_rule*, i32) #1

declare dso_local i32 @pf_tag_unref(i32) #1

declare dso_local i32 @pf_rtlabel_remove(i32*) #1

declare dso_local i32 @pfi_dynaddr_remove(i32*) #1

declare dso_local i32 @pfi_kif_unref(i32, i32) #1

declare dso_local i32 @pf_anchor_remove(%struct.pf_rule*) #1

declare dso_local i32 @pf_empty_pool(i32*) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
