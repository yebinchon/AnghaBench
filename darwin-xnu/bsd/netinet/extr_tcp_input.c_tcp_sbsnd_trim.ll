; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbsnd_trim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_sbsnd_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i64, i64, i64 }

@tcp_do_autosendbuf = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@SB_TRIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sbsnd_trim(%struct.sockbuf* %0) #0 {
  %2 = alloca %struct.sockbuf*, align 8
  %3 = alloca i64, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %2, align 8
  %4 = load i32, i32* @tcp_do_autosendbuf, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %63

6:                                                ; preds = %1
  %7 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %8 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SB_AUTOSIZE, align 4
  %11 = load i32, i32* @SB_TRIM, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load i32, i32* @SB_AUTOSIZE, align 4
  %15 = load i32, i32* @SB_TRIM, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %6
  %19 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %20 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %25 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %28 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  %32 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %36 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %41 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %3, align 8
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %52 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %57 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %58 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @sbreserve(%struct.sockbuf* %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %23, %18, %6, %1
  %64 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %65 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %68 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, i32* @SB_TRIM, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %75 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %63
  ret void
}

declare dso_local i32 @sbreserve(%struct.sockbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
