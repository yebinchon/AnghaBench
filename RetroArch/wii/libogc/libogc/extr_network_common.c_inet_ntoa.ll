; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_network_common.c_inet_ntoa.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_network_common.c_inet_ntoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@inet_ntoa.str = internal global [16 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_ntoa(i32 %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @inet_ntoa.str, i64 0, i64 0), i8** %5, align 8
  store i32* %3, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %52, %1
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %19, 10
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 48, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %17
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %17, label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 %44, i8* %45, align 1
  br label %36

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  store i8 46, i8* %48, align 1
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %5, align 8
  store i8 0, i8* %57, align 1
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @inet_ntoa.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
