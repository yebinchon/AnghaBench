; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/network/extr_inet_ntoa.c_inet_ntoa.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/network/extr_inet_ntoa.c_inet_ntoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@inet_ntoa.__inet_ntoa_result = internal global [18 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_ntoa(i32 %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32* %3, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %10

23:                                               ; preds = %10
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @inet_ntoa.__inet_ntoa_result, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %31)
  ret i8* getelementptr inbounds ([18 x i8], [18 x i8]* @inet_ntoa.__inet_ntoa_result, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
