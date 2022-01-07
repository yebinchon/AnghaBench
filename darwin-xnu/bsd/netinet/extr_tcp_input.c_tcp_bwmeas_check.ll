; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bwmeas_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_bwmeas_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i64 }

@TF_BWMEAS_INPROGRESS = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_bwmeas_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bwmeas_check(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @SEQ_LEQ(i64 %9, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %135

18:                                               ; preds = %1
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %21, %26
  store i64 %27, i64* %3, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TF_BWMEAS_INPROGRESS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %135

34:                                               ; preds = %18
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %35, %40
  br i1 %41, label %42, label %135

42:                                               ; preds = %34
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @tcp_now, align 4
  %46 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %45, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %128

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %127

60:                                               ; preds = %54
  %61 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 3
  %74 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %79, %80
  %82 = ashr i32 %81, 3
  %83 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 4
  br label %93

87:                                               ; preds = %60
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %67
  %94 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %95 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32 %105, i32* %109, align 8
  br label %126

110:                                              ; preds = %93
  %111 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @max(i32 %115, i32 %120)
  %122 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %123 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 8
  br label %126

126:                                              ; preds = %110, %100
  br label %127

127:                                              ; preds = %126, %54
  br label %128

128:                                              ; preds = %127, %42
  %129 = load i32, i32* @TF_BWMEAS_INPROGRESS, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %17, %128, %34, %18
  ret void
}

declare dso_local i64 @SEQ_LEQ(i64, i64) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
