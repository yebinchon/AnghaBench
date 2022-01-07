; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_xmap_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_xmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EL_STATUS = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"xmap_set: tried to map bad range: %06x-%06x\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"xmap_set: ptr is not aligned: %08lx\00", align 1
@MAP_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i8*, i32)* @xmap_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmap_set(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = ptrtoint i8* %16 to i32
  store volatile i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %14, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %14, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %6
  %32 = load i32, i32* @EL_STATUS, align 4
  %33 = load i32, i32* @EL_ANOMALY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %86

38:                                               ; preds = %25
  %39 = load volatile i32, i32* %13, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @EL_STATUS, align 4
  %44 = load i32, i32* @EL_ANOMALY, align 4
  %45 = or i32 %43, %44
  %46 = load volatile i32, i32* %13, align 4
  %47 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %86

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load volatile i32, i32* %13, align 4
  %54 = sub nsw i32 %53, %52
  store volatile i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %83, %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %61, %62
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load volatile i32, i32* %13, align 4
  %67 = ashr i32 %66, 1
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load i32, i32* @MAP_FLAG, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %65
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %59

86:                                               ; preds = %31, %42, %59
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
