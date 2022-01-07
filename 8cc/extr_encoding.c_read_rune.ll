; ModuleID = '/home/carl/AnghaBench/8cc/extr_encoding.c_read_rune.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_encoding.c_read_rune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"invalid UTF-8 sequence\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid UTF-8 continuation byte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @read_rune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rune(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = call i32 @count_leading_ones(i8 signext %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %5, align 8
  store i8 %19, i8* %20, align 1
  store i32 1, i32* %4, align 4
  br label %120

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 192
  %43 = icmp ne i32 %42, 128
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %118 [
    i32 2, label %52
    i32 3, label %67
    i32 4, label %89
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 31
  %58 = shl i32 %57, 6
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 63
  %64 = or i32 %58, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  store i32 2, i32* %4, align 4
  br label %120

67:                                               ; preds = %50
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 %71, 15
  %73 = shl i32 %72, 12
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 63
  %79 = shl i32 %78, 6
  %80 = or i32 %73, %79
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 63
  %86 = or i32 %80, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %5, align 8
  store i8 %87, i8* %88, align 1
  store i32 3, i32* %4, align 4
  br label %120

89:                                               ; preds = %50
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 7
  %95 = shl i32 %94, 18
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %99, 63
  %101 = shl i32 %100, 12
  %102 = or i32 %95, %101
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 63
  %108 = shl i32 %107, 6
  %109 = or i32 %102, %108
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 63
  %115 = or i32 %109, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %5, align 8
  store i8 %116, i8* %117, align 1
  store i32 4, i32* %4, align 4
  br label %120

118:                                              ; preds = %50
  %119 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %89, %67, %52, %16
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @count_leading_ones(i8 signext) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
