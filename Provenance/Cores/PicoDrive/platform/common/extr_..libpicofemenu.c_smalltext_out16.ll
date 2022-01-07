; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_smalltext_out16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_smalltext_out16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@me_sfont_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @smalltext_out16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smalltext_out16(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @g_menuscreen_w, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @me_sfont_w, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %36

19:                                               ; preds = %4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strncpy(i8* %20, i8* %21, i32 128)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 127
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 127, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @smalltext_out16_(i32 %31, i32 %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @smalltext_out16_(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
