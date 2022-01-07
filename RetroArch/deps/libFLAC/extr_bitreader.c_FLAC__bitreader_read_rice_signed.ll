; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_rice_signed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_bitreader.c_FLAC__bitreader_read_rice_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__bitreader_read_rice_signed(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* null, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @FLAC__ASSERT(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @FLAC__ASSERT(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ule i32 %21, 31
  %23 = zext i1 %22 to i32
  %24 = call i32 @FLAC__ASSERT(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i32 @FLAC__bitreader_read_unary_unsigned(%struct.TYPE_5__* %25, i32* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

29:                                               ; preds = %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_5__* %30, i32* %8, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %55

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %45, 1
  %47 = sub nsw i32 0, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = lshr i32 %51, 1
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %44
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %34, %28
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__bitreader_read_unary_unsigned(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
