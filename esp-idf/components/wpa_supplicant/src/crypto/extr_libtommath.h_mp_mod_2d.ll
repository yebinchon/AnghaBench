; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_mp_mod_2d.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_mp_mod_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_8__*)* @mp_mod_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_mod_2d(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = call i32 @mp_zero(%struct.TYPE_8__* %13)
  %15 = load i32, i32* @MP_OKAY, align 4
  store i32 %15, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DIGIT_BIT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = icmp sge i32 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i32 @mp_copy(%struct.TYPE_8__* %25, %struct.TYPE_8__* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %83

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = call i32 @mp_copy(%struct.TYPE_8__* %30, %struct.TYPE_8__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @MP_OKAY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %83

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DIGIT_BIT, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DIGIT_BIT, align 4
  %43 = srem i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 1
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %61, %37
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @DIGIT_BIT, align 4
  %67 = srem i32 %65, %66
  %68 = shl i32 1, %67
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DIGIT_BIT, align 4
  %75 = sdiv i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %69
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = call i32 @mp_clamp(%struct.TYPE_8__* %80)
  %82 = load i32, i32* @MP_OKAY, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %64, %35, %24, %12
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @mp_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
