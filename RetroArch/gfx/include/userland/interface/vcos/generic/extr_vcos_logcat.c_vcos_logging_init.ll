; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_vcos_logging_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_vcos_logging_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inited = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vcos_log\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@dflt_log_category = common dso_local global i32 0, align 4
@cmd_log = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcos_logging_init() #0 {
  %1 = load i32, i32* @inited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %13

4:                                                ; preds = %0
  %5 = call i32 @vcos_mutex_create(i32* @lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @vcos_log_platform_init()
  %7 = call i32 @vcos_log_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @dflt_log_category)
  %8 = load i32, i32* @inited, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @vcos_assert(i32 %11)
  store i32 1, i32* @inited, align 4
  br label %13

13:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_log_platform_init(...) #1

declare dso_local i32 @vcos_log_register(i8*, i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
