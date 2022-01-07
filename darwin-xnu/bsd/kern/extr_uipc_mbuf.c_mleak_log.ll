; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mallocation = type { i64, i32, i32*, i32 }
%struct.mtrace = type { i32, i64, i64, i32, i32 }

@mleak_lock = common dso_local global i32 0, align 4
@mleak_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@mleak_allocations = common dso_local global %struct.mallocation* null, align 8
@mleak_alloc_buckets = common dso_local global i32 0, align 4
@mleak_trace_buckets = common dso_local global i32 0, align 4
@mleak_traces = common dso_local global %struct.mtrace* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i64, i32)* @mleak_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mleak_log(i64* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mallocation*, align 8
  %11 = alloca %struct.mtrace*, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @mleak_lock, align 4
  %14 = call i32 @lck_mtx_try_lock_spin(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 7), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 7), align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %170

20:                                               ; preds = %4
  %21 = load %struct.mallocation*, %struct.mallocation** @mleak_allocations, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i32, i32* @mleak_alloc_buckets, align 4
  %25 = call i64 @hashaddr(i64 %23, i32 %24)
  %26 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %21, i64 %25
  store %struct.mallocation* %26, %struct.mallocation** %10, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @mleak_trace_buckets, align 4
  %30 = call i64 @hashbacktrace(i64* %27, i64 %28, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %31, i64 %32
  store %struct.mtrace* %33, %struct.mtrace** %11, align 8
  %34 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %35 = load %struct.mallocation*, %struct.mallocation** @mleak_allocations, align 8
  %36 = load i32, i32* @mleak_alloc_buckets, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %35, i64 %38
  %40 = icmp ule %struct.mallocation* %34, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %44 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %45 = load i32, i32* @mleak_trace_buckets, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %44, i64 %47
  %49 = icmp ule %struct.mtrace* %43, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @VERIFY(i32 %50)
  %52 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %53 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %57 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %61 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %20
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %67 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 3), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 3), align 4
  %73 = load i32, i32* @mleak_lock, align 4
  %74 = call i32 @lck_mtx_unlock(i32 %73)
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %5, align 4
  br label %170

76:                                               ; preds = %64, %20
  %77 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %78 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %83 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = mul i64 %86, 8
  %88 = call i64 @bcmp(i32 %84, i64* %85, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %92 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 6), align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 6), align 4
  %97 = load i32, i32* @mleak_lock, align 4
  %98 = call i32 @lck_mtx_unlock(i32 %97)
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %5, align 4
  br label %170

100:                                              ; preds = %81, %76
  %101 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %102 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %107 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %135

110:                                              ; preds = %100
  %111 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %112 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 5), align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 5), align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 4), align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 4), align 4
  %121 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %122 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %124 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i64*, i64** %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = mul i64 %127, 8
  %129 = call i32 @memcpy(i32 %125, i64* %126, i64 %128)
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %132 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.mtrace*, %struct.mtrace** %11, align 8
  %134 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %118, %105
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %138 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 3), align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 3), align 4
  br label %153

144:                                              ; preds = %136
  %145 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %146 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 2), align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 2), align 4
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %141
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %156 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %155, i32 0, i32 2
  store i32* %154, i32** %156, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %159 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.mallocation*, %struct.mallocation** %10, align 8
  %162 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 1), align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 1), align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 0), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mleak_table, i32 0, i32 0), align 4
  %167 = load i32, i32* @mleak_lock, align 4
  %168 = call i32 @lck_mtx_unlock(i32 %167)
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %153, %90, %70, %16
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @lck_mtx_try_lock_spin(i32) #1

declare dso_local i64 @hashaddr(i64, i32) #1

declare dso_local i64 @hashbacktrace(i64*, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i64 @bcmp(i32, i64*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
