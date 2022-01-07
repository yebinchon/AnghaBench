; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_step_out_of_anchor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_step_out_of_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_anchor_stackframe = type { %struct.TYPE_10__*, %struct.pf_ruleset*, %struct.TYPE_11__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.pf_ruleset = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.pf_ruleset, i64 }
%struct.pf_rule = type { i32 }

@pf_anchor_stack = common dso_local global %struct.pf_anchor_stackframe* null, align 8
@pf_anchor_node = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_step_out_of_anchor(i32* %0, %struct.pf_ruleset** %1, i32 %2, %struct.pf_rule** %3, %struct.pf_rule** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pf_ruleset**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_rule**, align 8
  %11 = alloca %struct.pf_rule**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.pf_anchor_stackframe*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.pf_ruleset** %1, %struct.pf_ruleset*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pf_rule** %3, %struct.pf_rule*** %10, align 8
  store %struct.pf_rule** %4, %struct.pf_rule*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %146, %6
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %150

20:                                               ; preds = %15
  %21 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** @pf_anchor_stack, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %21, i64 %24
  %26 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %25, i64 -1
  store %struct.pf_anchor_stackframe* %26, %struct.pf_anchor_stackframe** %13, align 8
  %27 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %28 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %101

31:                                               ; preds = %20
  %32 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %33 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %101

36:                                               ; preds = %31
  %37 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %38 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46, %36
  %51 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %52 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32*, i32** %12, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %50
  br label %62

62:                                               ; preds = %61, %46, %43
  %63 = load i32, i32* @pf_anchor_node, align 4
  %64 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %65 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %68 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call %struct.TYPE_11__* @RB_NEXT(i32 %63, i32* %66, %struct.TYPE_11__* %69)
  %71 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %72 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %71, i32 0, i32 2
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %74 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %62
  %78 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %79 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %8, align 8
  store %struct.pf_ruleset* %81, %struct.pf_ruleset** %82, align 8
  %83 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %8, align 8
  %84 = load %struct.pf_ruleset*, %struct.pf_ruleset** %83, align 8
  %85 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.pf_rule* @TAILQ_FIRST(i32 %92)
  %94 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  store %struct.pf_rule* %93, %struct.pf_rule** %94, align 8
  %95 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %96 = load %struct.pf_rule*, %struct.pf_rule** %95, align 8
  %97 = icmp eq %struct.pf_rule* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  br label %146

99:                                               ; preds = %77
  br label %150

100:                                              ; preds = %62
  br label %101

101:                                              ; preds = %100, %31, %20
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.pf_rule**, %struct.pf_rule*** %11, align 8
  %110 = icmp ne %struct.pf_rule** %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load %struct.pf_rule**, %struct.pf_rule*** %11, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %112, align 8
  br label %113

113:                                              ; preds = %111, %108, %101
  %114 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %115 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %114, i32 0, i32 1
  %116 = load %struct.pf_ruleset*, %struct.pf_ruleset** %115, align 8
  %117 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %8, align 8
  store %struct.pf_ruleset* %116, %struct.pf_ruleset** %117, align 8
  %118 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %119 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %113
  %127 = load i32*, i32** %12, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129, %113
  %134 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %135 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %133, %129, %126
  %140 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %13, align 8
  %141 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = load i32, i32* @entries, align 4
  %144 = call %struct.pf_rule* @TAILQ_NEXT(%struct.TYPE_10__* %142, i32 %143)
  %145 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  store %struct.pf_rule* %144, %struct.pf_rule** %145, align 8
  br label %146

146:                                              ; preds = %139, %98
  %147 = load %struct.pf_rule**, %struct.pf_rule*** %10, align 8
  %148 = load %struct.pf_rule*, %struct.pf_rule** %147, align 8
  %149 = icmp eq %struct.pf_rule* %148, null
  br i1 %149, label %15, label %150

150:                                              ; preds = %146, %99, %19
  %151 = load i32, i32* %14, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_11__* @RB_NEXT(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
