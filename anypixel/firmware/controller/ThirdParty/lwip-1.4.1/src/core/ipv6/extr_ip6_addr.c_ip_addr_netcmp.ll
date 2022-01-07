; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6_addr.c_ip_addr_netcmp.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6_addr.c_ip_addr_netcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_addr = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_addr_netcmp(%struct.ip_addr* %0, %struct.ip_addr* %1, %struct.ip_addr* %2) #0 {
  %4 = alloca %struct.ip_addr*, align 8
  %5 = alloca %struct.ip_addr*, align 8
  %6 = alloca %struct.ip_addr*, align 8
  store %struct.ip_addr* %0, %struct.ip_addr** %4, align 8
  store %struct.ip_addr* %1, %struct.ip_addr** %5, align 8
  store %struct.ip_addr* %2, %struct.ip_addr** %6, align 8
  %7 = load %struct.ip_addr*, %struct.ip_addr** %4, align 8
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %11, %16
  %18 = load %struct.ip_addr*, %struct.ip_addr** %5, align 8
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %22, %27
  %29 = icmp eq i32 %17, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %3
  %31 = load %struct.ip_addr*, %struct.ip_addr** %4, align 8
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %35, %40
  %42 = load %struct.ip_addr*, %struct.ip_addr** %5, align 8
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %46, %51
  %53 = icmp eq i32 %41, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %30
  %55 = load %struct.ip_addr*, %struct.ip_addr** %4, align 8
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %59, %64
  %66 = load %struct.ip_addr*, %struct.ip_addr** %5, align 8
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %72 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %70, %75
  %77 = icmp eq i32 %65, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %54
  %79 = load %struct.ip_addr*, %struct.ip_addr** %4, align 8
  %80 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %85 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %83, %88
  %90 = load %struct.ip_addr*, %struct.ip_addr** %5, align 8
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %96 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %94, %99
  %101 = icmp eq i32 %89, %100
  br label %102

102:                                              ; preds = %78, %54, %30, %3
  %103 = phi i1 [ false, %54 ], [ false, %30 ], [ false, %3 ], [ %101, %78 ]
  %104 = zext i1 %103 to i32
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
