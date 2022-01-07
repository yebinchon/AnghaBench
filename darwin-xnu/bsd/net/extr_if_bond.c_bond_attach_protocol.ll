; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_attach_protocol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_attach_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifnet_attach_proto_param = type { i32, i32, i32 }

@bond_input = common dso_local global i32 0, align 4
@bond_event = common dso_local global i32 0, align 4
@bond_detached = common dso_local global i32 0, align 4
@PF_BOND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bond over %s%d: ifnet_attach_protocol failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @bond_attach_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_attach_protocol(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet_attach_proto_param, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = call i32 @bzero(%struct.ifnet_attach_proto_param* %4, i32 12)
  %6 = load i32, i32* @bond_input, align 4
  %7 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %4, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @bond_event, align 4
  %9 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @bond_detached, align 4
  %11 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = load i32, i32* @PF_BOND, align 4
  %14 = call i32 @ifnet_attach_protocol(%struct.ifnet* %12, i32 %13, %struct.ifnet_attach_proto_param* %4)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = call i8* @ifnet_name(%struct.ifnet* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = call i32 @ifnet_unit(%struct.ifnet* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @bzero(%struct.ifnet_attach_proto_param*, i32) #1

declare dso_local i32 @ifnet_attach_protocol(%struct.ifnet*, i32, %struct.ifnet_attach_proto_param*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
