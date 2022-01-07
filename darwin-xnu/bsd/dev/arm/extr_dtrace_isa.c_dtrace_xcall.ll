; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_xcall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_dtrace_isa.c_dtrace_xcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CPU = common dso_local global %struct.TYPE_4__* null, align 8
@DTRACE_CPUALL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@dt_xc_lock = common dso_local global i32 0, align 4
@dt_xc_sync = common dso_local global i32 0, align 4
@xcRemote = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_xcall(i64 %0, i32 (i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CPU, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @DTRACE_CPUALL, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 %20(i8* %21)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
