; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawServerMOTD.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawServerMOTD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i64, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@uiInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, float, i32)* @UI_DrawServerMOTD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawServerMOTD(%struct.TYPE_8__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %154

11:                                               ; preds = %3
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 1), align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 1), align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 5), align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %34 = add nsw i64 %33, 10
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 5), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 2
  %40 = icmp sle i32 %35, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %32
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 6), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load float, float* %5, align 4
  %50 = call i32 @Text_Width(i32* %48, float %49, i32 1)
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  br label %71

56:                                               ; preds = %41
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  br label %70

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  br label %70

70:                                               ; preds = %61, %59
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %71

71:                                               ; preds = %70, %45
  br label %81

72:                                               ; preds = %32
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %74 = sub nsw i32 %73, 2
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %28
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %89, 2
  %91 = sitofp i32 %90 to float
  store float %91, float* %7, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 2), align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = sub nsw i64 %99, 3
  %101 = load float, float* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 6), align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = call i32 @Text_Paint_Limit(float* %7, i32 %92, i64 %100, float %101, i32 %102, i32* %105, i32 0, i64 0)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %82
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = sub nsw i32 %116, 2
  %118 = sitofp i32 %117 to float
  store float %118, float* %8, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = sub nsw i64 %126, 3
  %128 = load float, float* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 6), align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %132 = call i32 @Text_Paint_Limit(float* %8, i32 %119, i64 %127, float %128, i32 %129, i32* %130, i32 0, i64 %131)
  br label %133

133:                                              ; preds = %109, %82
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 4), align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load float, float* %7, align 4
  %138 = fcmp ogt float %137, 0.000000e+00
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = sub nsw i32 %149, 2
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %151

151:                                              ; preds = %142, %139
  br label %153

152:                                              ; preds = %136, %133
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @uiInfo, i32 0, i32 0, i32 3), align 8
  br label %153

153:                                              ; preds = %152, %151
  br label %154

154:                                              ; preds = %153, %3
  ret void
}

declare dso_local i32 @Text_Width(i32*, float, i32) #1

declare dso_local i32 @Text_Paint_Limit(float*, i32, i64, float, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
