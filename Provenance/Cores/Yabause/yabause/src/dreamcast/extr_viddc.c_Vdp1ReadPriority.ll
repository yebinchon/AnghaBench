; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp1ReadPriority.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp1ReadPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"sprite type %d not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @Vdp1ReadPriority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vdp1ReadPriority(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 7
  store i32 %26, i32* %2, align 4
  br label %167

27:                                               ; preds = %16, %1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 15
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %164 [
    i32 0, label %31
    i32 1, label %50
    i32 3, label %69
    i32 4, label %88
    i32 5, label %107
    i32 6, label %126
    i32 7, label %145
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 32768
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %39, 16384
  %41 = or i32 %35, %40
  %42 = ashr i32 %41, 14
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 7
  store i32 %49, i32* %2, align 4
  br label %167

50:                                               ; preds = %27
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 49152
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %58, 8192
  %60 = or i32 %54, %59
  %61 = ashr i32 %60, 13
  store i32 %61, i32* %5, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  store i32 %68, i32* %2, align 4
  br label %167

69:                                               ; preds = %27
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 16384
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %77, 8192
  %79 = or i32 %73, %78
  %80 = ashr i32 %79, 13
  store i32 %80, i32* %5, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %5, align 4
  %83 = xor i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 7
  store i32 %87, i32* %2, align 4
  br label %167

88:                                               ; preds = %27
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 16384
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %96, 8192
  %98 = or i32 %92, %97
  %99 = ashr i32 %98, 13
  store i32 %99, i32* %5, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = xor i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 7
  store i32 %106, i32* %2, align 4
  br label %167

107:                                              ; preds = %27
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 24576
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %115, 4096
  %117 = or i32 %111, %116
  %118 = ashr i32 %117, 12
  store i32 %118, i32* %5, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %5, align 4
  %121 = xor i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 7
  store i32 %125, i32* %2, align 4
  br label %167

126:                                              ; preds = %27
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 24576
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %134, 4096
  %136 = or i32 %130, %135
  %137 = ashr i32 %136, 12
  store i32 %137, i32* %5, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %5, align 4
  %140 = xor i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 7
  store i32 %144, i32* %2, align 4
  br label %167

145:                                              ; preds = %27
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 24576
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = xor i32 %152, -1
  %154 = and i32 %153, 4096
  %155 = or i32 %149, %154
  %156 = ashr i32 %155, 12
  store i32 %156, i32* %5, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %5, align 4
  %159 = xor i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 7
  store i32 %163, i32* %2, align 4
  br label %167

164:                                              ; preds = %27
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @VDP1LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %165)
  store i32 7, i32* %2, align 4
  br label %167

167:                                              ; preds = %164, %145, %126, %107, %88, %69, %50, %31, %22
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @VDP1LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
