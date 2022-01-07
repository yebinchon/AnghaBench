; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_flow_add_interface_flows.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_flow_add_interface_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i64, %struct.necp_client_interface_option*, %struct.necp_client_interface_option* }
%struct.necp_client_interface_option = type { i32 }
%struct.necp_client_flow_registration = type { i32 }
%struct.necp_client_flow = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32*)* }

@NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT = common dso_local global i64 0, align 8
@NECP_CLIENT_CBACTION_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.necp_client*, %struct.necp_client_flow_registration*, i32)* @necp_flow_add_interface_flows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_flow_add_interface_flows(i32 %0, %struct.necp_client* %1, %struct.necp_client_flow_registration* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.necp_client*, align 8
  %7 = alloca %struct.necp_client_flow_registration*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.necp_client_interface_option*, align 8
  %11 = alloca %struct.necp_client_flow*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.necp_client_interface_option*, align 8
  %14 = alloca %struct.necp_client_flow*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.necp_client* %1, %struct.necp_client** %6, align 8
  store %struct.necp_client_flow_registration* %2, %struct.necp_client_flow_registration** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %147, %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %19 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %150

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %22
  %27 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %28 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %27, i32 0, i32 2
  %29 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %29, i64 %30
  store %struct.necp_client_interface_option* %31, %struct.necp_client_interface_option** %10, align 8
  %32 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %33 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %34 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %10, align 8
  %35 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.necp_client_flow* @necp_client_add_interface_flow_if_needed(%struct.necp_client* %32, %struct.necp_client_flow_registration* %33, i32 %36)
  store %struct.necp_client_flow* %37, %struct.necp_client_flow** %11, align 8
  %38 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %39 = icmp ne %struct.necp_client_flow* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %46 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %47 = call i8* @necp_client_flow_is_viable(i32 %44, %struct.necp_client* %45, %struct.necp_client_flow* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %50 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %52 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %43
  %56 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %57 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %58, align 8
  %60 = icmp ne i32 (i32, i32, i32, i32, i32*)* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %63 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %66 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %67, align 8
  %69 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %70 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NECP_CLIENT_CBACTION_INITIAL, align 4
  %73 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %74 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %77 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %68(i32 %71, i32 %72, i32 %75, i32 %78, i32* %12)
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.necp_client_flow*, %struct.necp_client_flow** %11, align 8
  %82 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %61, %55, %43
  br label %84

84:                                               ; preds = %83, %40, %26
  br label %146

85:                                               ; preds = %22
  %86 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %87 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %86, i32 0, i32 1
  %88 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %88, i64 %91
  store %struct.necp_client_interface_option* %92, %struct.necp_client_interface_option** %13, align 8
  %93 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %94 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %95 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %13, align 8
  %96 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.necp_client_flow* @necp_client_add_interface_flow_if_needed(%struct.necp_client* %93, %struct.necp_client_flow_registration* %94, i32 %97)
  store %struct.necp_client_flow* %98, %struct.necp_client_flow** %14, align 8
  %99 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %100 = icmp ne %struct.necp_client_flow* %99, null
  br i1 %100, label %101, label %145

101:                                              ; preds = %85
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %145

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.necp_client*, %struct.necp_client** %6, align 8
  %107 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %108 = call i8* @necp_client_flow_is_viable(i32 %105, %struct.necp_client* %106, %struct.necp_client_flow* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %111 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %113 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %104
  %117 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %118 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %119, align 8
  %121 = icmp ne i32 (i32, i32, i32, i32, i32*)* %120, null
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %124 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %15, align 4
  %126 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %127 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %128, align 8
  %130 = load %struct.necp_client_flow_registration*, %struct.necp_client_flow_registration** %7, align 8
  %131 = getelementptr inbounds %struct.necp_client_flow_registration, %struct.necp_client_flow_registration* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @NECP_CLIENT_CBACTION_INITIAL, align 4
  %134 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %135 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %138 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %129(i32 %132, i32 %133, i32 %136, i32 %139, i32* %15)
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.necp_client_flow*, %struct.necp_client_flow** %14, align 8
  %143 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %122, %116, %104
  br label %145

145:                                              ; preds = %144, %101, %85
  br label %146

146:                                              ; preds = %145, %84
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %9, align 8
  br label %16

150:                                              ; preds = %16
  ret void
}

declare dso_local %struct.necp_client_flow* @necp_client_add_interface_flow_if_needed(%struct.necp_client*, %struct.necp_client_flow_registration*, i32) #1

declare dso_local i8* @necp_client_flow_is_viable(i32, %struct.necp_client*, %struct.necp_client_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
