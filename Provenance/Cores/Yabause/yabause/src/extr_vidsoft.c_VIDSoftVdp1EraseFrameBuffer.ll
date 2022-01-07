; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1EraseFrameBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1EraseFrameBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@Vdp1External = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vdp1height = common dso_local global i32 0, align 4
@vdp1width = common dso_local global i32 0, align 4
@vdp1pixelsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1EraseFrameBuffer(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Vdp1External, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %15, %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 511
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @vdp1height, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @vdp1height, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 6
  %34 = and i32 %33, 1016
  %35 = add nsw i32 %34, 8
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @vdp1width, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @vdp1width, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = load i32, i32* @vdp1pixelsize, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %83

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 511
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %79, %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 6
  %58 = and i32 %57, 504
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %75, %53
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @vdp1width, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32 %66, i32* %74, align 4
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %59

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %49

82:                                               ; preds = %49
  br label %134

83:                                               ; preds = %41
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 9
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %88, 16
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 511
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %130, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 504
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %126, %98
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @vdp1width, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 262143
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 255
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %108
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %104

129:                                              ; preds = %104
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %94

133:                                              ; preds = %94
  br label %134

134:                                              ; preds = %133, %82
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Vdp1External, i32 0, i32 0), align 8
  br label %135

135:                                              ; preds = %134, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
