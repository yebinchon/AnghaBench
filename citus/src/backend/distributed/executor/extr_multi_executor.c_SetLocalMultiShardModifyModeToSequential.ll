; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_SetLocalMultiShardModifyModeToSequential.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_executor.c_SetLocalMultiShardModifyModeToSequential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"citus.multi_shard_modify_mode\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sequential\00", align 1
@PGC_SUSET = common dso_local global i32 0, align 4
@PGC_USERSET = common dso_local global i32 0, align 4
@PGC_S_SESSION = common dso_local global i32 0, align 4
@GUC_ACTION_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetLocalMultiShardModifyModeToSequential() #0 {
  %1 = call i64 (...) @superuser()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, i32* @PGC_SUSET, align 4
  br label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @PGC_USERSET, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ %6, %5 ]
  %9 = load i32, i32* @PGC_S_SESSION, align 4
  %10 = load i32, i32* @GUC_ACTION_LOCAL, align 4
  %11 = call i32 @set_config_option(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9, i32 %10, i32 1, i32 0, i32 0)
  ret void
}

declare dso_local i32 @set_config_option(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @superuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
