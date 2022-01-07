; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_updcrc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_fcr.c_l2c_fcr_updcrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16, i8*, i32)* @l2c_fcr_updcrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @l2c_fcr_updcrc(i16 zeroext %0, i8* %1, i32 %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i16, i16* %4, align 2
  store i16 %10, i16* %7, align 2
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = load i16*, i16** @crctab, align 8
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 255
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %25, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %22, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %21, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %7, align 2
  br label %13

37:                                               ; preds = %13
  %38 = load i16, i16* %7, align 2
  ret i16 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
