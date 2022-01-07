; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_envelope_calculate_ampl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_envelope_calculate_ampl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envelope = type { i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.envelope*, i32)* @envelope_calculate_ampl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelope_calculate_ampl(%struct.envelope* %0, i32 %1) #0 {
  %3 = alloca %struct.envelope*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.envelope* %0, %struct.envelope** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.envelope*, %struct.envelope** %3, align 8
  %11 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.envelope*, %struct.envelope** %3, align 8
  %14 = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.envelope*, %struct.envelope** %3, align 8
  %22 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.envelope*, %struct.envelope** %3, align 8
  %25 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %20, %30
  br i1 %31, label %32, label %112

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.envelope*, %struct.envelope** %3, align 8
  %36 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.envelope*, %struct.envelope** %3, align 8
  %41 = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.envelope*, %struct.envelope** %3, align 8
  %57 = getelementptr inbounds %struct.envelope, %struct.envelope* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.envelope*, %struct.envelope** %3, align 8
  %65 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %63, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.envelope*, %struct.envelope** %3, align 8
  %73 = getelementptr inbounds %struct.envelope, %struct.envelope* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.envelope*, %struct.envelope** %3, align 8
  %81 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %79, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.envelope*, %struct.envelope** %3, align 8
  %89 = getelementptr inbounds %struct.envelope, %struct.envelope* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, 24
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.envelope*, %struct.envelope** %3, align 8
  %101 = getelementptr inbounds %struct.envelope, %struct.envelope* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %99, %106
  %108 = mul nsw i32 %98, %107
  %109 = ashr i32 %108, 24
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %55, %2
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
