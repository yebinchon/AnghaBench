; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_anchor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ruleset.c_pf_find_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_anchor = type { i32 }

@pf_anchor_global = common dso_local global i32 0, align 4
@pf_anchors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_anchor* @pf_find_anchor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pf_anchor*, align 8
  %4 = alloca %struct.pf_anchor*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @rs_malloc(i32 4)
  %6 = inttoptr i64 %5 to %struct.pf_anchor*
  store %struct.pf_anchor* %6, %struct.pf_anchor** %3, align 8
  %7 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %8 = call i32 @memset(%struct.pf_anchor* %7, i32 0, i32 4)
  %9 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %10 = getelementptr inbounds %struct.pf_anchor, %struct.pf_anchor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlcpy(i32 %11, i8* %12, i32 4)
  %14 = load i32, i32* @pf_anchor_global, align 4
  %15 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %16 = call %struct.pf_anchor* @RB_FIND(i32 %14, i32* @pf_anchors, %struct.pf_anchor* %15)
  store %struct.pf_anchor* %16, %struct.pf_anchor** %4, align 8
  %17 = load %struct.pf_anchor*, %struct.pf_anchor** %3, align 8
  %18 = call i32 @rs_free(%struct.pf_anchor* %17)
  %19 = load %struct.pf_anchor*, %struct.pf_anchor** %4, align 8
  ret %struct.pf_anchor* %19
}

declare dso_local i64 @rs_malloc(i32) #1

declare dso_local i32 @memset(%struct.pf_anchor*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.pf_anchor* @RB_FIND(i32, i32*, %struct.pf_anchor*) #1

declare dso_local i32 @rs_free(%struct.pf_anchor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
