; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_getlifetime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6ifa_getlifetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.in6_addrlifetime_i }
%struct.in6_addrlifetime_i = type { i64, i64, i64, i64, i64, i64 }
%struct.in6_addrlifetime = type { i64, i64, i64, i64 }
%struct.timeval = type { i32 }

@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6ifa_getlifetime(%struct.in6_ifaddr* %0, %struct.in6_addrlifetime* %1, i32 %2) #0 {
  %4 = alloca %struct.in6_ifaddr*, align 8
  %5 = alloca %struct.in6_addrlifetime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addrlifetime_i*, align 8
  %8 = alloca %struct.timeval, align 4
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %4, align 8
  store %struct.in6_addrlifetime* %1, %struct.in6_addrlifetime** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %10 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %9, i32 0, i32 0
  store %struct.in6_addrlifetime_i* %10, %struct.in6_addrlifetime_i** %7, align 8
  %11 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %12 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %15 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %17 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %20 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %22 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %24 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = call i32 @getmicrotime(%struct.timeval* %8)
  %26 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %27 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (...) @net_uptime()
  %30 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %31 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @NET_CALCULATE_CLOCKSKEW(i32 %34, i64 %28, i32 %29, i64 %32)
  %36 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %37 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %3
  %43 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %44 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %49 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %55 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %58 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %62 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %66 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %53, %47, %42
  %68 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %69 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %74 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %80 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %83 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %87 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %91 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %78, %72, %67
  br label %128

93:                                               ; preds = %3
  %94 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %95 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %100 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %106 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %109 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %98, %93
  %111 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %112 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %117 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.in6_addrlifetime_i*, %struct.in6_addrlifetime_i** %7, align 8
  %123 = getelementptr inbounds %struct.in6_addrlifetime_i, %struct.in6_addrlifetime_i* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.in6_addrlifetime*, %struct.in6_addrlifetime** %5, align 8
  %126 = getelementptr inbounds %struct.in6_addrlifetime, %struct.in6_addrlifetime* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %115, %110
  br label %128

128:                                              ; preds = %127, %92
  ret void
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @NET_CALCULATE_CLOCKSKEW(i32, i64, i32, i64) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
