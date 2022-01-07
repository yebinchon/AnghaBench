; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_ip6_setmoptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_ip6_setmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.sockopt = type { i32, i32 }
%struct.ip6_moptions = type { i32, i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ip6_defmcasthlim = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_setmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip6_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @SOCK_PROTO(i32 %12)
  %14 = load i64, i64* @IPPROTO_DIVERT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @SOCK_TYPE(i32 %19)
  %21 = load i64, i64* @SOCK_RAW, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @SOCK_TYPE(i32 %26)
  %28 = load i64, i64* @SOCK_DGRAM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %3, align 4
  br label %141

32:                                               ; preds = %23, %16
  %33 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %34 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %137 [
    i32 135, label %36
    i32 136, label %40
    i32 134, label %85
    i32 139, label %121
    i32 132, label %121
    i32 131, label %121
    i32 138, label %125
    i32 130, label %125
    i32 129, label %125
    i32 133, label %129
    i32 128, label %129
    i32 137, label %133
  ]

36:                                               ; preds = %32
  %37 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %38 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %39 = call i32 @in6p_set_multicast_if(%struct.inpcb* %37, %struct.sockopt* %38)
  store i32 %39, i32* %7, align 4
  br label %139

40:                                               ; preds = %32
  %41 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %42 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %139

48:                                               ; preds = %40
  %49 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %50 = call i32 @sooptcopyin(%struct.sockopt* %49, i32* %8, i32 4, i32 4)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %139

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 255
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %7, align 4
  br label %139

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ip6_defmcasthlim, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %70 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %69)
  store %struct.ip6_moptions* %70, %struct.ip6_moptions** %6, align 8
  %71 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %72 = icmp eq %struct.ip6_moptions* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %7, align 4
  br label %139

75:                                               ; preds = %68
  %76 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %77 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %80 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %82 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %81)
  %83 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %84 = call i32 @IM6O_REMREF(%struct.ip6_moptions* %83)
  br label %139

85:                                               ; preds = %32
  %86 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %87 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 4
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %7, align 4
  br label %139

93:                                               ; preds = %85
  %94 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %95 = call i32 @sooptcopyin(%struct.sockopt* %94, i32* %9, i32 4, i32 4)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %139

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %7, align 4
  br label %139

104:                                              ; preds = %99
  %105 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %106 = call %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %105)
  store %struct.ip6_moptions* %106, %struct.ip6_moptions** %6, align 8
  %107 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %108 = icmp eq %struct.ip6_moptions* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @ENOMEM, align 4
  store i32 %110, i32* %7, align 4
  br label %139

111:                                              ; preds = %104
  %112 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %113 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %112)
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %116 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %118 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %117)
  %119 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %120 = call i32 @IM6O_REMREF(%struct.ip6_moptions* %119)
  br label %139

121:                                              ; preds = %32, %32, %32
  %122 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %123 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %124 = call i32 @in6p_join_group(%struct.inpcb* %122, %struct.sockopt* %123)
  store i32 %124, i32* %7, align 4
  br label %139

125:                                              ; preds = %32, %32, %32
  %126 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %127 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %128 = call i32 @in6p_leave_group(%struct.inpcb* %126, %struct.sockopt* %127)
  store i32 %128, i32* %7, align 4
  br label %139

129:                                              ; preds = %32, %32
  %130 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %131 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %132 = call i32 @in6p_block_unblock_source(%struct.inpcb* %130, %struct.sockopt* %131)
  store i32 %132, i32* %7, align 4
  br label %139

133:                                              ; preds = %32
  %134 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %135 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %136 = call i32 @in6p_set_source_filters(%struct.inpcb* %134, %struct.sockopt* %135)
  store i32 %136, i32* %7, align 4
  br label %139

137:                                              ; preds = %32
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %137, %133, %129, %125, %121, %111, %109, %102, %98, %91, %75, %73, %60, %53, %46, %36
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %30
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @SOCK_PROTO(i32) #1

declare dso_local i64 @SOCK_TYPE(i32) #1

declare dso_local i32 @in6p_set_multicast_if(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @IM6O_LOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @IM6O_UNLOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @IM6O_REMREF(%struct.ip6_moptions*) #1

declare dso_local i32 @in6p_join_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_leave_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_block_unblock_source(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @in6p_set_source_filters(%struct.inpcb*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
