; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_regset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/discord-rpc/src/extr_discord_register_win.c_regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i32, i8*, i32)* @regset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regset(i64 %0, i64* %1, i64* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %6
  %21 = load i64*, i64** %9, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %29 = call i32 @RegCreateKeyExW(i64 %26, i64* %27, i32 0, i32 0, i32 0, i32 %28, i32 0, i64* %15, i32 0)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* @ERROR_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %7, align 4
  br label %55

34:                                               ; preds = %25
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %34, %20, %6
  %37 = load i64, i64* %14, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @RegSetValueExW(i64 %37, i64* %38, i32 0, i32 %39, i32* %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @RegCloseKey(i64 %51)
  br label %53

53:                                               ; preds = %50, %46, %36
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @RegCreateKeyExW(i64, i64*, i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @RegSetValueExW(i64, i64*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
