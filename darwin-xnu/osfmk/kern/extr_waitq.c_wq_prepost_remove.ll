; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_prepost_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_prepost_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wq_prepost = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@WQP_POST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq_set*, %struct.wq_prepost*)* @wq_prepost_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_prepost_remove(%struct.waitq_set* %0, %struct.wq_prepost* %1) #0 {
  %3 = alloca %struct.waitq_set*, align 8
  %4 = alloca %struct.wq_prepost*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wq_prepost*, align 8
  %9 = alloca %struct.wq_prepost*, align 8
  store %struct.waitq_set* %0, %struct.waitq_set** %3, align 8
  store %struct.wq_prepost* %1, %struct.wq_prepost** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %11 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %15 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %19 = call i64 @wqp_type(%struct.wq_prepost* %18)
  %20 = load i64, i64* @WQP_POST, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %25 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %36 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %129

37:                                               ; preds = %2
  %38 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %39 = call %struct.wq_prepost* @wq_prepost_get_rnext(%struct.wq_prepost* %38)
  store %struct.wq_prepost* %39, %struct.wq_prepost** %8, align 8
  %40 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %41 = icmp ne %struct.wq_prepost* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %45 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %53 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %61 = call i64 @wqp_type(%struct.wq_prepost* %60)
  %62 = load i64, i64* @WQP_POST, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %67 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %37
  %73 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %74 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %78 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %80 = call i32 @wq_prepost_invalidate(%struct.wq_prepost* %79)
  %81 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %82 = call i32 @wq_prepost_put(%struct.wq_prepost* %81)
  store i32 0, i32* %5, align 4
  br label %129

83:                                               ; preds = %37
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %86 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call %struct.wq_prepost* @wq_prepost_get(i64 %88)
  store %struct.wq_prepost* %89, %struct.wq_prepost** %9, align 8
  %90 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %91 = icmp ne %struct.wq_prepost* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %95 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %96 = icmp ne %struct.wq_prepost* %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %100 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %101 = icmp ne %struct.wq_prepost* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %105 = call i64 @wqp_type(%struct.wq_prepost* %104)
  %106 = load i64, i64* @WQP_POST, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %111 = call i32 @wq_prepost_reset_rnext(%struct.wq_prepost* %110)
  %112 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %113 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %114 = call i32 @wq_prepost_rlink(%struct.wq_prepost* %112, %struct.wq_prepost* %113)
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %117 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %83
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.waitq_set*, %struct.waitq_set** %3, align 8
  %123 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %83
  %125 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %126 = call i32 @wq_prepost_put(%struct.wq_prepost* %125)
  %127 = load %struct.wq_prepost*, %struct.wq_prepost** %9, align 8
  %128 = call i32 @wq_prepost_put(%struct.wq_prepost* %127)
  br label %129

129:                                              ; preds = %124, %72, %34
  %130 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %131 = call i32 @wq_prepost_reset_rnext(%struct.wq_prepost* %130)
  %132 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %133 = call i32 @wq_prepost_invalidate(%struct.wq_prepost* %132)
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @wqp_type(%struct.wq_prepost*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get_rnext(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_invalidate(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get(i64) #1

declare dso_local i32 @wq_prepost_reset_rnext(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_rlink(%struct.wq_prepost*, %struct.wq_prepost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
