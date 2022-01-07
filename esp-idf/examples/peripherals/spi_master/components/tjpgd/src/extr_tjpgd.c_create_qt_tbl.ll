; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_create_qt_tbl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_create_qt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64** }

@JDR_FMT1 = common dso_local global i32 0, align 4
@JDR_MEM1 = common dso_local global i32 0, align 4
@JDR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @create_qt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_qt_tbl(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %68, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 65
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @JDR_FMT1, align 4
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 65
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 240
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @JDR_FMT1, align 4
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i64* @alloc_pool(%struct.TYPE_4__* %34, i32 512)
  store i64* %35, i64** %11, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @JDR_MEM1, align 4
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %31
  %41 = load i64*, i64** %11, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64**, i64*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  store i64* %41, i64** %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %40
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 64
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ZIG(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* %54, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @IPSF(i32 %57)
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %11, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  br label %12

69:                                               ; preds = %12
  %70 = load i32, i32* @JDR_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %38, %29, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64* @alloc_pool(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ZIG(i32) #1

declare dso_local i32 @IPSF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
