; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_call_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_call_lck_attr = common dso_local global i32 0, align 4
@timer_call_lck_grp_attr = common dso_local global i32 0, align 4
@timer_call_lck_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"timer_call\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_call_init() #0 {
  %1 = call i32 @lck_attr_setdefault(i32* @timer_call_lck_attr)
  %2 = call i32 @lck_grp_attr_setdefault(i32* @timer_call_lck_grp_attr)
  %3 = call i32 @lck_grp_init(i32* @timer_call_lck_grp, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @timer_call_lck_grp_attr)
  %4 = call i32 (...) @timer_longterm_init()
  %5 = call i32 (...) @timer_call_init_abstime()
  ret void
}

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @timer_longterm_init(...) #1

declare dso_local i32 @timer_call_init_abstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
