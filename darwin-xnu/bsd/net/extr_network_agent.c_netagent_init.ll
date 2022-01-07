; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netagent_grp_attr = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"lck_grp_attr_alloc_init failed\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@NETAGENT_CONTROL_NAME = common dso_local global i32 0, align 4
@netagent_mtx_grp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"lck_grp_alloc_init failed\00", align 1
@netagent_mtx_attr = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"lck_attr_alloc_init failed\00", align 1
@netagent_lock = common dso_local global i32 0, align 4
@master_netagent_list = common dso_local global i32 0, align 4
@netagent_kctlref = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netagent_init() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = call i64 (...) @netagent_register_control()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %37

6:                                                ; preds = %0
  %7 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %7, i32** @netagent_grp_attr, align 8
  %8 = load i32*, i32** @netagent_grp_attr, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = call i32 @NETAGENTLOG0(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @ENOMEM, align 8
  store i64 %13, i64* %1, align 8
  br label %37

14:                                               ; preds = %6
  %15 = load i32, i32* @NETAGENT_CONTROL_NAME, align 4
  %16 = load i32*, i32** @netagent_grp_attr, align 8
  %17 = call i32* @lck_grp_alloc_init(i32 %15, i32* %16)
  store i32* %17, i32** @netagent_mtx_grp, align 8
  %18 = load i32*, i32** @netagent_mtx_grp, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @NETAGENTLOG0(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @ENOMEM, align 8
  store i64 %23, i64* %1, align 8
  br label %37

24:                                               ; preds = %14
  %25 = call i32* (...) @lck_attr_alloc_init()
  store i32* %25, i32** @netagent_mtx_attr, align 8
  %26 = load i32*, i32** @netagent_mtx_attr, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = call i32 @NETAGENTLOG0(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @ENOMEM, align 8
  store i64 %31, i64* %1, align 8
  br label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** @netagent_mtx_grp, align 8
  %34 = load i32*, i32** @netagent_mtx_attr, align 8
  %35 = call i32 @lck_rw_init(i32* @netagent_lock, i32* %33, i32* %34)
  %36 = call i32 @LIST_INIT(i32* @master_netagent_list)
  br label %37

37:                                               ; preds = %32, %28, %20, %10, %5
  %38 = load i64, i64* %1, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i32*, i32** @netagent_mtx_attr, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** @netagent_mtx_attr, align 8
  %45 = call i32 @lck_attr_free(i32* %44)
  store i32* null, i32** @netagent_mtx_attr, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** @netagent_mtx_grp, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** @netagent_mtx_grp, align 8
  %51 = call i32 @lck_grp_free(i32* %50)
  store i32* null, i32** @netagent_mtx_grp, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** @netagent_grp_attr, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** @netagent_grp_attr, align 8
  %57 = call i32 @lck_grp_attr_free(i32* %56)
  store i32* null, i32** @netagent_grp_attr, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** @netagent_kctlref, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** @netagent_kctlref, align 8
  %63 = call i32 @ctl_deregister(i32* %62)
  store i32* null, i32** @netagent_kctlref, align 8
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i64, i64* %1, align 8
  ret i64 %66
}

declare dso_local i64 @netagent_register_control(...) #1

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32* @lck_grp_alloc_init(i32, i32*) #1

declare dso_local i32* @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_rw_init(i32*, i32*, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @lck_attr_free(i32*) #1

declare dso_local i32 @lck_grp_free(i32*) #1

declare dso_local i32 @lck_grp_attr_free(i32*) #1

declare dso_local i32 @ctl_deregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
