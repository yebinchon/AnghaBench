; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_parse_3_vals.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_parse_3_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @parse_3_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_3_vals(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strtoul(i8* %11, i8** %10, i32 0)
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %53

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @sskip(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 44
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %53

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strtoul(i8* %28, i8** %10, i32 0)
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %53

35:                                               ; preds = %27
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @sskip(i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 44
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %53

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strtoul(i8* %45, i8** %10, i32 0)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %54

53:                                               ; preds = %51, %43, %34, %26, %17
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @sskip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
