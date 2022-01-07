; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/common/extr_nes_ntsc.c_merge_kernel_fields.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/common/extr_nes_ntsc.c_merge_kernel_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@burst_size = common dso_local global i64 0, align 8
@rgb_bias = common dso_local global i32 0, align 4
@nes_ntsc_rgb_builder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @merge_kernel_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_kernel_fields(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i64, i64* @burst_size, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %84, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %87

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = load i64, i64* @burst_size, align 8
  %15 = mul i64 %14, 0
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @rgb_bias, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i64, i64* @burst_size, align 8
  %22 = mul i64 %21, 1
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @rgb_bias, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* @burst_size, align 8
  %29 = mul i64 %28, 2
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @rgb_bias, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %37, %38
  %40 = load i32, i32* @nes_ntsc_rgb_builder, align 4
  %41 = and i32 %39, %40
  %42 = sub nsw i32 %36, %41
  %43 = ashr i32 %42, 1
  %44 = load i32, i32* @rgb_bias, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32*, i32** %2, align 8
  %47 = load i64, i64* @burst_size, align 8
  %48 = mul i64 %47, 0
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = xor i32 %53, %54
  %56 = load i32, i32* @nes_ntsc_rgb_builder, align 4
  %57 = and i32 %55, %56
  %58 = sub nsw i32 %52, %57
  %59 = ashr i32 %58, 1
  %60 = load i32, i32* @rgb_bias, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32*, i32** %2, align 8
  %63 = load i64, i64* @burst_size, align 8
  %64 = mul i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = xor i32 %69, %70
  %72 = load i32, i32* @nes_ntsc_rgb_builder, align 4
  %73 = and i32 %71, %72
  %74 = sub nsw i32 %68, %73
  %75 = ashr i32 %74, 1
  %76 = load i32, i32* @rgb_bias, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32*, i32** %2, align 8
  %79 = load i64, i64* @burst_size, align 8
  %80 = mul i64 %79, 2
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %2, align 8
  br label %84

84:                                               ; preds = %12
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %3, align 4
  br label %9

87:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
