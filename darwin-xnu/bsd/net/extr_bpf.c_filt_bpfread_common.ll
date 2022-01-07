; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_filt_bpfread_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_filt_bpfread_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64 }
%struct.bpf_d = type { i64, i64, i64, i64, i64, i64 }

@NOTE_LOWAT = common dso_local global i32 0, align 4
@BPF_TIMED_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.bpf_d*)* @filt_bpfread_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_bpfread_common(%struct.knote* %0, %struct.bpf_d* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.bpf_d*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.bpf_d* %1, %struct.bpf_d** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %2
  %12 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %11
  %22 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i64 [ %24, %21 ], [ %28, %25 ]
  %31 = load %struct.knote*, %struct.knote** %3, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i64 1, i64* %6, align 8
  %33 = load %struct.knote*, %struct.knote** %3, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NOTE_LOWAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %29
  %40 = load %struct.knote*, %struct.knote** %3, align 8
  %41 = getelementptr inbounds %struct.knote, %struct.knote* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %44 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %49 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %6, align 8
  br label %62

51:                                               ; preds = %39
  %52 = load %struct.knote*, %struct.knote** %3, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.knote*, %struct.knote** %3, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.knote*, %struct.knote** %3, align 8
  %65 = getelementptr inbounds %struct.knote, %struct.knote* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp sge i64 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %103

70:                                               ; preds = %2
  %71 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %77 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75, %70
  %81 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %82 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BPF_TIMED_OUT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  br label %94

90:                                               ; preds = %80, %75
  %91 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %92 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i64 [ %89, %86 ], [ %93, %90 ]
  %96 = load %struct.knote*, %struct.knote** %3, align 8
  %97 = getelementptr inbounds %struct.knote, %struct.knote* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.knote*, %struct.knote** %3, align 8
  %99 = getelementptr inbounds %struct.knote, %struct.knote* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %94, %63
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %108 = call i32 @bpf_start_timer(%struct.bpf_d* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @bpf_start_timer(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
