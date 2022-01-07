; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_active_cpus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_update_active_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr32 = common dso_local global i8* null, align 8
@commpage_active_cpus_lock = common dso_local global i32 0, align 4
@_COMM_PAGE_ACTIVE_CPUS = common dso_local global i64 0, align 8
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i64 0, align 8
@processor_avail_count = common dso_local global i64 0, align 8
@commPagePtr64 = common dso_local global i8* null, align 8
@_COMM_PAGE32_START_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_update_active_cpus() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64*, align 8
  %3 = load i8*, i8** @commPagePtr32, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %33

6:                                                ; preds = %0
  %7 = call i32 @simple_lock(i32* @commpage_active_cpus_lock)
  %8 = load i8*, i8** @commPagePtr32, align 8
  store i8* %8, i8** %1, align 8
  %9 = load i64, i64* @_COMM_PAGE_ACTIVE_CPUS, align 8
  %10 = load i64, i64* @_COMM_PAGE32_BASE_ADDRESS, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i8*, i8** %1, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %2, align 8
  %16 = load i64, i64* @processor_avail_count, align 8
  %17 = load i64*, i64** %2, align 8
  store volatile i64 %16, i64* %17, align 8
  %18 = load i8*, i8** @commPagePtr64, align 8
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i64, i64* @_COMM_PAGE_ACTIVE_CPUS, align 8
  %23 = load i64, i64* @_COMM_PAGE32_START_ADDRESS, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i8*, i8** %1, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %2, align 8
  %29 = load i64, i64* @processor_avail_count, align 8
  %30 = load i64*, i64** %2, align 8
  store volatile i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %21, %6
  %32 = call i32 @simple_unlock(i32* @commpage_active_cpus_lock)
  br label %33

33:                                               ; preds = %31, %5
  ret void
}

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
