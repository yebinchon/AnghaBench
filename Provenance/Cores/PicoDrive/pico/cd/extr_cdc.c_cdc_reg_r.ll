; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_reg_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i8, i32, i8**, i64*, i32, i32, i8*, i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@cdc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BIT_SHDREN = common dso_local global i64 0, align 8
@BIT_VALST = common dso_local global i8 0, align 1
@BIT_DECI = common dso_local global i8 0, align 1
@BIT_DTEI = common dso_local global i32 0, align 4
@BIT_DTEIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cdc_reg_r() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 15
  switch i32 %8, label %165 [
    i32 1, label %9
    i32 2, label %15
    i32 3, label %23
    i32 4, label %32
    i32 5, label %47
    i32 6, label %62
    i32 7, label %77
    i32 8, label %92
    i32 9, label %100
    i32 10, label %109
    i32 11, label %117
    i32 12, label %126
    i32 13, label %134
    i32 14, label %139
    i32 15, label %147
  ]

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  store i32 2, i32* %13, align 4
  %14 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  store i8 %14, i8* %1, align 1
  br label %166

15:                                               ; preds = %0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  store i32 3, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %1, align 1
  br label %166

23:                                               ; preds = %0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %1, align 1
  br label %166

32:                                               ; preds = %0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 5, i32* %36, align 4
  %37 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BIT_SHDREN, align 8
  %42 = and i64 %40, %41
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %1, align 1
  br label %166

47:                                               ; preds = %0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 6, i32* %51, align 4
  %52 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BIT_SHDREN, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds i8*, i8** %52, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %1, align 1
  br label %166

62:                                               ; preds = %0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  store i32 7, i32* %66, align 4
  %67 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %68 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BIT_SHDREN, align 8
  %72 = and i64 %70, %71
  %73 = getelementptr inbounds i8*, i8** %67, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %1, align 1
  br label %166

77:                                               ; preds = %0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 8, i32* %81, align 4
  %82 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %83 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BIT_SHDREN, align 8
  %87 = and i64 %85, %86
  %88 = getelementptr inbounds i8*, i8** %82, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %1, align 1
  br label %166

92:                                               ; preds = %0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 9, i32* %96, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %1, align 1
  br label %166

100:                                              ; preds = %0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  store i32 10, i32* %104, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %1, align 1
  br label %166

109:                                              ; preds = %0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  store i32 11, i32* %113, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 4
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %1, align 1
  br label %166

117:                                              ; preds = %0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  store i32 12, i32* %121, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 4
  %123 = ashr i32 %122, 8
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %1, align 1
  br label %166

126:                                              ; preds = %0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 13, i32* %130, align 4
  %131 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  store i8 %133, i8* %1, align 1
  br label %166

134:                                              ; preds = %0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  store i32 14, i32* %138, align 4
  store i8 0, i8* %1, align 1
  br label %166

139:                                              ; preds = %0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  store i32 15, i32* %143, align 4
  %144 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* %1, align 1
  br label %166

147:                                              ; preds = %0
  %148 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  %150 = load i8, i8* %149, align 1
  store i8 %150, i8* %2, align 1
  %151 = load i8, i8* @BIT_VALST, align 1
  %152 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 3
  store i8 %151, i8* %153, align 1
  %154 = load i8, i8* @BIT_DECI, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %157 = zext i8 %156 to i32
  %158 = or i32 %157, %155
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  store i32 0, i32* %163, align 4
  %164 = load i8, i8* %2, align 1
  store i8 %164, i8* %1, align 1
  br label %166

165:                                              ; preds = %0
  store i8 -1, i8* %1, align 1
  br label %166

166:                                              ; preds = %165, %147, %139, %134, %126, %117, %109, %100, %92, %77, %62, %47, %32, %23, %15, %9
  %167 = load i8, i8* %1, align 1
  ret i8 %167
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
