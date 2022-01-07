; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2pico.c_sh2_execute_interpreter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2pico.c_sh2_execute_interpreter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, {}*, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sh2_execute_interpreter(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %176

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %173, %16
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @RW(%struct.TYPE_22__* %28, i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 2
  store i64 %36, i64* %34, align 8
  br label %48

37:                                               ; preds = %17
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 7
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @RW(%struct.TYPE_22__* %43, i64 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %37, %22
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 2
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 61440
  switch i32 %56, label %117 [
    i32 0, label %57
    i32 4096, label %61
    i32 8192, label %65
    i32 12288, label %69
    i32 16384, label %73
    i32 20480, label %77
    i32 24576, label %81
    i32 28672, label %85
    i32 32768, label %89
    i32 36864, label %93
    i32 40960, label %97
    i32 45056, label %101
    i32 49152, label %105
    i32 53248, label %109
    i32 57344, label %113
  ]

57:                                               ; preds = %48
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @op0000(%struct.TYPE_22__* %58, i32 %59)
  br label %121

61:                                               ; preds = %48
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @op0001(%struct.TYPE_22__* %62, i32 %63)
  br label %121

65:                                               ; preds = %48
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @op0010(%struct.TYPE_22__* %66, i32 %67)
  br label %121

69:                                               ; preds = %48
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @op0011(%struct.TYPE_22__* %70, i32 %71)
  br label %121

73:                                               ; preds = %48
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @op0100(%struct.TYPE_22__* %74, i32 %75)
  br label %121

77:                                               ; preds = %48
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @op0101(%struct.TYPE_22__* %78, i32 %79)
  br label %121

81:                                               ; preds = %48
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @op0110(%struct.TYPE_22__* %82, i32 %83)
  br label %121

85:                                               ; preds = %48
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @op0111(%struct.TYPE_22__* %86, i32 %87)
  br label %121

89:                                               ; preds = %48
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @op1000(%struct.TYPE_22__* %90, i32 %91)
  br label %121

93:                                               ; preds = %48
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @op1001(%struct.TYPE_22__* %94, i32 %95)
  br label %121

97:                                               ; preds = %48
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @op1010(%struct.TYPE_22__* %98, i32 %99)
  br label %121

101:                                              ; preds = %48
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @op1011(%struct.TYPE_22__* %102, i32 %103)
  br label %121

105:                                              ; preds = %48
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @op1100(%struct.TYPE_22__* %106, i32 %107)
  br label %121

109:                                              ; preds = %48
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @op1101(%struct.TYPE_22__* %110, i32 %111)
  br label %121

113:                                              ; preds = %48
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @op1110(%struct.TYPE_22__* %114, i32 %115)
  br label %121

117:                                              ; preds = %48
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @op1111(%struct.TYPE_22__* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %121
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %162, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = ashr i32 %141, 4
  %143 = and i32 %142, 15
  %144 = icmp sgt i32 %138, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %135
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %6, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = bitcast {}** %150 to i32 (%struct.TYPE_22__*, i32)**
  %152 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 %152(%struct.TYPE_22__* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @sh2_do_irq(%struct.TYPE_22__* %156, i32 %157, i32 %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %145, %135, %130, %121
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %168, %163
  %174 = phi i1 [ true, %163 ], [ %172, %168 ]
  br i1 %174, label %17, label %175

175:                                              ; preds = %173
  br label %176

176:                                              ; preds = %175, %15
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  ret i32 %179
}

declare dso_local i32 @RW(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @op0000(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0001(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0010(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0011(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0100(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0101(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0110(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op0111(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1000(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1001(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1010(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1011(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1100(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1101(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1110(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @op1111(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @sh2_do_irq(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
