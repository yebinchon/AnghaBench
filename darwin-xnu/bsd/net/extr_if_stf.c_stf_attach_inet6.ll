; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_attach_inet6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_stf.c_stf_attach_inet6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_attach_proto_param = type { i32, i32 }

@PF_INET6 = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@stf_media_input = common dso_local global i32 0, align 4
@stf_pre_output = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"stf_attach_proto_family can't attach interface fam=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @stf_attach_inet6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stf_attach_inet6(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifnet_attach_proto_param, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @PF_INET6, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @EPROTONOSUPPORT, align 8
  store i64 %12, i64* %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = call i32 @bzero(%struct.ifnet_attach_proto_param* %6, i32 8)
  %15 = load i32, i32* @stf_media_input, align 4
  %16 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %6, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @stf_pre_output, align 4
  %18 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @ifnet_attach_protocol(i32 %19, i64 %20, %struct.ifnet_attach_proto_param* %6)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @EEXIST, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %28, %24, %13
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @bzero(%struct.ifnet_attach_proto_param*, i32) #1

declare dso_local i64 @ifnet_attach_protocol(i32, i64, %struct.ifnet_attach_proto_param*) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
