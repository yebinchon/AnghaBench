; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i64, i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rip6_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %8 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %9 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %16 = call i32 @icmp6_ctloutput(%struct.socket* %14, %struct.sockopt* %15)
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_IPV6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %25 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOL_SOCKET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 128
  br i1 %33, label %36, label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %29, %17
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  %38 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %39 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %77 [
    i32 130, label %41
    i32 129, label %54
  ]

41:                                               ; preds = %37
  %42 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %49 [
    i64 131, label %45
  ]

45:                                               ; preds = %41
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %48 = call i32 @ip6_raw_ctloutput(%struct.socket* %46, %struct.sockopt* %47)
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.socket*, %struct.socket** %4, align 8
  %51 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %52 = call i32 @ip6_ctloutput(%struct.socket* %50, %struct.sockopt* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %77

54:                                               ; preds = %37
  %55 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %56 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  switch i64 %57, label %72 [
    i64 131, label %58
    i64 128, label %62
  ]

58:                                               ; preds = %54
  %59 = load %struct.socket*, %struct.socket** %4, align 8
  %60 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %61 = call i32 @ip6_raw_ctloutput(%struct.socket* %59, %struct.sockopt* %60)
  store i32 %61, i32* %6, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %64 = call i32 @sooptcopyin(%struct.sockopt* %63, i32* %7, i32 4, i32 4)
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %76

67:                                               ; preds = %62
  %68 = load %struct.socket*, %struct.socket** %4, align 8
  %69 = call i32 @sotoinpcb(%struct.socket* %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @inp_flush(i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %54
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %75 = call i32 @ip6_ctloutput(%struct.socket* %73, %struct.sockopt* %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %67, %66, %58
  br label %77

77:                                               ; preds = %37, %76, %53
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %34, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @icmp6_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_raw_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @ip6_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @inp_flush(i32, i32) #1

declare dso_local i32 @sotoinpcb(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
