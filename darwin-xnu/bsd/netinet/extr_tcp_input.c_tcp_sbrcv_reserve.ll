; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_reserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64 }
%struct.sockbuf = type { i64, i64 }

@TCP_MAXWIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.sockbuf*, i64, i64, i64)* @tcp_sbrcv_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sbrcv_reserve(%struct.tcpcb* %0, %struct.sockbuf* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i8* @min(i64 %11, i64 %12)
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @TCP_MAXWIN, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = shl i64 %16, %19
  %21 = call i8* @min(i64 %15, i64 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %25 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %5
  %29 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @sbreserve(%struct.sockbuf* %29, i64 %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = call i64 @max(i64 %36, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @min(i64 %45, i64 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %50 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %52 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TCP_MAXWIN, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = shl i64 %54, %57
  %59 = call i8* @min(i64 %53, i64 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %62 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %43, %28, %5
  ret void
}

declare dso_local i8* @min(i64, i64) #1

declare dso_local i32 @sbreserve(%struct.sockbuf*, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
