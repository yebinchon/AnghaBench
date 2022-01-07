; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoDoHighPal555.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PicoDoHighPal555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HighPal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoDoHighPal555(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1, i32 0), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i64, i64* @HighPal, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 917518
  %24 = shl i32 %23, 12
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 14680288
  %27 = shl i32 %26, 3
  %28 = or i32 %24, %27
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 234884608
  %31 = lshr i32 %30, 7
  %32 = or i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 4
  %35 = and i32 %34, 140576865
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %16
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp ult i32 %51, 32
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %58, 1
  %60 = and i32 %59, 1938715534
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = or i32 96, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = or i32 32, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %60, i32* %70, align 4
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %50

74:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %98, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp ult i32 %76, 32
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = lshr i32 %83, 1
  %85 = and i32 %84, 1938715534
  %86 = add i32 %85, 1938715534
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = lshr i32 %87, 4
  %89 = and i32 %88, 140576865
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = or i32 64, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %75

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
