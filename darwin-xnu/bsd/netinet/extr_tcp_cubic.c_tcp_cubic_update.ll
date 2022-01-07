; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, float, i64, i64 }

@tcp_now = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i64 0, align 8
@tcp_cubic_coeff = common dso_local global i64 0, align 8
@TCP_RETRANSHZ = common dso_local global float 0.000000e+00, align 4
@tcp_cubic_use_minrtt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, i64)* @tcp_cubic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_cubic_update(%struct.tcpcb* %0, i64 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @min(i32 %11, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %30
  %38 = load i32, i32* @tcp_now, align 4
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %55, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %54
  %63 = call i64 (...) @current_task()
  %64 = load i64, i64* @kernel_task, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %76 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sdiv i64 %74, %77
  %79 = load i64, i64* @tcp_cubic_coeff, align 8
  %80 = sdiv i64 %78, %79
  %81 = sitofp i64 %80 to float
  store float %81, float* %5, align 4
  %82 = load float, float* %5, align 4
  %83 = call float @cbrtf(float %82) #3
  store float %83, float* %5, align 4
  %84 = load float, float* %5, align 4
  %85 = load float, float* @TCP_RETRANSHZ, align 4
  %86 = fmul float %84, %85
  %87 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store float %86, float* %90, align 4
  %91 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %92 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i64 %95, i64* %99, align 8
  br label %110

100:                                              ; preds = %54
  %101 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store float 0.000000e+00, float* %104, align 4
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %100, %62
  %111 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %30
  %116 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @VERIFY(i32 %122)
  %124 = load i32, i32* @tcp_now, align 4
  %125 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %126 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @timer_diff(i32 %124, i32 0, i32 %129, i32 0)
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* @tcp_cubic_use_minrtt, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %115
  %134 = load i64, i64* @tcp_cubic_use_minrtt, align 8
  %135 = load i64, i64* %4, align 8
  %136 = call i64 @max(i64 %134, i64 %135)
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %7, align 8
  br label %143

139:                                              ; preds = %115
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i64, i64* %7, align 8
  %145 = sitofp i64 %144 to float
  %146 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 2
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load float, float* %149, align 4
  %151 = fsub float %145, %150
  %152 = load float, float* @TCP_RETRANSHZ, align 4
  %153 = fdiv float %151, %152
  store float %153, float* %6, align 4
  %154 = load float, float* %6, align 4
  %155 = load float, float* %6, align 4
  %156 = fmul float %154, %155
  %157 = load float, float* %6, align 4
  %158 = fmul float %156, %157
  %159 = load i64, i64* @tcp_cubic_coeff, align 8
  %160 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = mul nsw i64 %159, %162
  %164 = sitofp i64 %163 to float
  %165 = fmul float %158, %164
  store float %165, float* %6, align 4
  %166 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %167 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = sitofp i64 %170 to float
  %172 = load float, float* %6, align 4
  %173 = fadd float %171, %172
  %174 = fptosi float %173 to i64
  %175 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %176 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 4
  store i64 %174, i64* %178, align 8
  %179 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %180 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %179, i32 0, i32 2
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  ret i64 %183
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @current_task(...) #1

; Function Attrs: nounwind readnone
declare dso_local float @cbrtf(float) #2

declare dso_local i64 @timer_diff(i32, i32, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
