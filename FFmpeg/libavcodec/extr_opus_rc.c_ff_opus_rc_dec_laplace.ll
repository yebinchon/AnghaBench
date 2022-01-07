; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_rc.c_ff_opus_rc_dec_laplace.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_rc.c_ff_opus_rc_dec_laplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opus_rc_dec_laplace(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 15
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @FFMIN(i32 %22, i32 32768)
  %24 = sub nsw i32 32768, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 32736, %32
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 16384, %34
  %36 = mul nsw i32 %33, %35
  %37 = ashr i32 %36, 15
  %38 = add nsw i32 1, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %51, %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 %44, %46
  %48 = icmp sge i32 %43, %47
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i1 [ false, %39 ], [ %48, %42 ]
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 2
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %60, %61
  %63 = ashr i32 %62, 15
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %39

65:                                               ; preds = %49
  %66 = load i32, i32* %5, align 4
  %67 = icmp sle i32 %66, 1
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %68, %65
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %93

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @FFMIN(i32 %100, i32 32768)
  %102 = call i32 @opus_rc_dec_update(%struct.TYPE_4__* %95, i32 %96, i32 %97, i32 %101, i32 32768)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @opus_rc_dec_update(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
