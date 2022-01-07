; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_kpc.c_kperf_kpc_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpcdata = type { i32, i64*, i32, i64* }

@PERF_KPC_CFG_REG = common dso_local global i32 0, align 4
@PERF_KPC_CFG_REG32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.kpcdata*)* @kperf_kpc_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_kpc_log(i32 %0, i32 %1, %struct.kpcdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kpcdata*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.kpcdata* %2, %struct.kpcdata** %6, align 8
  %8 = load i32, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %58, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %12 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 3
  %15 = sdiv i32 %14, 4
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %9
  %18 = load i32, i32* @PERF_KPC_CFG_REG, align 4
  %19 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %20 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 %22, 4
  %24 = add i32 0, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %29 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %31, 4
  %33 = add i32 1, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %39 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul i32 %41, 4
  %43 = add i32 2, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %48 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %50, 4
  %52 = add i32 3, %51
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @BUF_DATA(i32 %18, i64 %27, i32 %37, i64 %46, i32 %56)
  br label %58

58:                                               ; preds = %17
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %9

61:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %111, %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %65 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 3
  %68 = sdiv i32 %67, 4
  %69 = icmp ult i32 %63, %68
  br i1 %69, label %70, label %114

70:                                               ; preds = %62
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %73 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = mul i32 %75, 4
  %77 = add i32 0, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %82 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = mul i32 %84, 4
  %86 = add i32 1, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %83, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %92 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = mul i32 %94, 4
  %96 = add i32 2, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.kpcdata*, %struct.kpcdata** %6, align 8
  %101 = getelementptr inbounds %struct.kpcdata, %struct.kpcdata* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = mul i32 %103, 4
  %105 = add i32 3, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @BUF_DATA(i32 %71, i64 %80, i32 %90, i64 %99, i32 %109)
  br label %111

111:                                              ; preds = %70
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %62

114:                                              ; preds = %62
  ret void
}

declare dso_local i32 @BUF_DATA(i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
