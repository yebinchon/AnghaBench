; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_remove_if_empty_ruleset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_remove_if_empty_ruleset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i64, %struct.pf_anchor*, i32, i32 }
%struct.pf_anchor = type { %struct.pf_ruleset, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 8
@PF_RULESET_MAX = common dso_local global i32 0, align 4
@pf_anchor_global = common dso_local global i32 0, align 4
@pf_anchors = common dso_local global i32 0, align 4
@pf_anchor_node = common dso_local global i32 0, align 4
@DUMMYNET_NLC_DISABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@is_nlc_enabled_glb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_remove_if_empty_ruleset(%struct.pf_ruleset* %0) #0 {
  %2 = alloca %struct.pf_ruleset*, align 8
  %3 = alloca %struct.pf_anchor*, align 8
  %4 = alloca i32, align 4
  store %struct.pf_ruleset* %0, %struct.pf_ruleset** %2, align 8
  br label %5

5:                                                ; preds = %114, %1
  %6 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %7 = icmp ne %struct.pf_ruleset* %6, null
  br i1 %7, label %8, label %117

8:                                                ; preds = %5
  %9 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %10 = icmp eq %struct.pf_ruleset* %9, @pf_main_ruleset
  br i1 %10, label %40, label %11

11:                                               ; preds = %8
  %12 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %13 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %18 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = call i32 @RB_EMPTY(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %25 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %32 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %37 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %23, %16, %11, %8
  br label %117

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PF_RULESET_MAX, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %48 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @TAILQ_EMPTY(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %46
  %59 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %60 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @TAILQ_EMPTY(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %72 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70, %58, %46
  br label %117

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %42

86:                                               ; preds = %42
  %87 = load i32, i32* @pf_anchor_global, align 4
  %88 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %89 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @RB_REMOVE(i32 %87, i32* @pf_anchors, %struct.TYPE_9__* %90)
  %92 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %93 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.pf_anchor*, %struct.pf_anchor** %95, align 8
  store %struct.pf_anchor* %96, %struct.pf_anchor** %3, align 8
  %97 = icmp ne %struct.pf_anchor* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %86
  %99 = load i32, i32* @pf_anchor_node, align 4
  %100 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %101 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %100, i32 0, i32 1
  %102 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %103 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = call i32 @RB_REMOVE(i32 %99, i32* %101, %struct.TYPE_9__* %104)
  br label %106

106:                                              ; preds = %98, %86
  %107 = load %struct.pf_ruleset*, %struct.pf_ruleset** %2, align 8
  %108 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 @rs_free(%struct.TYPE_9__* %109)
  %111 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %112 = icmp eq %struct.pf_anchor* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %117

114:                                              ; preds = %106
  %115 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %116 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %115, i32 0, i32 0
  store %struct.pf_ruleset* %116, %struct.pf_ruleset** %2, align 8
  br label %5

117:                                              ; preds = %40, %81, %113, %5
  ret void
}

declare dso_local i32 @RB_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @rs_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
