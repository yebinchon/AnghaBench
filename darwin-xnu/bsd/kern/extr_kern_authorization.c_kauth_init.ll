; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kauth_scopes = common dso_local global i32 0, align 4
@kauth_dangling_listeners = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"kauth\00", align 1
@kauth_lck_grp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kauth_init() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @TAILQ_INIT(i32* @kauth_scopes)
  %3 = call i32 @TAILQ_INIT(i32* @kauth_dangling_listeners)
  %4 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32* @lck_grp_alloc_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32* %6, i32** @kauth_lck_grp, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @lck_grp_attr_free(i32* %7)
  %9 = call i32 (...) @kauth_cred_init()
  %10 = call i32 (...) @kauth_scope_init()
  %11 = load i32*, i32** @kauth_lck_grp, align 8
  %12 = call i32 @lck_grp_free(i32* %11)
  store i32* null, i32** @kauth_lck_grp, align 8
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32* @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32 @lck_grp_attr_free(i32*) #1

declare dso_local i32 @kauth_cred_init(...) #1

declare dso_local i32 @kauth_scope_init(...) #1

declare dso_local i32 @lck_grp_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
