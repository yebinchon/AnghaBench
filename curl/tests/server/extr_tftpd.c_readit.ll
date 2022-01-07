; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_readit.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_readit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tftphdr }
%struct.tftphdr = type { i32 }
%struct.testcase = type { i32 }

@BF_FREE = common dso_local global i64 0, align 8
@bfs = common dso_local global %struct.bf* null, align 8
@current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*, %struct.tftphdr**, i32)* @readit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readit(%struct.testcase* %0, %struct.tftphdr** %1, i32 %2) #0 {
  %4 = alloca %struct.testcase*, align 8
  %5 = alloca %struct.tftphdr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf*, align 8
  store %struct.testcase* %0, %struct.testcase** %4, align 8
  store %struct.tftphdr** %1, %struct.tftphdr*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @BF_FREE, align 8
  %9 = load %struct.bf*, %struct.bf** @bfs, align 8
  %10 = load i64, i64* @current, align 8
  %11 = getelementptr inbounds %struct.bf, %struct.bf* %9, i64 %10
  %12 = getelementptr inbounds %struct.bf, %struct.bf* %11, i32 0, i32 0
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* @current, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* @current, align 8
  %18 = load %struct.bf*, %struct.bf** @bfs, align 8
  %19 = load i64, i64* @current, align 8
  %20 = getelementptr inbounds %struct.bf, %struct.bf* %18, i64 %19
  store %struct.bf* %20, %struct.bf** %7, align 8
  %21 = load %struct.bf*, %struct.bf** %7, align 8
  %22 = getelementptr inbounds %struct.bf, %struct.bf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BF_FREE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.testcase*, %struct.testcase** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @read_ahead(%struct.testcase* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.bf*, %struct.bf** %7, align 8
  %32 = getelementptr inbounds %struct.bf, %struct.bf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.tftphdr**, %struct.tftphdr*** %5, align 8
  store %struct.tftphdr* %33, %struct.tftphdr** %34, align 8
  %35 = load %struct.bf*, %struct.bf** %7, align 8
  %36 = getelementptr inbounds %struct.bf, %struct.bf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local i32 @read_ahead(%struct.testcase*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
