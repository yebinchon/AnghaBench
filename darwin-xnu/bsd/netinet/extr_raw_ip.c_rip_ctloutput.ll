; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_raw_ip.c_rip_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_raw_ip.c_rip_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i64, i32 }
%struct.inpcb = type { i32 }

@IPPROTO_IP = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INP_HDRINCL = common dso_local global i32 0, align 4
@INP_STRIPHDR = common dso_local global i32 0, align 4
@DUMMYNET_LOADED = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rip_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %6, align 8
  %11 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %12 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPPROTO_IP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOL_SOCKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 128
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %124

29:                                               ; preds = %22, %2
  store i32 0, i32* %7, align 4
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %122 [
    i32 130, label %33
    i32 129, label %58
  ]

33:                                               ; preds = %29
  %34 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %35 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  switch i64 %36, label %53 [
    i64 138, label %37
    i64 131, label %45
  ]

37:                                               ; preds = %33
  %38 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %39 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INP_HDRINCL, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %44 = call i32 @sooptcopyout(%struct.sockopt* %43, i32* %8, i32 4)
  store i32 %44, i32* %7, align 4
  br label %57

45:                                               ; preds = %33
  %46 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INP_STRIPHDR, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %52 = call i32 @sooptcopyout(%struct.sockopt* %51, i32* %8, i32 4)
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.socket*, %struct.socket** %4, align 8
  %55 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %56 = call i32 @ip_ctloutput(%struct.socket* %54, %struct.sockopt* %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %45, %37
  br label %122

58:                                               ; preds = %29
  %59 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %60 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  switch i64 %61, label %117 [
    i64 138, label %62
    i64 131, label %85
    i64 128, label %108
  ]

62:                                               ; preds = %58
  %63 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %64 = call i32 @sooptcopyin(%struct.sockopt* %63, i32* %8, i32 4, i32 4)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %121

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* @INP_HDRINCL, align 4
  %73 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %84

77:                                               ; preds = %68
  %78 = load i32, i32* @INP_HDRINCL, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %71
  br label %121

85:                                               ; preds = %58
  %86 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %87 = call i32 @sooptcopyin(%struct.sockopt* %86, i32* %8, i32 4, i32 4)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %121

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @INP_STRIPHDR, align 4
  %96 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %107

100:                                              ; preds = %91
  %101 = load i32, i32* @INP_STRIPHDR, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %104 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %94
  br label %121

108:                                              ; preds = %58
  %109 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %110 = call i32 @sooptcopyin(%struct.sockopt* %109, i32* %8, i32 4, i32 4)
  store i32 %110, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %121

113:                                              ; preds = %108
  %114 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @inp_flush(%struct.inpcb* %114, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %121

117:                                              ; preds = %58
  %118 = load %struct.socket*, %struct.socket** %4, align 8
  %119 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %120 = call i32 @ip_ctloutput(%struct.socket* %118, %struct.sockopt* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %117, %113, %112, %107, %90, %84, %67
  br label %122

122:                                              ; preds = %29, %121, %57
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %27
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @ip_ctloutput(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @inp_flush(%struct.inpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
