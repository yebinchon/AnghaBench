; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_setif.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_setif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_if = type { i64, %struct.ifnet*, %struct.bpf_if* }
%struct.ifnet = type { i32 }
%struct.bpf_d = type { i64, i32, %struct.bpf_if* }

@bpf_mlock = common dso_local global i32 0, align 4
@PRINET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bpf_reading\00", align 1
@BPF_CLOSING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bpf_iflist = common dso_local global %struct.bpf_if* null, align 8
@DLT_PKTAP = common dso_local global i64 0, align 8
@BPF_WANT_PKTAP = common dso_local global i32 0, align 4
@intcoproc_unrestricted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*, %struct.ifnet*, i32, i32)* @bpf_setif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_setif(%struct.bpf_d* %0, %struct.ifnet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_if*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifnet*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %13

13:                                               ; preds = %24, %4
  %14 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %26 = ptrtoint %struct.bpf_d* %25 to i32
  %27 = load i32, i32* @bpf_mlock, align 4
  %28 = load i32, i32* @PRINET, align 4
  %29 = call i32 @msleep(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %13

30:                                               ; preds = %22
  %31 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %32 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BPF_CLOSING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %5, align 4
  br label %123

39:                                               ; preds = %30
  %40 = load %struct.bpf_if*, %struct.bpf_if** @bpf_iflist, align 8
  store %struct.bpf_if* %40, %struct.bpf_if** %10, align 8
  br label %41

41:                                               ; preds = %117, %39
  %42 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %43 = icmp ne %struct.bpf_if* %42, null
  br i1 %43, label %44, label %121

44:                                               ; preds = %41
  %45 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %46 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %45, i32 0, i32 1
  %47 = load %struct.ifnet*, %struct.ifnet** %46, align 8
  store %struct.ifnet* %47, %struct.ifnet** %12, align 8
  %48 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %49 = icmp eq %struct.ifnet* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %53 = icmp ne %struct.ifnet* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %44
  br label %117

55:                                               ; preds = %50
  %56 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %57 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DLT_PKTAP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %63 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BPF_WANT_PKTAP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %117

69:                                               ; preds = %61, %55
  %70 = load i32, i32* @intcoproc_unrestricted, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %74 = call i64 @IFNET_IS_INTCOPROC(%struct.ifnet* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %117

77:                                               ; preds = %72, %69
  %78 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %79 = call i32 @bpf_allocbufs(%struct.bpf_d* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %123

84:                                               ; preds = %77
  %85 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %86 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %87 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %86, i32 0, i32 2
  %88 = load %struct.bpf_if*, %struct.bpf_if** %87, align 8
  %89 = icmp ne %struct.bpf_if* %85, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %92 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %91, i32 0, i32 2
  %93 = load %struct.bpf_if*, %struct.bpf_if** %92, align 8
  %94 = icmp ne %struct.bpf_if* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %97 = call i64 @bpf_detachd(%struct.bpf_d* %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %5, align 4
  br label %123

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90
  %103 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %104 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %105 = call i64 @bpf_attachd(%struct.bpf_d* %103, %struct.bpf_if* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @ENXIO, align 4
  store i32 %108, i32* %5, align 4
  br label %123

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %84
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %115 = call i32 @reset_d(%struct.bpf_d* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %5, align 4
  br label %123

117:                                              ; preds = %76, %68, %54
  %118 = load %struct.bpf_if*, %struct.bpf_if** %10, align 8
  %119 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %118, i32 0, i32 2
  %120 = load %struct.bpf_if*, %struct.bpf_if** %119, align 8
  store %struct.bpf_if* %120, %struct.bpf_if** %10, align 8
  br label %41

121:                                              ; preds = %41
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %116, %107, %99, %82, %37
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @msleep(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @IFNET_IS_INTCOPROC(%struct.ifnet*) #1

declare dso_local i32 @bpf_allocbufs(%struct.bpf_d*) #1

declare dso_local i64 @bpf_detachd(%struct.bpf_d*, i32) #1

declare dso_local i64 @bpf_attachd(%struct.bpf_d*, %struct.bpf_if*) #1

declare dso_local i32 @reset_d(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
