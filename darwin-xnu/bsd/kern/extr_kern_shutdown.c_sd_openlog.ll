; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_openlog.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_sd_openlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@PROC_SHUTDOWN_LOG = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@sd_logvp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to open %s: error %d\0A\00", align 1
@NULLVP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Process shutdown log.  Current time is %lu (in seconds).\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sd_openlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_openlog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** @PROC_SHUTDOWN_LOG, align 8
  %7 = load i32, i32* @O_CREAT, align 4
  %8 = load i32, i32* @FWRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @O_NOFOLLOW, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @vnode_open(i8* %6, i32 %11, i32 420, i32 0, i32* @sd_logvp, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i8*, i8** @PROC_SHUTDOWN_LOG, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i32, i32* @NULLVP, align 4
  store i32 %19, i32* @sd_logvp, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @sd_logvp, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @vnode_setsize(i32 %22, i32 0, i32 0, i32 %23)
  %25 = call i32 @microtime(%struct.timeval* %5)
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sd_log(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vnode_open(i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @vnode_setsize(i32, i32, i32, i32) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @sd_log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
