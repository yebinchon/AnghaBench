; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_getdltlist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_getdltlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_if = type { i64, %struct.ifnet*, %struct.bpf_if* }
%struct.ifnet = type { i32 }
%struct.bpf_d = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.bpf_dltlist = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.proc = type { i32 }

@bpf_iflist = common dso_local global %struct.bpf_if* null, align 8
@DLT_PKTAP = common dso_local global i64 0, align 8
@BPF_WANT_PKTAP = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*, %struct.bpf_dltlist*, %struct.proc*)* @bpf_getdltlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_getdltlist(%struct.bpf_d* %0, %struct.bpf_dltlist* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_d*, align 8
  %6 = alloca %struct.bpf_dltlist*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.bpf_if*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_dltlist, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %5, align 8
  store %struct.bpf_dltlist* %1, %struct.bpf_dltlist** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %14 = load %struct.bpf_dltlist*, %struct.bpf_dltlist** %6, align 8
  %15 = call i32 @bcopy(%struct.bpf_dltlist* %14, %struct.bpf_dltlist* %13, i32 24)
  %16 = load %struct.proc*, %struct.proc** %7, align 8
  %17 = call i64 @proc_is64bit(%struct.proc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bpf_dltlist, %struct.bpf_dltlist* %13, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  br label %28

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.bpf_dltlist, %struct.bpf_dltlist* %13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @CAST_USER_ADDR_T(i32 %26)
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.ifnet*, %struct.ifnet** %32, align 8
  store %struct.ifnet* %33, %struct.ifnet** %10, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.bpf_if*, %struct.bpf_if** @bpf_iflist, align 8
  store %struct.bpf_if* %34, %struct.bpf_if** %11, align 8
  br label %35

35:                                               ; preds = %84, %28
  %36 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %37 = icmp ne %struct.bpf_if* %36, null
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %40 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %39, i32 0, i32 1
  %41 = load %struct.ifnet*, %struct.ifnet** %40, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %43 = icmp ne %struct.ifnet* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %84

45:                                               ; preds = %38
  %46 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %47 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DLT_PKTAP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %53 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BPF_WANT_PKTAP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %84

59:                                               ; preds = %51, %45
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @USER_ADDR_NULL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.bpf_dltlist, %struct.bpf_dltlist* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %4, align 4
  br label %94

70:                                               ; preds = %63
  %71 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %72 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %71, i32 0, i32 0
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @copyout(i64* %72, i64 %73, i32 8)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %88

78:                                               ; preds = %70
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 8
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %78, %59
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %81, %58, %44
  %85 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %86 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %85, i32 0, i32 2
  %87 = load %struct.bpf_if*, %struct.bpf_if** %86, align 8
  store %struct.bpf_if* %87, %struct.bpf_if** %11, align 8
  br label %35

88:                                               ; preds = %77, %35
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.bpf_dltlist, %struct.bpf_dltlist* %13, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = load %struct.bpf_dltlist*, %struct.bpf_dltlist** %6, align 8
  %92 = call i32 @bcopy(%struct.bpf_dltlist* %13, %struct.bpf_dltlist* %91, i32 24)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %68
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @bcopy(%struct.bpf_dltlist*, %struct.bpf_dltlist*, i32) #1

declare dso_local i64 @proc_is64bit(%struct.proc*) #1

declare dso_local i64 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @copyout(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
