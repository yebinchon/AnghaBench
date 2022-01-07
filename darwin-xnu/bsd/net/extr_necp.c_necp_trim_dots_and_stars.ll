; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_trim_dots_and_stars.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_trim_dots_and_stars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.substring = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i64 } (i8*, i64)* @necp_trim_dots_and_stars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i64 } @necp_trim_dots_and_stars(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.substring, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %12 ]
  %15 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %38, %13
  %17 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 42
  br label %34

34:                                               ; preds = %27, %20
  %35 = phi i1 [ true, %20 ], [ %33, %27 ]
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi i1 [ false, %16 ], [ %35, %34 ]
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %16

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %74, %45
  %47 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 42
  br label %70

70:                                               ; preds = %60, %50
  %71 = phi i1 [ true, %50 ], [ %69, %60 ]
  br label %72

72:                                               ; preds = %70, %46
  %73 = phi i1 [ false, %46 ], [ %71, %70 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.substring, %struct.substring* %3, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %75, align 8
  br label %46

78:                                               ; preds = %72
  %79 = bitcast %struct.substring* %3 to { i8*, i64 }*
  %80 = load { i8*, i64 }, { i8*, i64 }* %79, align 8
  ret { i8*, i64 } %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
