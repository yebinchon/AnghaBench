; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_loop.c_lo_attach_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_loop.c_lo_attach_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifnet_attach_proto_param_v2 = type { i32, i32 }

@lo_input = common dso_local global i32 0, align 4
@lo_pre_output = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"lo_attach_proto: ifnet_attach_protocol for %u returned=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @lo_attach_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lo_attach_proto(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet_attach_proto_param_v2, align 4
  %6 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %7 = call i32 @bzero(%struct.ifnet_attach_proto_param_v2* %5, i32 8)
  %8 = load i32, i32* @lo_input, align 4
  %9 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @lo_pre_output, align 4
  %11 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ifnet_attach_protocol_v2(%struct.ifnet* %12, i32 %13, %struct.ifnet_attach_proto_param_v2* %5)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @EEXIST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %17, %2
  %26 = load i64, i64* %6, align 8
  ret i64 %26
}

declare dso_local i32 @bzero(%struct.ifnet_attach_proto_param_v2*, i32) #1

declare dso_local i64 @ifnet_attach_protocol_v2(%struct.ifnet*, i32, %struct.ifnet_attach_proto_param_v2*) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
