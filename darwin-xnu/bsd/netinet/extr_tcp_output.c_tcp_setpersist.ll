; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_setpersist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_setpersist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i64, i64*, i64, i64 }

@TCPT_PERSIST = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i64 0, align 8
@tcp_backoff = common dso_local global i32* null, align 8
@tcptv_persmin_val = common dso_local global i32 0, align 4
@TCPTV_PERSMAX = common dso_local global i32 0, align 4
@TCP_MAXRXTSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_setpersist(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = ashr i32 %6, 2
  %8 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %3, align 4
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @TCPT_PERSIST, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i64, i64* @tcp_now, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %25, %17, %1
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @TCPT_PERSIST, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32*, i32** @tcp_backoff, align 8
  %47 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %45, %51
  %53 = load i32, i32* @tcptv_persmin_val, align 4
  %54 = load i32, i32* @TCPTV_PERSMAX, align 4
  %55 = call i32 @TCPT_RANGESET(i64 %44, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @TCPT_PERSIST, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @OFFSET_FROM_START(%struct.tcpcb* %56, i64 %62)
  %64 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @TCPT_PERSIST, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %63, i64* %68, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TCP_MAXRXTSHIFT, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %38
  %75 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %74, %38
  ret void
}

declare dso_local i32 @TCPT_RANGESET(i64, i32, i32, i32, i32) #1

declare dso_local i64 @OFFSET_FROM_START(%struct.tcpcb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
