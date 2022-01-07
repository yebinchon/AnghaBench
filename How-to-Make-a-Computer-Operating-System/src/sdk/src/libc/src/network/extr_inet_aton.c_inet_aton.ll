; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/network/extr_inet_aton.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/network/extr_inet_aton.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  store i32 24, i32* %6, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @strtoul(i8* %12, i8** %8, i32 0)
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = or i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  br label %52

24:                                               ; preds = %11
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = or i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  br label %11

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %57

52:                                               ; preds = %18
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @htonl(i32 %53)
  %55 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %51, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
