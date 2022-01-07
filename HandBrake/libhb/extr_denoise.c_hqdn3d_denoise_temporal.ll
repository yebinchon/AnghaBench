; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise_temporal.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise_temporal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16*, i32, i32, i16*)* @hqdn3d_denoise_temporal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqdn3d_denoise_temporal(i8* %0, i8* %1, i16* %2, i32 %3, i32 %4, i16* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16* %2, i16** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i16* %5, i16** %12, align 8
  %16 = load i16*, i16** %12, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 4096
  store i16* %17, i16** %12, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %72, %6
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i16*, i16** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %28, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = trunc i32 %39 to i8
  %41 = load i16*, i16** %12, align 8
  %42 = call i32 @hqdn3d_lowpass_mul(i16 zeroext %32, i8 zeroext %40, i16* %41)
  store i32 %42, i32* %15, align 4
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  store i16 %43, i16* %47, align 2
  %48 = load i32, i32* %15, align 4
  %49 = add i32 %48, 127
  %50 = lshr i32 %49, 8
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i16*, i16** %9, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i16, i16* %69, i64 %70
  store i16* %71, i16** %9, align 8
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %18

75:                                               ; preds = %18
  ret void
}

declare dso_local i32 @hqdn3d_lowpass_mul(i16 zeroext, i8 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
