; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_read_pad_6btn.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_read_pad_6btn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@PicoPadInt = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @read_pad_6btn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pad_6btn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** @PicoPadInt, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 64
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 192
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %8, align 4
  br label %65

30:                                               ; preds = %22, %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 48
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 15
  %43 = or i32 %39, %42
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 192
  %47 = ashr i32 %46, 2
  %48 = or i32 %47, 15
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 64
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 63
  store i32 %56, i32* %8, align 4
  br label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 192
  %60 = ashr i32 %59, 2
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 3
  %63 = or i32 %60, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 64
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %44, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
