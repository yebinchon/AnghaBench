; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_cat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { %struct.pbuf*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btpbuf_cat(%struct.pbuf* %0, %struct.pbuf* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %7 = icmp eq %struct.pbuf* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %10 = icmp eq %struct.pbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %42

12:                                               ; preds = %8
  %13 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  store %struct.pbuf* %13, %struct.pbuf** %5, align 8
  br label %14

14:                                               ; preds = %27, %12
  %15 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i32 0, i32 0
  %17 = load %struct.pbuf*, %struct.pbuf** %16, align 8
  %18 = icmp ne %struct.pbuf* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i32 0, i32 0
  %30 = load %struct.pbuf*, %struct.pbuf** %29, align 8
  store %struct.pbuf* %30, %struct.pbuf** %5, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %40 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 0
  store %struct.pbuf* %39, %struct.pbuf** %41, align 8
  br label %42

42:                                               ; preds = %31, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
