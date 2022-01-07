; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbreserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i64, i32 }

@sb_max = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i32 0, align 4
@MSIZE = common dso_local global i32 0, align 4
@sb_efficiency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbreserve(%struct.sockbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i64, i64* @sb_max, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @MCLBYTES, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* @MSIZE, align 4
  %12 = load i32, i32* @MCLBYTES, align 4
  %13 = add nsw i32 %11, %12
  %14 = sdiv i32 %10, %13
  %15 = icmp sgt i32 %6, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %20 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @sb_efficiency, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i64, i64* @sb_max, align 8
  %25 = call i32 @min(i32 %23, i64 %24)
  %26 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %29 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %32 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %38 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %17
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
