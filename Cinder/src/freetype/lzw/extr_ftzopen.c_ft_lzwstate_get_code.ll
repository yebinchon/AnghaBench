; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/lzw/extr_ftzopen.c_ft_lzwstate_get_code.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/lzw/extr_ftzopen.c_ft_lzwstate_get_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64*, i64 }

@LZW_MAX_BITS = common dso_local global i64 0, align 8
@LZW_INIT_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ft_lzwstate_get_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_lzwstate_get_code(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %24, %18, %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %32
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @LZW_MAX_BITS, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %146

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i64, i64* %4, align 8
  %59 = shl i64 1, %58
  %60 = sub i64 %59, 256
  br label %66

61:                                               ; preds = %49
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i64 [ %60, %57 ], [ %65, %61 ]
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %32
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* @LZW_INIT_BITS, align 8
  store i64 %76, i64* %4, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %4, align 8
  %80 = shl i64 1, %79
  %81 = sub i64 %80, 256
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 8
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %75, %70
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = call i64 @ft_lzwstate_refill(%struct.TYPE_4__* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %2, align 4
  br label %146

91:                                               ; preds = %86
  store i64 0, i64* %5, align 8
  br label %92

92:                                               ; preds = %91, %24
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %4, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = lshr i64 %101, 3
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64* %103, i64** %6, align 8
  %104 = load i64, i64* %5, align 8
  %105 = and i64 %104, 7
  store i64 %105, i64* %5, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %6, align 8
  %108 = load i64, i64* %106, align 8
  %109 = load i64, i64* %5, align 8
  %110 = lshr i64 %108, %109
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %5, align 8
  %112 = sub i64 8, %111
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %4, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = icmp uge i64 %116, 8
  br i1 %117, label %118, label %130

118:                                              ; preds = %92
  %119 = load i64*, i64** %6, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %6, align 8
  %121 = load i64, i64* %119, align 8
  %122 = load i64, i64* %5, align 8
  %123 = shl i64 %121, %122
  %124 = load i64, i64* %7, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 8
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %4, align 8
  %129 = sub i64 %128, 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %118, %92
  %131 = load i64, i64* %4, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i64*, i64** %6, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i64 @LZW_MASK(i64 %136)
  %138 = and i64 %135, %137
  %139 = load i64, i64* %5, align 8
  %140 = shl i64 %138, %139
  %141 = load i64, i64* %7, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %133, %130
  %144 = load i64, i64* %7, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %90, %48
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @ft_lzwstate_refill(%struct.TYPE_4__*) #1

declare dso_local i64 @LZW_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
