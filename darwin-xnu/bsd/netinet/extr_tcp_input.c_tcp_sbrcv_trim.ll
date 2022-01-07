; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_trim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbrcv_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32 }
%struct.sockbuf = type { i64, i64, i64 }

@tcp_do_autorcvbuf = common dso_local global i32 0, align 4
@tcp_autorcvbuf_inc_shift = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sbrcv_trim(%struct.tcpcb* %0, %struct.sockbuf* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.sockbuf* %1, %struct.sockbuf** %4, align 8
  %9 = load i32, i32* @tcp_do_autorcvbuf, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %81

11:                                               ; preds = %2
  %12 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %13 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %11
  %17 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %18 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %21 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %16
  %25 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %26 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %29 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = ashr i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @max(i32 %40, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %24
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @tcp_autorcvbuf_inc_shift, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %24
  %56 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %57 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %60 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = sub nsw i64 %58, %64
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = call i64 @imin(i64 %66, i64 %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %55
  %73 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %74 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %75 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i32 @sbreserve(%struct.sockbuf* %73, i64 %78)
  br label %80

80:                                               ; preds = %72, %55
  br label %81

81:                                               ; preds = %80, %16, %11, %2
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @imin(i64, i64) #1

declare dso_local i32 @sbreserve(%struct.sockbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
