; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeMonoToMono.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeMonoToMono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@cin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RllDecodeMonoToMono(i8* %0, i16* %1, i32 %2, i8 signext %3, i16 zeroext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i16 %4, i16* %10, align 2
  %13 = load i8, i8* %9, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i16, i16* %10, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 32768
  store i32 %18, i32* %12, align 4
  br label %22

19:                                               ; preds = %5
  %20 = load i16, i16* %10, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %19, %15
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %29, %38
  %40 = trunc i64 %39 to i16
  %41 = load i16*, i16** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %41, i64 %43
  store i16 %40, i16* %44, align 2
  %45 = sext i16 %40 to i32
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
