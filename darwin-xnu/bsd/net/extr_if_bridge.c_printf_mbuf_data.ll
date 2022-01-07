; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_mbuf_data(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @mbuf_pkthdr_len(i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %79

20:                                               ; preds = %3
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %29, %30
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ]
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @mbuf_len(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @mbuf_data(i64 %37)
  store i8* %38, i8** %13, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %74, %32
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @mbuf_next(i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %79

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = call i8* @mbuf_data(i64 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @mbuf_len(i64 %56)
  store i64 %57, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %53, %43
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i64, i64* %8, align 8
  %68 = urem i64 %67, 2
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %66, i8* %71)
  br label %73

73:                                               ; preds = %62, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %39

79:                                               ; preds = %19, %52, %39
  ret void
}

declare dso_local i64 @mbuf_pkthdr_len(i64) #1

declare dso_local i64 @mbuf_len(i64) #1

declare dso_local i8* @mbuf_data(i64) #1

declare dso_local i64 @mbuf_next(i64) #1

declare dso_local i32 @printf(i8*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
