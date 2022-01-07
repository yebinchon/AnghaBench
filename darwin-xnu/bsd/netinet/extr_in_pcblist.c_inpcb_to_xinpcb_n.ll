; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcblist.c_inpcb_to_xinpcb_n.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcblist.c_inpcb_to_xinpcb_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, %struct.inpcb*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.xinpcb_n = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@XSO_INPCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, %struct.xinpcb_n*)* @inpcb_to_xinpcb_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inpcb_to_xinpcb_n(%struct.inpcb* %0, %struct.xinpcb_n* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.xinpcb_n*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.xinpcb_n* %1, %struct.xinpcb_n** %4, align 8
  %5 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %6 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %5, i32 0, i32 0
  store i32 120, i32* %6, align 8
  %7 = load i32, i32* @XSO_INPCB, align 4
  %8 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %9 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %8, i32 0, i32 17
  store i32 %7, i32* %9, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = call i64 @VM_KERNEL_ADDRPERM(%struct.inpcb* %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %14 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %13, i32 0, i32 16
  store i8* %12, i8** %14, align 8
  %15 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %19 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 4
  %20 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %21 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %24 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 12
  %27 = load %struct.inpcb*, %struct.inpcb** %26, align 8
  %28 = call i64 @VM_KERNEL_ADDRPERM(%struct.inpcb* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %31 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  %32 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %36 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %41 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %46 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %51 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %56 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %61 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %67 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %70 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %74 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %77 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %81 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %84 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %87 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %91 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %94 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %101 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %104 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %107 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %109 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.xinpcb_n*, %struct.xinpcb_n** %4, align 8
  %112 = getelementptr inbounds %struct.xinpcb_n, %struct.xinpcb_n* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
