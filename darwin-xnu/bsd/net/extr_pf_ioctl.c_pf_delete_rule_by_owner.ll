; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_delete_rule_by_owner.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_delete_rule_by_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_ruleset = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pf_rule = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pf_ruleset }

@PF_RULESET_MAX = common dso_local global i32 0, align 4
@pf_main_ruleset = common dso_local global %struct.pf_ruleset zeroinitializer, align 8
@entries = common dso_local global i32 0, align 4
@PFRULE_PFM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pffwrules = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pf_delete_rule_by_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_delete_rule_by_owner(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_ruleset*, align 8
  %6 = alloca %struct.pf_rule*, align 8
  %7 = alloca %struct.pf_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %157, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @PF_RULESET_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %160

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.pf_ruleset, %struct.pf_ruleset* @pf_main_ruleset, i32 0, i32 0), align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.pf_rule* @TAILQ_FIRST(i32 %21)
  store %struct.pf_rule* %22, %struct.pf_rule** %6, align 8
  store %struct.pf_ruleset* @pf_main_ruleset, %struct.pf_ruleset** %5, align 8
  br label %23

23:                                               ; preds = %155, %79, %38, %14
  %24 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %25 = icmp ne %struct.pf_rule* %24, null
  br i1 %25, label %26, label %156

26:                                               ; preds = %23
  %27 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %28 = load i32, i32* @entries, align 4
  %29 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %27, i32 %28)
  store %struct.pf_rule* %29, %struct.pf_rule** %7, align 8
  %30 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %31 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PFRULE_PFM, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  store %struct.pf_rule* %39, %struct.pf_rule** %6, align 8
  br label %23

40:                                               ; preds = %26
  %41 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %42 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %114

45:                                               ; preds = %40
  %46 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %47 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @strcmp(i32 %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %54 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %52, %45
  %59 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %60 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %58
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @pf_ruleset_cleanup(%struct.pf_ruleset* %76, i32 %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %81 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store %struct.pf_ruleset* %83, %struct.pf_ruleset** %5, align 8
  %84 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %85 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.pf_rule* @TAILQ_FIRST(i32 %92)
  store %struct.pf_rule* %93, %struct.pf_rule** %6, align 8
  br label %23

94:                                               ; preds = %58
  %95 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %96 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PFRULE_PFM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @pffwrules, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* @pffwrules, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %108 = call i32 @pf_delete_rule_from_ruleset(%struct.pf_ruleset* %105, i32 %106, %struct.pf_rule* %107)
  store i32 1, i32* %8, align 4
  %109 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  store %struct.pf_rule* %109, %struct.pf_rule** %6, align 8
  br label %110

110:                                              ; preds = %104
  br label %113

111:                                              ; preds = %52
  %112 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  store %struct.pf_rule* %112, %struct.pf_rule** %6, align 8
  br label %113

113:                                              ; preds = %111, %110
  br label %138

114:                                              ; preds = %40
  %115 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %116 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %3, align 8
  %119 = call i64 @strcmp(i32 %117, i8* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %114
  %122 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %123 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @PFRULE_PFM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @pffwrules, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* @pffwrules, align 4
  br label %131

131:                                              ; preds = %128, %121
  %132 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %135 = call i32 @pf_delete_rule_from_ruleset(%struct.pf_ruleset* %132, i32 %133, %struct.pf_rule* %134)
  store i32 1, i32* %8, align 4
  br label %136

136:                                              ; preds = %131, %114
  %137 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  store %struct.pf_rule* %137, %struct.pf_rule** %6, align 8
  br label %138

138:                                              ; preds = %136, %113
  %139 = load %struct.pf_rule*, %struct.pf_rule** %6, align 8
  %140 = icmp eq %struct.pf_rule* %139, null
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @pf_ruleset_cleanup(%struct.pf_ruleset* %145, i32 %146)
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %141
  %149 = load %struct.pf_ruleset*, %struct.pf_ruleset** %5, align 8
  %150 = icmp ne %struct.pf_ruleset* %149, @pf_main_ruleset
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @pf_deleterule_anchor_step_out(%struct.pf_ruleset** %5, i32 %152, %struct.pf_rule** %6)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %138
  br label %23

156:                                              ; preds = %23
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %10

160:                                              ; preds = %10
  ret void
}

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pf_ruleset_cleanup(%struct.pf_ruleset*, i32) #1

declare dso_local i32 @pf_delete_rule_from_ruleset(%struct.pf_ruleset*, i32, %struct.pf_rule*) #1

declare dso_local i32 @pf_deleterule_anchor_step_out(%struct.pf_ruleset**, i32, %struct.pf_rule**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
