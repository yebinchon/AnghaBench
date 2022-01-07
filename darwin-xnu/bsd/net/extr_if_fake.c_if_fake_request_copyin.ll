; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_if_fake_request_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_if_fake_request_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_fake_request = type { i64* }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.if_fake_request*, i32)* @if_fake_request_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_fake_request_copyin(i64 %0, %struct.if_fake_request* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.if_fake_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.if_fake_request* %1, %struct.if_fake_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @USER_ADDR_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %7, align 4
  br label %55

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.if_fake_request*, %struct.if_fake_request** %5, align 8
  %20 = call i32 @copyin(i64 %18, %struct.if_fake_request* %19, i32 8)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.if_fake_request*, %struct.if_fake_request** %5, align 8
  %26 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = load %struct.if_fake_request*, %struct.if_fake_request** %5, align 8
  %33 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load %struct.if_fake_request*, %struct.if_fake_request** %5, align 8
  %40 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.if_fake_request*, %struct.if_fake_request** %5, align 8
  %47 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %38, %31, %24
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %52, %23, %15
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @copyin(i64, %struct.if_fake_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
