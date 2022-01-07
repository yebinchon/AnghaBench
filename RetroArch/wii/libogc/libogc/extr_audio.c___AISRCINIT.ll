; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AISRCINIT.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AISRCINIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AI_SCRESET = common dso_local global i32 0, align 4
@_aiReg = common dso_local global i32* null, align 8
@AI_CONTROL = common dso_local global i64 0, align 8
@AI_AISFR = common dso_local global i32 0, align 4
@AI_PSTAT = common dso_local global i32 0, align 4
@AI_SAMPLE_COUNT = common dso_local global i64 0, align 8
@bound_32KHz = common dso_local global i64 0, align 8
@buffer = common dso_local global i64 0, align 8
@bound_48KHz = common dso_local global i64 0, align 8
@max_wait = common dso_local global i64 0, align 8
@min_wait = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__AISRCINIT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__AISRCINIT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %114, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %115

11:                                               ; preds = %7
  %12 = load i32, i32* @AI_SCRESET, align 4
  %13 = load i32*, i32** @_aiReg, align 8
  %14 = load i64, i64* @AI_CONTROL, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @AI_AISFR, align 4
  %19 = xor i32 %18, -1
  %20 = load i32*, i32** @_aiReg, align 8
  %21 = load i64, i64* @AI_CONTROL, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @AI_PSTAT, align 4
  %26 = load i32*, i32** @_aiReg, align 8
  %27 = load i64, i64* @AI_CONTROL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** @_aiReg, align 8
  %32 = load i64, i64* @AI_SAMPLE_COUNT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 2147483647
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %44, %11
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @_aiReg, align 8
  %39 = load i64, i64* @AI_SAMPLE_COUNT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 2147483647
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %36

45:                                               ; preds = %36
  %46 = call i64 (...) @gettime()
  store i64 %46, i64* %3, align 8
  %47 = load i32, i32* @AI_AISFR, align 4
  %48 = load i32*, i32** @_aiReg, align 8
  %49 = load i64, i64* @AI_CONTROL, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @AI_PSTAT, align 4
  %54 = load i32*, i32** @_aiReg, align 8
  %55 = load i64, i64* @AI_CONTROL, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** @_aiReg, align 8
  %60 = load i64, i64* @AI_SAMPLE_COUNT, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 2147483647
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %72, %45
  %65 = load i32, i32* %2, align 4
  %66 = load i32*, i32** @_aiReg, align 8
  %67 = load i64, i64* @AI_SAMPLE_COUNT, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2147483647
  %71 = icmp eq i32 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %64

73:                                               ; preds = %64
  %74 = call i64 (...) @gettime()
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %3, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %5, align 8
  %78 = load i32, i32* @AI_AISFR, align 4
  %79 = xor i32 %78, -1
  %80 = load i32*, i32** @_aiReg, align 8
  %81 = load i64, i64* @AI_CONTROL, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @AI_PSTAT, align 4
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** @_aiReg, align 8
  %88 = load i64, i64* @AI_CONTROL, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @bound_32KHz, align 8
  %94 = load i64, i64* @buffer, align 8
  %95 = sub nsw i64 %93, %94
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %73
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @bound_32KHz, align 8
  %100 = load i64, i64* @buffer, align 8
  %101 = add nsw i64 %99, %100
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @bound_48KHz, align 8
  %106 = load i64, i64* @buffer, align 8
  %107 = sub nsw i64 %105, %106
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i64, i64* @max_wait, align 8
  store i64 %110, i64* %6, align 8
  store i32 1, i32* %1, align 4
  br label %111

111:                                              ; preds = %109, %103
  br label %114

112:                                              ; preds = %97, %73
  %113 = load i64, i64* @min_wait, align 8
  store i64 %113, i64* %6, align 8
  store i32 1, i32* %1, align 4
  br label %114

114:                                              ; preds = %112, %111
  br label %7

115:                                              ; preds = %7
  br label %116

116:                                              ; preds = %122, %115
  %117 = load i64, i64* %4, align 8
  %118 = call i64 (...) @gettime()
  %119 = call i64 @diff_ticks(i64 %117, i64 %118)
  %120 = load i64, i64* %6, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %116

123:                                              ; preds = %116
  ret void
}

declare dso_local i64 @gettime(...) #1

declare dso_local i64 @diff_ticks(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
