; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_huffext.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_huffext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32 (%struct.TYPE_4__*, i32*, i32)* }

@JD_SZBUF = common dso_local global i32 0, align 4
@JDR_INP = common dso_local global i64 0, align 8
@JDR_FMT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32*)* @huffext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huffext(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 16, i32* %16, align 4
  br label %29

29:                                               ; preds = %125, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @JD_SZBUF, align 4
  %45 = call i32 %41(%struct.TYPE_4__* %42, i32* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %35
  %49 = load i64, i64* @JDR_INP, align 8
  %50 = trunc i64 %49 to i32
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %132

52:                                               ; preds = %35
  br label %56

53:                                               ; preds = %32
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %12, align 8
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* @JDR_FMT1, align 8
  %67 = trunc i64 %66 to i32
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %132

69:                                               ; preds = %61
  store i32 255, i32* %11, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 255, i32* %70, align 4
  br label %78

71:                                               ; preds = %56
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %125

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %69
  store i32 128, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i32, i32* %14, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %10, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  %94 = load i32, i32* %92, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %119, %89
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  %102 = load i32, i32* %100, align 4
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  br label %132

116:                                              ; preds = %98
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %17, align 4
  br label %95

122:                                              ; preds = %95
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %122, %76
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %29, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @JDR_FMT1, align 8
  %130 = trunc i64 %129 to i32
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %104, %65, %48
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
