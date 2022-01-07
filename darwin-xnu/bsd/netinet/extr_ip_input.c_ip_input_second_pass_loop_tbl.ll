; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_second_pass_loop_tbl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_second_pass_loop_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ip_fw_in_args = type { i32 }

@PKTTBL_SZ = common dso_local global i32 0, align 4
@ipstat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ip_input_measure = common dso_local global i64 0, align 8
@net_perf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.ip_fw_in_args*)* @ip_input_second_pass_loop_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_input_second_pass_loop_tbl(%struct.TYPE_6__* %0, %struct.ip_fw_in_args* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ip_fw_in_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.ip_fw_in_args* %1, %struct.ip_fw_in_args** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %88, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PKTTBL_SZ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %91

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %87

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.mbuf*, %struct.mbuf** %24, align 8
  store %struct.mbuf* %25, %struct.mbuf** %6, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip_fw_in_args*, %struct.ip_fw_in_args** %4, align 8
  %44 = call i32 @ip_input_second_pass(%struct.mbuf* %26, i32 %30, i32 0, i32 %36, i32 %42, %struct.ip_fw_in_args* %43, i32 0)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %19
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipstat, i32 0, i32 1), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipstat, i32 0, i32 1), align 4
  br label %55

55:                                               ; preds = %52, %19
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipstat, i32 0, i32 0), align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipstat, i32 0, i32 0), align 4
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %66, %11
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %7

91:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ip_input_second_pass(%struct.mbuf*, i32, i32, i32, i32, %struct.ip_fw_in_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
