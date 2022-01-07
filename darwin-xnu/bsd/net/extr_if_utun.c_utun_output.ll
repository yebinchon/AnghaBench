; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_output.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utun_pcb = type { i64, i32, i32, i32, i32, i64 }

@DLT_NULL = common dso_local global i32 0, align 4
@UTUN_FLAGS_NO_OUTPUT = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"utun_output - ctl_enqueuembuf failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @utun_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utun_output(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.utun_pcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.utun_pcb* @ifnet_softc(i64 %9)
  store %struct.utun_pcb* %10, %struct.utun_pcb** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %13 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @m_pktlen(i32 %18)
  %20 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %21 = call i64 @UTUN_HEADER_SIZE(%struct.utun_pcb* %20)
  %22 = icmp sge i64 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %25 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @DLT_NULL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bpf_tap_out(i64 %26, i32 %27, i32 %28, i32 0, i32 0)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %32 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UTUN_FLAGS_NO_OUTPUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mbuf_freem(i32 %38)
  store i64 0, i64* %3, align 8
  br label %96

40:                                               ; preds = %30
  %41 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %42 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @m_pktlen(i32 %46)
  %48 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %49 = call i64 @UTUN_HEADER_SIZE(%struct.utun_pcb* %48)
  %50 = icmp sge i64 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @mbuf_data(i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @htonl(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @mbuf_data(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %45
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mbuf_pkthdr_len(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %64 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %67 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @CTL_DATA_EOR, align 4
  %71 = call i64 @ctl_enqueuembuf(i64 %65, i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @mbuf_freem(i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @ifnet_stat_increment_out(i64 %79, i32 0, i32 0, i32 1)
  br label %91

81:                                               ; preds = %60
  %82 = load %struct.utun_pcb*, %struct.utun_pcb** %6, align 8
  %83 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ifnet_stat_increment_out(i64 %87, i32 1, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %74
  br label %95

92:                                               ; preds = %40
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @mbuf_freem(i32 %93)
  br label %95

95:                                               ; preds = %92, %91
  store i64 0, i64* %3, align 8
  br label %96

96:                                               ; preds = %95, %37
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local %struct.utun_pcb* @ifnet_softc(i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @m_pktlen(i32) #1

declare dso_local i64 @UTUN_HEADER_SIZE(%struct.utun_pcb*) #1

declare dso_local i32 @bpf_tap_out(i64, i32, i32, i32, i32) #1

declare dso_local i32 @mbuf_freem(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @mbuf_data(i32) #1

declare dso_local i32 @mbuf_pkthdr_len(i32) #1

declare dso_local i64 @ctl_enqueuembuf(i64, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @ifnet_stat_increment_out(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
