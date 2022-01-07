; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_s68k_reg_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_s68k_reg_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s68k_reg_write16(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 496
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %88

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %77 [
    i32 14, label %15
    i32 88, label %19
    i32 90, label %24
    i32 92, label %33
    i32 94, label %38
    i32 96, label %47
    i32 98, label %52
    i32 100, label %61
    i32 102, label %65
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 15
  store i32 %16, i32* %18, align 4
  br label %112

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 7
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 89
  store i32 %21, i32* %23, align 4
  br label %112

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 90
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 224
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 91
  store i32 %30, i32* %32, align 4
  br label %112

33:                                               ; preds = %13
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 31
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 93
  store i32 %35, i32* %37, align 4
  br label %112

38:                                               ; preds = %13
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 94
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 248
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 95
  store i32 %44, i32* %46, align 4
  br label %112

47:                                               ; preds = %13
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 63
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 97
  store i32 %49, i32* %51, align 4
  br label %112

52:                                               ; preds = %13
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 1
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 98
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 99
  store i32 %58, i32* %60, align 4
  br label %112

61:                                               ; preds = %13
  %62 = load i32, i32* %4, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 101
  store i32 %62, i32* %64, align 4
  br label %112

65:                                               ; preds = %13
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 65534
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 102
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 103
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @gfx_start(i32 %75)
  br label %112

77:                                               ; preds = %13
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 8
  %82 = call i32 @s68k_reg_write8(i32 %79, i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 255
  %87 = call i32 @s68k_reg_write8(i32 %84, i32 %86)
  br label %112

88:                                               ; preds = %12
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %88
  %107 = call i32 @SekEndRunS68k(i32 0)
  br label %108

108:                                              ; preds = %106, %88
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %78, %65, %61, %52, %47, %38, %33, %24, %19, %15
  ret void
}

declare dso_local i32 @gfx_start(i32) #1

declare dso_local i32 @s68k_reg_write8(i32, i32) #1

declare dso_local i32 @SekEndRunS68k(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
