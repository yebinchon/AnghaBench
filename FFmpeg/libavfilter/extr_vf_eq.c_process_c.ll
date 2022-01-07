; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_process_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_process_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32*, i32, i32, i32)* @process_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_c(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 256
  %24 = mul nsw i32 %23, 16
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fmul double 1.000000e+02, %27
  %29 = fadd double %28, 1.000000e+02
  %30 = fptosi double %29 to i32
  %31 = mul nsw i32 %30, 511
  %32 = sdiv i32 %31, 200
  %33 = sub nsw i32 %32, 128
  %34 = load i32, i32* %18, align 4
  %35 = sdiv i32 %34, 32
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %82, %7
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %18, align 4
  %57 = mul nsw i32 %55, %56
  %58 = ashr i32 %57, 12
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = and i32 %61, -256
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %46
  %65 = load i32, i32* %17, align 4
  %66 = sub nsw i32 0, %65
  %67 = ashr i32 %66, 31
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %64, %46
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %42

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %37

85:                                               ; preds = %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
