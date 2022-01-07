; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_setsocket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_setsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.socket = type { i32 }
%struct.ipsec_tag = type { %struct.socket* }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_setsocket(%struct.mbuf* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.ipsec_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %5, align 8
  %8 = icmp ne %struct.socket* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = call %struct.ipsec_tag* @ipsec_addaux(%struct.mbuf* %10)
  store %struct.ipsec_tag* %11, %struct.ipsec_tag** %6, align 8
  %12 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %13 = icmp ne %struct.ipsec_tag* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOBUFS, align 4
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = call %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf* %18)
  store %struct.ipsec_tag* %19, %struct.ipsec_tag** %6, align 8
  br label %20

20:                                               ; preds = %17, %16
  %21 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %22 = icmp ne %struct.ipsec_tag* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %26 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %25, i32 0, i32 0
  store %struct.socket* %24, %struct.socket** %26, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = load %struct.ipsec_tag*, %struct.ipsec_tag** %6, align 8
  %29 = call i32 @ipsec_optaux(%struct.mbuf* %27, %struct.ipsec_tag* %28)
  br label %30

30:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.ipsec_tag* @ipsec_addaux(%struct.mbuf*) #1

declare dso_local %struct.ipsec_tag* @ipsec_findaux(%struct.mbuf*) #1

declare dso_local i32 @ipsec_optaux(%struct.mbuf*, %struct.ipsec_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
