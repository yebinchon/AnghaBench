; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_pdu_bettersame.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_pdu_bettersame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BSTP_INFO_RECEIVED = common dso_local global i32 0, align 4
@INFO_SAME = common dso_local global i64 0, align 8
@BSTP_INFO_MINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_port*, i32)* @bstp_pdu_bettersame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_pdu_bettersame(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BSTP_INFO_RECEIVED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %11 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BSTP_INFO_RECEIVED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 2
  %18 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %19 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @bstp_info_cmp(i32* %17, i32* %20)
  %22 = load i64, i64* @INFO_SAME, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %45

25:                                               ; preds = %15, %9, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BSTP_INFO_MINE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %31 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BSTP_INFO_MINE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %37 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %36, i32 0, i32 2
  %38 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %39 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %38, i32 0, i32 1
  %40 = call i64 @bstp_info_cmp(i32* %37, i32* %39)
  %41 = load i64, i64* @INFO_SAME, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %35, %29, %25
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @bstp_info_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
