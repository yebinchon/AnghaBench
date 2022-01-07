; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_normalize_counter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_normalize_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_tcp_ecn_stat = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_tcp_ecn_stat*)* @nstat_ifnet_normalize_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_ifnet_normalize_counter(%struct.if_tcp_ecn_stat* %0) #0 {
  %2 = alloca %struct.if_tcp_ecn_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.if_tcp_ecn_stat* %0, %struct.if_tcp_ecn_stat** %2, align 8
  %5 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %6 = icmp eq %struct.if_tcp_ecn_stat* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %132

8:                                                ; preds = %1
  %9 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %10 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %13 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %17 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %20 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %23 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = add nsw i32 %18, %25
  %27 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %28 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %31 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = add nsw i32 %26, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %8
  %38 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %39 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 10
  %43 = load i32, i32* %3, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %46 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %49 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 10
  %53 = mul nsw i32 %52, 100
  %54 = load i32, i32* %3, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %57 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %60 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 10
  %64 = mul nsw i32 %63, 100
  %65 = load i32, i32* %3, align 4
  %66 = sdiv i32 %64, %65
  %67 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %68 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  br label %80

70:                                               ; preds = %8
  %71 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %72 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %75 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %78 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %37
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %85 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 10
  %89 = load i32, i32* %4, align 4
  %90 = sdiv i32 %88, %89
  %91 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %92 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %95 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 10
  %99 = mul nsw i32 %98, 100
  %100 = load i32, i32* %4, align 4
  %101 = sdiv i32 %99, %100
  %102 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %103 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %106 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 10
  %110 = mul nsw i32 %109, 100
  %111 = load i32, i32* %4, align 4
  %112 = sdiv i32 %110, %111
  %113 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %114 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 4
  br label %126

116:                                              ; preds = %80
  %117 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %118 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %121 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %124 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %116, %83
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %127, %128
  %130 = load %struct.if_tcp_ecn_stat*, %struct.if_tcp_ecn_stat** %2, align 8
  %131 = getelementptr inbounds %struct.if_tcp_ecn_stat, %struct.if_tcp_ecn_stat* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
