; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_info_cmp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_info_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_pri_vector = type { i64, i64, i64, i64 }

@INFO_BETTER = common dso_local global i32 0, align 4
@INFO_WORSE = common dso_local global i32 0, align 4
@INFO_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_pri_vector*, %struct.bstp_pri_vector*)* @bstp_info_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_info_cmp(%struct.bstp_pri_vector* %0, %struct.bstp_pri_vector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_pri_vector*, align 8
  %5 = alloca %struct.bstp_pri_vector*, align 8
  store %struct.bstp_pri_vector* %0, %struct.bstp_pri_vector** %4, align 8
  store %struct.bstp_pri_vector* %1, %struct.bstp_pri_vector** %5, align 8
  %6 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %7 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %10 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @INFO_BETTER, align 4
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %17 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %20 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @INFO_WORSE, align 4
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %15
  %26 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %27 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %30 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @INFO_BETTER, align 4
  store i32 %34, i32* %3, align 4
  br label %87

35:                                               ; preds = %25
  %36 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %37 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %40 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @INFO_WORSE, align 4
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %35
  %46 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %47 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %50 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @INFO_BETTER, align 4
  store i32 %54, i32* %3, align 4
  br label %87

55:                                               ; preds = %45
  %56 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %57 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %60 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @INFO_WORSE, align 4
  store i32 %64, i32* %3, align 4
  br label %87

65:                                               ; preds = %55
  %66 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %67 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %70 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @INFO_BETTER, align 4
  store i32 %74, i32* %3, align 4
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %5, align 8
  %77 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bstp_pri_vector*, %struct.bstp_pri_vector** %4, align 8
  %80 = getelementptr inbounds %struct.bstp_pri_vector, %struct.bstp_pri_vector* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @INFO_WORSE, align 4
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @INFO_SAME, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %83, %73, %63, %53, %43, %33, %23, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
