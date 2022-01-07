; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tree.c_Tree_PruneNodes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tree.c_Tree_PruneNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"------- Prune Nodes --------\0A\00", align 1
@c_pruned = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%5i pruned nodes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Tree_PruneNodes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @c_pruned, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @Tree_PruneNodes_r(i32* %4)
  %6 = load i64, i64* @c_pruned, align 8
  %7 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %6)
  ret void
}

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @Tree_PruneNodes_r(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
