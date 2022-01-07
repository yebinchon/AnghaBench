; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hqdn3d_denoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i16*, i16**, i32, i32, i16*, i16*)* @hqdn3d_denoise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqdn3d_denoise(i8* %0, i8* %1, i16* %2, i16** %3, i32 %4, i32 %5, i16* %6, i16* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i16* %2, i16** %11, align 8
  store i16** %3, i16*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i16* %6, i16** %15, align 8
  store i16* %7, i16** %16, align 8
  %21 = load i16**, i16*** %12, align 8
  %22 = load i16*, i16** %21, align 8
  store i16* %22, i16** %19, align 8
  %23 = load i16*, i16** %19, align 8
  %24 = icmp ne i16* %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %8
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %20, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 2
  %32 = trunc i64 %31 to i32
  %33 = call i16* @malloc(i32 %32)
  store i16* %33, i16** %19, align 8
  %34 = load i16**, i16*** %12, align 8
  store i16* %33, i16** %34, align 8
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %61, %25
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = trunc i32 %51 to i16
  %53 = load i16*, i16** %19, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %53, i64 %55
  store i16 %52, i16* %56, align 2
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %17, align 4
  br label %40

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i16*, i16** %19, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i16, i16* %69, i64 %70
  store i16* %71, i16** %19, align 8
  br label %35

72:                                               ; preds = %35
  %73 = load i8*, i8** %20, align 8
  store i8* %73, i8** %9, align 8
  %74 = load i16**, i16*** %12, align 8
  %75 = load i16*, i16** %74, align 8
  store i16* %75, i16** %19, align 8
  br label %76

76:                                               ; preds = %72, %8
  %77 = load i16*, i16** %15, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 0
  %79 = load i16, i16* %78, align 2
  %80 = icmp ne i16 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i16*, i16** %11, align 8
  %85 = load i16*, i16** %19, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i16*, i16** %15, align 8
  %89 = load i16*, i16** %16, align 8
  %90 = call i32 @hqdn3d_denoise_spatial(i8* %82, i8* %83, i16* %84, i16* %85, i32 %86, i32 %87, i16* %88, i16* %89)
  br label %99

91:                                               ; preds = %76
  %92 = load i8*, i8** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i16*, i16** %19, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i16*, i16** %16, align 8
  %98 = call i32 @hqdn3d_denoise_temporal(i8* %92, i8* %93, i16* %94, i32 %95, i32 %96, i16* %97)
  br label %99

99:                                               ; preds = %91, %81
  ret void
}

declare dso_local i16* @malloc(i32) #1

declare dso_local i32 @hqdn3d_denoise_spatial(i8*, i8*, i16*, i16*, i32, i32, i16*, i16*) #1

declare dso_local i32 @hqdn3d_denoise_temporal(i8*, i8*, i16*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
