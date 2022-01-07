; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.bstp_state* }
%struct.bstp_state = type { i64 }

@BSTP_INFO_MINE = common dso_local global i32 0, align 4
@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*)* @bstp_update_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_update_info(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  %3 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  %4 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %5 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %4, i32 0, i32 16
  %6 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  store %struct.bstp_state* %6, %struct.bstp_state** %3, align 8
  %7 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %8 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %7, i32 0, i32 15
  store i64 0, i64* %8, align 8
  %9 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 14
  store i64 0, i64* %10, align 8
  %11 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %12 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %11, i32 0, i32 13
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %17 = load i32, i32* @BSTP_INFO_MINE, align 4
  %18 = call i32 @bstp_pdu_bettersame(%struct.bstp_port* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %22 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %21, i32 0, i32 13
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %15, %1
  %24 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %25 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %30 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %29, i32 0, i32 13
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %35 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %37 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %40 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %45 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %48 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %50 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %55 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %60 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %63 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @BSTP_INFO_MINE, align 4
  %65 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %66 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %68 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %69 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  ret void
}

declare dso_local i32 @bstp_pdu_bettersame(%struct.bstp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
