; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_nullfs_uninit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_nullfs_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@null_hashmtx = common dso_local global i32 0, align 4
@null_hashlck_grp = common dso_local global i32* null, align 8
@null_node_hashtbl = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@null_hashlck_grp_attr = common dso_local global i32* null, align 8
@null_hashlck_attr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nullfs_uninit() #0 {
  %1 = load i32*, i32** @null_hashlck_grp, align 8
  %2 = call i32 @lck_mtx_destroy(i32* @null_hashmtx, i32* %1)
  %3 = load i32, i32* @null_node_hashtbl, align 4
  %4 = load i32, i32* @M_TEMP, align 4
  %5 = call i32 @FREE(i32 %3, i32 %4)
  %6 = load i32*, i32** @null_hashlck_grp_attr, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32*, i32** @null_hashlck_grp_attr, align 8
  %10 = call i32 @lck_grp_attr_free(i32* %9)
  store i32* null, i32** @null_hashlck_grp_attr, align 8
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32*, i32** @null_hashlck_grp, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** @null_hashlck_grp, align 8
  %16 = call i32 @lck_grp_free(i32* %15)
  store i32* null, i32** @null_hashlck_grp, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32*, i32** @null_hashlck_attr, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** @null_hashlck_attr, align 8
  %22 = call i32 @lck_attr_free(i32* %21)
  store i32* null, i32** @null_hashlck_attr, align 8
  br label %23

23:                                               ; preds = %20, %17
  ret i32 0
}

declare dso_local i32 @lck_mtx_destroy(i32*, i32*) #1

declare dso_local i32 @FREE(i32, i32) #1

declare dso_local i32 @lck_grp_attr_free(i32*) #1

declare dso_local i32 @lck_grp_free(i32*) #1

declare dso_local i32 @lck_attr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
