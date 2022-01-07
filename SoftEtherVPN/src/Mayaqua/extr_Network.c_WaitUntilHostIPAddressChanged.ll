; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_WaitUntilHostIPAddressChanged.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_WaitUntilHostIPAddressChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WaitUntilHostIPAddressChanged(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 2147483647
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  br label %69

28:                                               ; preds = %24
  %29 = call i64 (...) @Tick64()
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  store i64 %33, i64* %10, align 8
  %34 = call i32 (...) @GetHostIPAddressHash32()
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %28, %68
  %36 = call i64 (...) @Tick64()
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %69

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @IsRouteChanged(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %69

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (...) @GetHostIPAddressHash32()
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %69

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = sub nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MIN(i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @Wait(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  br label %35

69:                                               ; preds = %27, %67, %54, %48, %40
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @GetHostIPAddressHash32(...) #1

declare dso_local i64 @IsRouteChanged(i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @Wait(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
