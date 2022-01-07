; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_dechain.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_dechain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @btpbuf_dechain(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  store i64 1, i64* %4, align 8
  %5 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i32 0, i32 2
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %7, %struct.pbuf** %3, align 8
  %8 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 2
  store %struct.pbuf* null, %struct.pbuf** %21, align 8
  %22 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %28 = call i64 @btpbuf_free(%struct.pbuf* %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %10, %1
  %30 = load i64, i64* %4, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %35

33:                                               ; preds = %29
  %34 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi %struct.pbuf* [ null, %32 ], [ %34, %33 ]
  ret %struct.pbuf* %36
}

declare dso_local i64 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
