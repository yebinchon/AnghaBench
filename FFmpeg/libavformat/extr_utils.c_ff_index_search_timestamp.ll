; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_index_search_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_index_search_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@AVINDEX_DISCARD_FRAME = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_index_search_timestamp(%struct.TYPE_3__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %17, %4
  br label %31

31:                                               ; preds = %99, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %37, %38
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %80, %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @AVINDEX_DISCARD_FRAME, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br label %60

60:                                               ; preds = %55, %51, %41
  %61 = phi i1 [ false, %51 ], [ false, %41 ], [ %59, %55 ]
  br i1 %61, label %62, label %81

62:                                               ; preds = %60
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %81

80:                                               ; preds = %68, %62
  br label %41

81:                                               ; preds = %77, %60
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %93
  br label %31

100:                                              ; preds = %31
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %146, label %115

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %136, %115
  %117 = load i32, i32* %12, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %123, %119, %116
  %135 = phi i1 [ false, %119 ], [ false, %116 ], [ %133, %123 ]
  br i1 %135, label %136, label %145

136:                                              ; preds = %134
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 -1, i32 1
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %116

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %109
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 -1, i32* %5, align 4
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
