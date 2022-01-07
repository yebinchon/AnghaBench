; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_sbspace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_sbspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_4__*, %struct.sockbuf }
%struct.TYPE_4__ = type { i64 }
%struct.sockbuf = type { i64, i64, i64, i64 }

@SOF_ENABLE_MSGS = common dso_local global i32 0, align 4
@TF_SLOWLINK = common dso_local global i32 0, align 4
@slowlink_wsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_sbspace(%struct.tcpcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %4, align 8
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  store %struct.sockbuf* %15, %struct.sockbuf** %5, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %18 = call i32 @tcp_sbrcv_grow_rwin(%struct.tcpcb* %16, %struct.sockbuf* %17)
  %19 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %20 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SOF_ENABLE_MSGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %29, %34
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %39 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %43 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %46 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i64 @imin(i64 %41, i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i64 0, i64* %7, align 8
  br label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %2, align 8
  br label %86

70:                                               ; preds = %62
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TF_SLOWLINK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i64, i64* @slowlink_wsize, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @slowlink_wsize, align 8
  %83 = call i64 @imin(i64 %81, i64 %82)
  store i64 %83, i64* %2, align 8
  br label %86

84:                                               ; preds = %77, %70
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %2, align 8
  br label %86

86:                                               ; preds = %84, %80, %68
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

declare dso_local i32 @tcp_sbrcv_grow_rwin(%struct.tcpcb*, %struct.sockbuf*) #1

declare dso_local i64 @imin(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
