; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_helper_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_helper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gDTraceInited = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"helper_init before dtrace_init\0A\00", align 1
@helper_majdevno = common dso_local global i64 0, align 8
@HELPER_MAJOR = common dso_local global i32 0, align 4
@helper_cdevsw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"helper_init: failed to allocate a major number!\0A\00", align 1
@DEVFS_CHAR = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@DTRACEMNR_HELPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"dtrace_init: failed to devfs_make_node for helper!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"helper_init: called twice!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @helper_init() #0 {
  %1 = load i32, i32* @gDTraceInited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, i64* @helper_majdevno, align 8
  %7 = icmp sge i64 0, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i32, i32* @HELPER_MAJOR, align 4
  %10 = call i64 @cdevsw_add(i32 %9, i32* @helper_cdevsw)
  store i64 %10, i64* @helper_majdevno, align 8
  %11 = load i64, i64* @helper_majdevno, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %29

15:                                               ; preds = %8
  %16 = load i64, i64* @helper_majdevno, align 8
  %17 = call i32 @makedev(i64 %16, i32 0)
  %18 = load i32, i32* @DEVFS_CHAR, align 4
  %19 = load i32, i32* @UID_ROOT, align 4
  %20 = load i32, i32* @GID_WHEEL, align 4
  %21 = load i32, i32* @DTRACEMNR_HELPER, align 4
  %22 = call i32* @devfs_make_node(i32 %17, i32 %18, i32 %19, i32 %20, i32 438, i32 %21, i32 0)
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %29

26:                                               ; preds = %15
  br label %29

27:                                               ; preds = %5
  %28 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %13, %24, %27, %26
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @cdevsw_add(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @devfs_make_node(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @makedev(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
