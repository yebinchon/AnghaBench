; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_change_cb_range.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_warm.c_warm_change_cb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.warm_change_cb = type { i64, i64, i32, i32 }

@warm_fd = common dso_local global i64 0, align 8
@WARMC_CHANGE_CB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WARMC_CHANGE_CB failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warm_change_cb_range(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.warm_change_cb, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* @warm_fd, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = getelementptr inbounds %struct.warm_change_cb, %struct.warm_change_cb* %10, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.warm_change_cb, %struct.warm_change_cb* %10, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.warm_change_cb, %struct.warm_change_cb* %10, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.warm_change_cb, %struct.warm_change_cb* %10, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* @warm_fd, align 8
  %26 = load i32, i32* @WARMC_CHANGE_CB, align 4
  %27 = call i32 @ioctl(i64 %25, i32 %26, %struct.warm_change_cb* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %30, %14
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @ioctl(i64, i32, %struct.warm_change_cb*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
