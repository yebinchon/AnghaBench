; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_scope_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_scope_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kauth_lck_grp = common dso_local global i32 0, align 4
@kauth_scope_mtx = common dso_local global i32 0, align 4
@KAUTH_SCOPE_PROCESS = common dso_local global i32 0, align 4
@kauth_authorize_process_callback = common dso_local global i32* null, align 8
@kauth_scope_process = common dso_local global i8* null, align 8
@KAUTH_SCOPE_GENERIC = common dso_local global i32 0, align 4
@kauth_authorize_generic_callback = common dso_local global i32* null, align 8
@kauth_scope_generic = common dso_local global i8* null, align 8
@KAUTH_SCOPE_FILEOP = common dso_local global i32 0, align 4
@kauth_scope_fileop = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kauth_scope_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kauth_scope_init() #0 {
  %1 = load i32, i32* @kauth_lck_grp, align 4
  %2 = call i32 @lck_mtx_alloc_init(i32 %1, i32 0)
  store i32 %2, i32* @kauth_scope_mtx, align 4
  %3 = load i32, i32* @KAUTH_SCOPE_PROCESS, align 4
  %4 = load i32*, i32** @kauth_authorize_process_callback, align 8
  %5 = call i8* @kauth_register_scope(i32 %3, i32* %4, i32* null)
  store i8* %5, i8** @kauth_scope_process, align 8
  %6 = load i32, i32* @KAUTH_SCOPE_GENERIC, align 4
  %7 = load i32*, i32** @kauth_authorize_generic_callback, align 8
  %8 = call i8* @kauth_register_scope(i32 %6, i32* %7, i32* null)
  store i8* %8, i8** @kauth_scope_generic, align 8
  %9 = load i32, i32* @KAUTH_SCOPE_FILEOP, align 4
  %10 = call i8* @kauth_register_scope(i32 %9, i32* null, i32* null)
  store i8* %10, i8** @kauth_scope_fileop, align 8
  ret void
}

declare dso_local i32 @lck_mtx_alloc_init(i32, i32) #1

declare dso_local i8* @kauth_register_scope(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
