; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_ps_read_extension_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacps.c_ps_read_extension_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8* }

@huff_ipd_dt = common dso_local global i32 0, align 4
@huff_ipd_df = common dso_local global i32 0, align 4
@huff_opd_dt = common dso_local global i32 0, align 4
@huff_opd_df = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @ps_read_extension_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_read_extension_data(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_bits_count(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @get_bits1(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %75

25:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %71, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @get_bits1(i32* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @huff_ipd_dt, align 4
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @huff_ipd_df, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @read_ipdopd_data(i32* null, i32* %36, %struct.TYPE_4__* %37, i32 %40, i32 %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i8* @get_bits1(i32* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* @huff_opd_dt, align 4
  br label %66

64:                                               ; preds = %47
  %65 = load i32, i32* @huff_opd_df, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @read_ipdopd_data(i32* null, i32* %55, %struct.TYPE_4__* %56, i32 %59, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %26

74:                                               ; preds = %26
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @skip_bits1(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @get_bits_count(i32* %78)
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %75, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @read_ipdopd_data(i32*, i32*, %struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
