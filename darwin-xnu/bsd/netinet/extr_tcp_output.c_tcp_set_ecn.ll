; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_set_ecn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_set_ecn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ifnet = type { i32 }

@TE_ECN_MODE_ENABLE = common dso_local global i32 0, align 4
@TE_ENABLE_ECN = common dso_local global i32 0, align 4
@TE_ECN_MODE_DISABLE = common dso_local global i32 0, align 4
@IFEF_ECN_ENABLE = common dso_local global i32 0, align 4
@IFEF_ECN_DISABLE = common dso_local global i32 0, align 4
@tcp_ecn_inbound = common dso_local global i32 0, align 4
@tcp_ecn_outbound = common dso_local global i32 0, align 4
@tcp_ecn_setup_percentage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_ecn(%struct.tcpcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TE_ECN_MODE_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @TE_ENABLE_ECN, align 4
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TE_ECN_MODE_DISABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @TE_ENABLE_ECN, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %136

32:                                               ; preds = %18
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = icmp ne %struct.ifnet* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFEF_ECN_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @TE_ENABLE_ECN, align 4
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %98

48:                                               ; preds = %35
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFEF_ECN_DISABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* @TE_ENABLE_ECN, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %136

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @tcp_ecn_inbound, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %84, label %78

78:                                               ; preds = %75, %63
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @tcp_ecn_outbound, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81, %75
  %85 = load i32, i32* @TE_ENABLE_ECN, align 4
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %98

90:                                               ; preds = %81, %78
  %91 = load i32, i32* @TE_ENABLE_ECN, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90
  br label %136

98:                                               ; preds = %84, %42, %12
  %99 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %100 = call i32 @tcp_heuristic_do_ecn(%struct.tcpcb* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @TE_ENABLE_ECN, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %106 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %102, %98
  %110 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TE_ECN_MODE_ENABLE, align 4
  %114 = load i32, i32* @TE_ECN_MODE_DISABLE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @TE_ENABLE_ECN, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %112, %117
  %119 = load i32, i32* @TE_ENABLE_ECN, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %109
  %122 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %124, 100
  %126 = load i32, i32* @tcp_ecn_setup_percentage, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* @TE_ENABLE_ECN, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %121
  br label %136

136:                                              ; preds = %25, %55, %97, %135, %109
  ret void
}

declare dso_local i32 @tcp_heuristic_do_ecn(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
