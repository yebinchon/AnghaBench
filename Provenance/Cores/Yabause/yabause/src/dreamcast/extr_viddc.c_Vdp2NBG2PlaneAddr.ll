; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2NBG2PlaneAddr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2NBG2PlaneAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@Vdp2Regs = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @Vdp2NBG2PlaneAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdp2NBG2PlaneAddr(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1792
  %13 = ashr i32 %12, 2
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %43 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %29
    i32 3, label %36
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  %21 = or i32 %16, %20
  store i32 %21, i32* %6, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = or i32 %23, %27
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  %35 = or i32 %30, %34
  store i32 %35, i32* %6, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp2Regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = or i32 %37, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %2, %36, %29, %22, %15
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %7, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %88

63:                                               ; preds = %43
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 63
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %73, 8192
  %75 = mul nsw i32 %72, %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %87

78:                                               ; preds = %63
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %82, 2048
  %84 = mul nsw i32 %81, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %68
  br label %114

88:                                               ; preds = %43
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 31
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 16384
  %100 = mul nsw i32 %97, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  br label %113

103:                                              ; preds = %88
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 127
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %108, 4096
  %110 = mul nsw i32 %107, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %93
  br label %114

114:                                              ; preds = %113, %87
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
