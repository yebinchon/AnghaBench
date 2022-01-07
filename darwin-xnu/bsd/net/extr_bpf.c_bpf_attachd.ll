; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_attachd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_attachd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_if = type { i32 (%struct.TYPE_3__*, i32, i32)*, i32, %struct.TYPE_3__*, %struct.bpf_if*, %struct.bpf_d* }
%struct.TYPE_3__ = type { %struct.bpf_if* }
%struct.bpf_d = type { i32, %struct.bpf_d*, %struct.bpf_if* }

@bpf_iflist = common dso_local global %struct.bpf_if* null, align 8
@BPF_TAP_INPUT_OUTPUT = common dso_local global i32 0, align 4
@bpf_tap_callback = common dso_local global i32 0, align 4
@BPF_DETACHING = common dso_local global i32 0, align 4
@BPF_DETACHED = common dso_local global i32 0, align 4
@DLT_PKTAP = common dso_local global i32 0, align 4
@BPF_FINALIZE_PKTAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*, %struct.bpf_if*)* @bpf_attachd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_attachd(%struct.bpf_d* %0, %struct.bpf_if* %1) #0 {
  %3 = alloca %struct.bpf_d*, align 8
  %4 = alloca %struct.bpf_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_if*, align 8
  %8 = alloca %struct.bpf_if*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %3, align 8
  store %struct.bpf_if* %1, %struct.bpf_if** %4, align 8
  %9 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %9, i32 0, i32 4
  %11 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %12 = icmp eq %struct.bpf_d* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %15 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %15, i32 0, i32 2
  store %struct.bpf_if* %14, %struct.bpf_if** %16, align 8
  %17 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %17, i32 0, i32 4
  %19 = load %struct.bpf_d*, %struct.bpf_d** %18, align 8
  %20 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %20, i32 0, i32 1
  store %struct.bpf_d* %19, %struct.bpf_d** %21, align 8
  %22 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %23 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %23, i32 0, i32 4
  store %struct.bpf_d* %22, %struct.bpf_d** %24, align 8
  %25 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %26 = call i32 @bpf_acquire_d(%struct.bpf_d* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %2
  %30 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.bpf_if*, %struct.bpf_if** %33, align 8
  %35 = icmp eq %struct.bpf_if* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  store %struct.bpf_if* null, %struct.bpf_if** %8, align 8
  %37 = load %struct.bpf_if*, %struct.bpf_if** @bpf_iflist, align 8
  store %struct.bpf_if* %37, %struct.bpf_if** %7, align 8
  br label %38

38:                                               ; preds = %52, %36
  %39 = load %struct.bpf_if*, %struct.bpf_if** %7, align 8
  %40 = icmp ne %struct.bpf_if* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.bpf_if*, %struct.bpf_if** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp eq %struct.TYPE_3__* %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load %struct.bpf_if*, %struct.bpf_if** %7, align 8
  store %struct.bpf_if* %50, %struct.bpf_if** %8, align 8
  br label %56

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.bpf_if*, %struct.bpf_if** %7, align 8
  %54 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %53, i32 0, i32 3
  %55 = load %struct.bpf_if*, %struct.bpf_if** %54, align 8
  store %struct.bpf_if* %55, %struct.bpf_if** %7, align 8
  br label %38

56:                                               ; preds = %49, %38
  %57 = load %struct.bpf_if*, %struct.bpf_if** %8, align 8
  %58 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %59 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store %struct.bpf_if* %57, %struct.bpf_if** %61, align 8
  br label %62

62:                                               ; preds = %56, %29
  %63 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %64 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.bpf_if*, %struct.bpf_if** %66, align 8
  %68 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %69 = icmp eq %struct.bpf_if* %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* @BPF_TAP_INPUT_OUTPUT, align 4
  %75 = load i32, i32* @bpf_tap_callback, align 4
  %76 = call i32 @dlil_set_bpf_tap(%struct.TYPE_3__* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %79 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_3__*, i32, i32)* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %84 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)** %84, align 8
  %86 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %87 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %90 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BPF_TAP_INPUT_OUTPUT, align 4
  %93 = call i32 %85(%struct.TYPE_3__* %88, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %82, %77
  br label %95

95:                                               ; preds = %94, %2
  %96 = load i32, i32* @BPF_DETACHING, align 4
  %97 = load i32, i32* @BPF_DETACHED, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %101 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.bpf_if*, %struct.bpf_if** %4, align 8
  %105 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DLT_PKTAP, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %95
  %110 = load i32, i32* @BPF_FINALIZE_PKTAP, align 4
  %111 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %112 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %122

115:                                              ; preds = %95
  %116 = load i32, i32* @BPF_FINALIZE_PKTAP, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %119 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %109
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @bpf_acquire_d(%struct.bpf_d*) #1

declare dso_local i32 @dlil_set_bpf_tap(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
