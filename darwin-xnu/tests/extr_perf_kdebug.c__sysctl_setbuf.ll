; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c__sysctl_setbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c__sysctl_setbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_KDEBUG = common dso_local global i32 0, align 4
@KERN_KDSETBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"KERN_KDSETBUF sysctl failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @_sysctl_setbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sysctl_setbuf(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [4 x i32], align 16
  store i64 %0, i64* %2, align 8
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @CTL_KERN, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @KERN_KDEBUG, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @KERN_KDSETBUF, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i64, i64* %2, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %14 = call i64 @sysctl(i32* %13, i32 4, i32* null, i32* null, i32* null, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @T_FAIL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @T_FAIL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
