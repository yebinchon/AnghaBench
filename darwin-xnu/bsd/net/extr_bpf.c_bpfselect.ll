; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpfselect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpfselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32, i64, i32, i32, i32, i32, i32, i32* }
%struct.proc = type { i32 }

@bpf_mlock = common dso_local global i32 0, align 4
@bpf_dtab = common dso_local global %struct.bpf_d** null, align 8
@BPF_DEV_RESERVED = common dso_local global %struct.bpf_d* null, align 8
@BPF_CLOSING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PRINET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bpf_reading\00", align 1
@BPF_TIMED_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpfselect(i32 %0, i32 %1, i8* %2, %struct.proc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.bpf_d*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.proc* %3, %struct.proc** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @bpf_mlock, align 4
  %13 = call i32 @lck_mtx_lock(i32 %12)
  %14 = load %struct.bpf_d**, %struct.bpf_d*** @bpf_dtab, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @minor(i32 %15)
  %17 = getelementptr inbounds %struct.bpf_d*, %struct.bpf_d** %14, i64 %16
  %18 = load %struct.bpf_d*, %struct.bpf_d** %17, align 8
  store %struct.bpf_d* %18, %struct.bpf_d** %10, align 8
  %19 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %20 = icmp eq %struct.bpf_d* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %23 = load %struct.bpf_d*, %struct.bpf_d** @BPF_DEV_RESERVED, align 8
  %24 = icmp eq %struct.bpf_d* %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %27 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BPF_CLOSING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %21, %4
  %33 = load i32, i32* @bpf_mlock, align 4
  %34 = call i32 @lck_mtx_unlock(i32 %33)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %5, align 4
  br label %114

36:                                               ; preds = %25
  %37 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %38 = call i32 @bpf_acquire_d(%struct.bpf_d* %37)
  %39 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %40 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %45 = call i32 @bpf_release_d(%struct.bpf_d* %44)
  %46 = load i32, i32* @bpf_mlock, align 4
  %47 = call i32 @lck_mtx_unlock(i32 %46)
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %5, align 4
  br label %114

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %55, %49
  %51 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %52 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %57 = ptrtoint %struct.bpf_d* %56 to i32
  %58 = load i32, i32* @bpf_mlock, align 4
  %59 = load i32, i32* @PRINET, align 4
  %60 = call i32 @msleep(i32 %57, i32 %58, i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %50

61:                                               ; preds = %50
  %62 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %63 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BPF_CLOSING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %70 = call i32 @bpf_release_d(%struct.bpf_d* %69)
  %71 = load i32, i32* @bpf_mlock, align 4
  %72 = call i32 @lck_mtx_unlock(i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %5, align 4
  br label %114

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %108 [
    i32 129, label %76
    i32 128, label %107
  ]

76:                                               ; preds = %74
  %77 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %78 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %76
  %82 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %83 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %88 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BPF_TIMED_OUT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86, %81
  %93 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %94 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %76
  store i32 1, i32* %11, align 4
  br label %106

98:                                               ; preds = %92, %86
  %99 = load %struct.proc*, %struct.proc** %9, align 8
  %100 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %101 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %100, i32 0, i32 2
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @selrecord(%struct.proc* %99, i32* %101, i8* %102)
  %104 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %105 = call i32 @bpf_start_timer(%struct.bpf_d* %104)
  br label %106

106:                                              ; preds = %98, %97
  br label %108

107:                                              ; preds = %74
  store i32 1, i32* %11, align 4
  br label %108

108:                                              ; preds = %74, %107, %106
  %109 = load %struct.bpf_d*, %struct.bpf_d** %10, align 8
  %110 = call i32 @bpf_release_d(%struct.bpf_d* %109)
  %111 = load i32, i32* @bpf_mlock, align 4
  %112 = call i32 @lck_mtx_unlock(i32 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %68, %43, %32
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @minor(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @bpf_acquire_d(%struct.bpf_d*) #1

declare dso_local i32 @bpf_release_d(%struct.bpf_d*) #1

declare dso_local i32 @msleep(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @selrecord(%struct.proc*, i32*, i8*) #1

declare dso_local i32 @bpf_start_timer(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
