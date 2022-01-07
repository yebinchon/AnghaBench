; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_device_vm.c_device_pager_bootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_device_vm.c_device_pager_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DNODE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"device node pager structures\00", align 1
@device_pager_zone = common dso_local global i32 0, align 4
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@device_pager_lck_grp_attr = common dso_local global i32 0, align 4
@device_pager_lck_grp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"device_pager\00", align 1
@device_pager_lck_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_pager_bootstrap() #0 {
  %1 = alloca i32, align 4
  store i32 4, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i64, i64* @MAX_DNODE, align 8
  %4 = trunc i64 %3 to i32
  %5 = load i32, i32* %1, align 4
  %6 = mul nsw i32 %4, %5
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = call i32 @zinit(i32 %2, i32 %6, i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @device_pager_zone, align 4
  %9 = load i32, i32* @device_pager_zone, align 4
  %10 = load i32, i32* @Z_CALLERACCT, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @zone_change(i32 %9, i32 %10, i32 %11)
  %13 = call i32 @lck_grp_attr_setdefault(i32* @device_pager_lck_grp_attr)
  %14 = call i32 @lck_grp_init(i32* @device_pager_lck_grp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* @device_pager_lck_grp_attr)
  %15 = call i32 @lck_attr_setdefault(i32* @device_pager_lck_attr)
  ret void
}

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
