; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"knote zone\00", align 1
@knote_zone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"kqueue file zone\00", align 1
@kqfile_zone = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"kqueue workq zone\00", align 1
@kqworkq_zone = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"kqueue workloop zone\00", align 1
@kqworkloop_zone = common dso_local global i8* null, align 8
@kq_lck_grp_attr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@kq_lck_grp = common dso_local global i32 0, align 4
@kq_lck_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knote_init() #0 {
  %1 = call i8* @zinit(i32 4, i32 32768, i32 8192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** @knote_zone, align 8
  %2 = call i8* @zinit(i32 4, i32 32768, i32 8192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** @kqfile_zone, align 8
  %3 = call i8* @zinit(i32 4, i32 32768, i32 8192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** @kqworkq_zone, align 8
  %4 = call i8* @zinit(i32 4, i32 32768, i32 8192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* %4, i8** @kqworkloop_zone, align 8
  %5 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %5, i32* @kq_lck_grp_attr, align 4
  %6 = load i32, i32* @kq_lck_grp_attr, align 4
  %7 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %6)
  store i32 %7, i32* @kq_lck_grp, align 4
  %8 = call i32 (...) @lck_attr_alloc_init()
  store i32 %8, i32* @kq_lck_attr, align 4
  ret void
}

declare dso_local i8* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
