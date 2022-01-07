; ModuleID = '/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_hibernate_page_list_grab.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/iokit/Kernel/extr_IOHibernateRestoreKernel.c_hibernate_page_list_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@kIOHibernateRestoreCodeNoMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @hibernate_page_list_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hibernate_page_list_grab(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.TYPE_4__* @hibernate_page_bitmap_pin(i32* %13, i64* %6)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @hibernate_page_bitmap_count(%struct.TYPE_4__* %17, i32 %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i64, i64* %6, align 8
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  br label %32

31:                                               ; preds = %16
  br label %12

32:                                               ; preds = %28, %12
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @kIOHibernateRestoreCodeNoMemory, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @debug_code(i32 %36, i64 %37)
  %39 = call i32 (...) @fatal()
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local %struct.TYPE_4__* @hibernate_page_bitmap_pin(i32*, i64*) #1

declare dso_local i64 @hibernate_page_bitmap_count(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @debug_code(i32, i64) #1

declare dso_local i32 @fatal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
