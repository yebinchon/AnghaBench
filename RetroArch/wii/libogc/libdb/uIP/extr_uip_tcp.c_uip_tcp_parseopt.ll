; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_parseopt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_parseopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32 }

@uip_tcphdr = common dso_local global i64 0, align 8
@UIP_TCP_HLEN = common dso_local global i32 0, align 4
@UIP_TCP_MSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uip_tcp_pcb*)* @uip_tcp_parseopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uip_tcp_parseopt(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %7 = load i64, i64* @uip_tcphdr, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* @UIP_TCP_HLEN, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %4, align 8
  %12 = load i64, i64* @uip_tcphdr, align 8
  %13 = call i32 @UIP_TCPH_HDRLEN(i64 %12)
  %14 = icmp sgt i32 %13, 5
  br i1 %14, label %15, label %97

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %95, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* @uip_tcphdr, align 8
  %19 = call i32 @UIP_TCPH_HDRLEN(i64 %18)
  %20 = sub nsw i32 %19, 5
  %21 = shl i32 %20, 2
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %96

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %94

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %75

41:                                               ; preds = %38
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %56, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @UIP_TCP_MSS, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* @UIP_TCP_MSS, align 4
  br label %71

69:                                               ; preds = %49
  %70 = load i32, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %74 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %96

75:                                               ; preds = %41, %38
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %96

84:                                               ; preds = %75
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %35
  br label %95

95:                                               ; preds = %94
  br label %16

96:                                               ; preds = %83, %71, %31, %16
  br label %97

97:                                               ; preds = %96, %1
  ret void
}

declare dso_local i32 @UIP_TCPH_HDRLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
