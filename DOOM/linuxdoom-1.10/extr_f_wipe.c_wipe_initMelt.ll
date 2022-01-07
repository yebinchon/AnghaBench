; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_initMelt.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_initMelt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wipe_scr = common dso_local global i32 0, align 4
@wipe_scr_start = common dso_local global i64 0, align 8
@wipe_scr_end = common dso_local global i64 0, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@y = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wipe_initMelt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @wipe_scr, align 4
  %10 = load i64, i64* @wipe_scr_start, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call i32 @memcpy(i32 %9, i64 %10, i32 %13)
  %15 = load i64, i64* @wipe_scr_start, align 8
  %16 = inttoptr i64 %15 to i16*
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @wipe_shittyColMajorXform(i16* %16, i32 %18, i32 %19)
  %21 = load i64, i64* @wipe_scr_end, align 8
  %22 = inttoptr i64 %21 to i16*
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @wipe_shittyColMajorXform(i16* %22, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @PU_STATIC, align 4
  %32 = call i64 @Z_Malloc(i32 %30, i32 %31, i32 0)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** @y, align 8
  %34 = call i32 (...) @M_Random()
  %35 = srem i32 %34, 16
  %36 = sub nsw i32 0, %35
  %37 = load i32*, i32** @y, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %84, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = call i32 (...) @M_Random()
  %45 = srem i32 %44, 3
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** @y, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** @y, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32*, i32** @y, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load i32*, i32** @y, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 0, i32* %69, align 4
  br label %83

70:                                               ; preds = %43
  %71 = load i32*, i32** @y, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, -16
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32*, i32** @y, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 -15, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %39

87:                                               ; preds = %39
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @wipe_shittyColMajorXform(i16*, i32, i32) #1

declare dso_local i64 @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @M_Random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
