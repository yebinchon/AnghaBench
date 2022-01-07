; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32 }
%struct.domain = type { i32 }

@raw_init.raw_initialized = internal global i32 0, align 4
@raw_mtx_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rawcb\00", align 1
@raw_mtx_grp = common dso_local global i32 0, align 4
@raw_mtx_attr = common dso_local global i32 0, align 4
@raw_mtx = common dso_local global i32 0, align 4
@rawcb_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_init(%struct.protosw* %0, %struct.domain* %1) #0 {
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca %struct.domain*, align 8
  store %struct.protosw* %0, %struct.protosw** %3, align 8
  store %struct.domain* %1, %struct.domain** %4, align 8
  %5 = load i32, i32* @raw_init.raw_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  store i32 1, i32* @raw_init.raw_initialized, align 4
  %8 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %8, i32* @raw_mtx_grp_attr, align 4
  %9 = load i32, i32* @raw_mtx_grp_attr, align 4
  %10 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* @raw_mtx_grp, align 4
  %11 = call i32 (...) @lck_attr_alloc_init()
  store i32 %11, i32* @raw_mtx_attr, align 4
  %12 = load i32, i32* @raw_mtx, align 4
  %13 = load i32, i32* @raw_mtx_grp, align 4
  %14 = load i32, i32* @raw_mtx_attr, align 4
  %15 = call i32 @lck_mtx_init(i32 %12, i32 %13, i32 %14)
  %16 = call i32 @LIST_INIT(i32* @rawcb_list)
  br label %17

17:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
