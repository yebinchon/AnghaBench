; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_local_ports_extended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_get_local_ports_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_PORTRANGE_SIZE = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_WILDCARDOK = common dso_local global i32 0, align 4
@INPCB_GET_PORTS_USED_WILDCARDOK = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_NOWAKEUPOK = common dso_local global i32 0, align 4
@INPCB_GET_PORTS_USED_NOWAKEUPOK = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_RECVANYIFONLY = common dso_local global i32 0, align 4
@INPCB_GET_PORTS_USED_RECVANYIFONLY = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY = common dso_local global i32 0, align 4
@INPCB_GET_PORTS_USED_EXTBGIDLEONLY = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_ACTIVEONLY = common dso_local global i32 0, align 4
@INPCB_GET_PORTS_USED_ACTIVEONLY = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_TCPONLY = common dso_local global i32 0, align 4
@IFNET_GET_LOCAL_PORTS_UDPONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_get_local_ports_extended(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %114

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %19 [
    i32 128, label %18
    i32 130, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %16, %16, %16
  br label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %114

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @IP_PORTRANGE_SIZE, align 4
  %24 = call i32 @bitstr_size(i32 %23)
  %25 = call i32 @bzero(i32* %22, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = call i32 @if_ports_used_update_wakeuuid(%struct.TYPE_4__* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IFNET_GET_LOCAL_PORTS_WILDCARDOK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @INPCB_GET_PORTS_USED_WILDCARDOK, align 4
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IFNET_GET_LOCAL_PORTS_NOWAKEUPOK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @INPCB_GET_PORTS_USED_NOWAKEUPOK, align 4
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IFNET_GET_LOCAL_PORTS_RECVANYIFONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @INPCB_GET_PORTS_USED_RECVANYIFONLY, align 4
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @IFNET_GET_LOCAL_PORTS_EXTBGIDLEONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @INPCB_GET_PORTS_USED_EXTBGIDLEONLY, align 4
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @IFNET_GET_LOCAL_PORTS_ACTIVEONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @INPCB_GET_PORTS_USED_ACTIVEONLY, align 4
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %88, %85 ], [ 0, %89 ]
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IFNET_GET_LOCAL_PORTS_TCPONLY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @udp_get_ports_used(i32 %97, i32 %98, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @IFNET_GET_LOCAL_PORTS_UDPONLY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @tcp_get_ports_used(i32 %108, i32 %109, i32 %110, i32* %111)
  br label %113

113:                                              ; preds = %107, %102
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %19, %14
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bitstr_size(i32) #1

declare dso_local i32 @if_ports_used_update_wakeuuid(%struct.TYPE_4__*) #1

declare dso_local i32 @udp_get_ports_used(i32, i32, i32, i32*) #1

declare dso_local i32 @tcp_get_ports_used(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
