; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_h263_decode_dquant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263dec.c_h263_decode_dquant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }

@h263_decode_dquant.quant_tab = internal constant [4 x i32] [i32 -1, i32 -2, i32 1, i32 2], align 16
@ff_modified_quant_tab = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @h263_decode_dquant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h263_decode_dquant(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call i64 @get_bits1(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load i64**, i64*** @ff_modified_quant_tab, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i64 @get_bits1(i32* %15)
  %17 = getelementptr inbounds i64*, i64** %13, i64 %16
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %32

26:                                               ; preds = %7
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i64 @get_bits(i32* %28, i32 5)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %12
  br label %44

33:                                               ; preds = %1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i64 @get_bits(i32* %35, i32 2)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* @h263_decode_dquant.quant_tab, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %33, %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ff_set_qscale(%struct.TYPE_4__* %45, i64 %48)
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @ff_set_qscale(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
