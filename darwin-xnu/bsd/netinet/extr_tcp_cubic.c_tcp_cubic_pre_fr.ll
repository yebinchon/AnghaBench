; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_pre_fr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cubic.c_tcp_cubic_pre_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64 }

@TF_CWND_NONVALIDATED = common dso_local global i32 0, align 4
@tcp_cubic_fast_convergence = common dso_local global i32 0, align 4
@tcp_cubic_fast_convergence_factor = common dso_local global i32 0, align 4
@tcp_cubic_backoff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_cubic_pre_fr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cubic_pre_fr(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min(i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TF_CWND_NONVALIDATED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 %47, i32 %50)
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %1
  %54 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %35
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i32, i32* @tcp_cubic_fast_convergence, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @tcp_cubic_fast_convergence_factor, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 6
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  br label %81

75:                                               ; preds = %64, %56
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 6
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %93 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 6
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %100

100:                                              ; preds = %88, %81
  %101 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 6
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %109 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %108, i32 0, i32 6
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %114 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  br label %139

117:                                              ; preds = %100
  %118 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 6
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = shl i32 %123, 6
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %129 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %128, i32 0, i32 6
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %127, %132
  %134 = ashr i32 %133, 6
  %135 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 6
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %117, %107
  %140 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %141 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %140, i32 0, i32 6
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %146 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %145, i32 0, i32 6
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %144, %149
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %5, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %139
  %157 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %158 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %157, i32 0, i32 6
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %166 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %165, i32 0, i32 6
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i32 %164, i32* %168, align 8
  br label %190

169:                                              ; preds = %156
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %172 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %171, i32 0, i32 6
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, 4
  %177 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %178 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %177, i32 0, i32 6
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %176, %181
  %183 = add nsw i32 %170, %182
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = ashr i32 %184, 4
  %186 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %187 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %186, i32 0, i32 6
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  store i32 %185, i32* %189, align 8
  br label %190

190:                                              ; preds = %169, %163
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @tcp_cubic_backoff, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sub nsw i32 %191, %194
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %198 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = sdiv i32 %196, %199
  store i32 %200, i32* %3, align 4
  %201 = load i32, i32* %3, align 4
  %202 = icmp slt i32 %201, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %190
  store i32 2, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %190
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %207 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %205, %208
  %210 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %211 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %210, i32 0, i32 5
  store i32 %209, i32* %211, align 4
  %212 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %213 = call i32 @tcp_cc_resize_sndbuf(%struct.tcpcb* %212)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @tcp_cc_resize_sndbuf(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
