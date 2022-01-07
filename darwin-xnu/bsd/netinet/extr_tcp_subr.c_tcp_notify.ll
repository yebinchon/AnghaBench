; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.inpcb = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }
%struct.tcpcb = type { i64, i32, i32 }

@INPCB_STATE_DEAD = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@so = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, i32)* @tcp_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_notify(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = icmp eq %struct.inpcb* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INPCB_STATE_DEAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  br label %82

15:                                               ; preds = %8
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.tcpcb*
  store %struct.tcpcb* %19, %struct.tcpcb** %5, align 8
  %20 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %21 = icmp ne %struct.tcpcb* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EHOSTUNREACH, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ENETUNREACH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @EHOSTDOWN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %33, %29
  %42 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.rtentry*, %struct.rtentry** %44, align 8
  %46 = icmp ne %struct.rtentry* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.rtentry*, %struct.rtentry** %50, align 8
  %52 = call i32 @rtfree(%struct.rtentry* %51)
  %53 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %55, align 8
  br label %56

56:                                               ; preds = %47, %41
  br label %82

57:                                               ; preds = %37, %15
  %58 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 3
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @tcp_drop(%struct.tcpcb* %74, i32 %75)
  br label %81

77:                                               ; preds = %68, %63, %57
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %14, %81, %56
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @tcp_drop(%struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
