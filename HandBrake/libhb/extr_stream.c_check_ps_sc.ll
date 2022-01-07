; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_check_ps_sc.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_check_ps_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_ps_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ps_sc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 4
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 241
  %17 = icmp ne i32 %16, 33
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 6
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 128
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 11
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30, %24, %18, %12
  store i32 0, i32* %2, align 4
  br label %108

43:                                               ; preds = %36
  store i32 12, i32* %4, align 4
  br label %81

44:                                               ; preds = %1
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 196
  %49 = icmp ne i32 %48, 68
  br i1 %49, label %74, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 4
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 12
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %62, %56, %50, %44
  store i32 0, i32* %2, align 4
  br label %108

75:                                               ; preds = %68
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 13
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 7
  %80 = add nsw i32 14, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %43
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br label %105

105:                                              ; preds = %97, %89, %81
  %106 = phi i1 [ false, %89 ], [ false, %81 ], [ %104, %97 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %74, %42
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
