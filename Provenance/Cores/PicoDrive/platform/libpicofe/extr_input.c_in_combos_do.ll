; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_combos_do.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_combos_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_combos_do(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %113, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %116

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %113

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %31 = call i64 @IN_BIND_OFFS(i32 %29, i32 %30)
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %113

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %113

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %97, %54
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %71 = call i64 @IN_BIND_OFFS(i32 %69, i32 %70)
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %82 = call i64 @IN_BIND_OFFS(i32 %80, i32 %81)
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %78, %84
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* %15, align 4
  %91 = shl i32 1, %90
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %100

96:                                               ; preds = %67, %61
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %57

100:                                              ; preds = %77, %57
  br label %101

101:                                              ; preds = %100, %47
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %105, %101
  br label %113

113:                                              ; preds = %112, %43, %36, %26
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %16

116:                                              ; preds = %16
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
