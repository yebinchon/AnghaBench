; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_get_prepost_obj.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wq_get_prepost_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.wq_prepost = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@g_prepost_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"Couldn't allocate prepost object!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wq_prepost* (i64*, i32)* @wq_get_prepost_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wq_prepost* @wq_get_prepost_obj(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wq_prepost*, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.wq_prepost* null, %struct.wq_prepost** %5, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i64*, i64** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.wq_prepost* @wq_prepost_rpop(i64* %13, i32 %14)
  store %struct.wq_prepost* %15, %struct.wq_prepost** %5, align 8
  %16 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %17 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_prepost_table, i32 0, i32 0), align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %28

25:                                               ; preds = %8, %2
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.wq_prepost* @wq_prepost_alloc(i32 %26, i32 1)
  store %struct.wq_prepost* %27, %struct.wq_prepost** %5, align 8
  br label %28

28:                                               ; preds = %25, %12
  %29 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %30 = icmp eq %struct.wq_prepost* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  ret %struct.wq_prepost* %34
}

declare dso_local %struct.wq_prepost* @wq_prepost_rpop(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.wq_prepost* @wq_prepost_alloc(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
