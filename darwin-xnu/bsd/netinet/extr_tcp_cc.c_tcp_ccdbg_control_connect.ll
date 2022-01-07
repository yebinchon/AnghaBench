; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_ccdbg_control_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_ccdbg_control_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ctl = type { i64 }

@TCP_CCDBG_NOUNIT = common dso_local global i64 0, align 8
@tcp_ccdbg_unit = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_ctl*, i8**)* @tcp_ccdbg_control_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ccdbg_control_connect(i32 %0, %struct.sockaddr_ctl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_ctl*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_ctl* %1, %struct.sockaddr_ctl** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i64, i64* @TCP_CCDBG_NOUNIT, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.sockaddr_ctl*, %struct.sockaddr_ctl** %6, align 8
  %12 = getelementptr inbounds %struct.sockaddr_ctl, %struct.sockaddr_ctl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* @tcp_ccdbg_unit, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EALREADY, align 4
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @OSCompareAndSwap(i64 %20, i64 %21, i64* @tcp_ccdbg_unit)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EALREADY, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %24, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @OSCompareAndSwap(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
