; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_output.c_outu.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_output.c_outu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32*, i8*)* @outu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @outu(i64 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [25 x i8], align 16
  %10 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 25
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %14, i8** %10, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %24, %4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = urem i64 %16, %18
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %10, align 8
  store i8 %21, i8* %23, align 1
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = udiv i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %15, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @outs(i8* %31, i32* %32, i8* %33)
  ret i8* %34
}

declare dso_local i8* @outs(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
