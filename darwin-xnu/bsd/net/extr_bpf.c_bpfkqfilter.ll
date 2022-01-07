; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpfkqfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpfkqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.knote = type { i64, i32, %struct.bpf_d*, i32, i8* }

@CDEV_MAJOR = common dso_local global i64 0, align 8
@EVFILT_READ = common dso_local global i64 0, align 8
@EV_ERROR = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@bpf_mlock = common dso_local global i32 0, align 4
@bpf_dtab = common dso_local global %struct.bpf_d** null, align 8
@BPF_DEV_RESERVED = common dso_local global %struct.bpf_d* null, align 8
@BPF_CLOSING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EVFILTID_BPFREAD = common dso_local global i32 0, align 4
@BPF_KNOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpfkqfilter(i32 %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.knote* %1, %struct.knote** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @major(i32 %8)
  %10 = load i64, i64* @CDEV_MAJOR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.knote*, %struct.knote** %5, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EVFILT_READ, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12, %2
  %19 = load i8*, i8** @EV_ERROR, align 8
  %20 = load %struct.knote*, %struct.knote** %5, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = load %struct.knote*, %struct.knote** %5, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %3, align 4
  br label %83

25:                                               ; preds = %12
  %26 = load i32, i32* @bpf_mlock, align 4
  %27 = call i32 @lck_mtx_lock(i32 %26)
  %28 = load %struct.bpf_d**, %struct.bpf_d*** @bpf_dtab, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @minor(i32 %29)
  %31 = getelementptr inbounds %struct.bpf_d*, %struct.bpf_d** %28, i64 %30
  %32 = load %struct.bpf_d*, %struct.bpf_d** %31, align 8
  store %struct.bpf_d* %32, %struct.bpf_d** %6, align 8
  %33 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %34 = icmp eq %struct.bpf_d* %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %25
  %36 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %37 = load %struct.bpf_d*, %struct.bpf_d** @BPF_DEV_RESERVED, align 8
  %38 = icmp eq %struct.bpf_d* %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BPF_CLOSING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %39, %35, %25
  %52 = load i32, i32* @bpf_mlock, align 4
  %53 = call i32 @lck_mtx_unlock(i32 %52)
  %54 = load i8*, i8** @EV_ERROR, align 8
  %55 = load %struct.knote*, %struct.knote** %5, align 8
  %56 = getelementptr inbounds %struct.knote, %struct.knote* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @ENXIO, align 4
  %58 = load %struct.knote*, %struct.knote** %5, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %83

60:                                               ; preds = %46
  %61 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %62 = load %struct.knote*, %struct.knote** %5, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 2
  store %struct.bpf_d* %61, %struct.bpf_d** %63, align 8
  %64 = load i32, i32* @EVFILTID_BPFREAD, align 4
  %65 = load %struct.knote*, %struct.knote** %5, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.knote*, %struct.knote** %5, align 8
  %71 = call i32 @KNOTE_ATTACH(i32* %69, %struct.knote* %70)
  %72 = load i32, i32* @BPF_KNOTE, align 4
  %73 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %74 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.knote*, %struct.knote** %5, align 8
  %78 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %79 = call i32 @filt_bpfread_common(%struct.knote* %77, %struct.bpf_d* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @bpf_mlock, align 4
  %81 = call i32 @lck_mtx_unlock(i32 %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %60, %51, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @major(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @minor(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @KNOTE_ATTACH(i32*, %struct.knote*) #1

declare dso_local i32 @filt_bpfread_common(%struct.knote*, %struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
