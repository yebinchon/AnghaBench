; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RunLerpFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_RunLerpFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64, double, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@dp_realtime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @UI_RunLerpFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_RunLerpFrame(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @UI_SetLerpFrameAnimation(i32* %20, %struct.TYPE_5__* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i64, i64* @dp_realtime, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %138

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %8, align 8
  %44 = load i64, i64* @dp_realtime, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %66

55:                                               ; preds = %30
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %49
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %73, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %66
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = srem i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %103, %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %118

110:                                              ; preds = %85
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  %115 = load i64, i64* @dp_realtime, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %110, %95
  br label %119

119:                                              ; preds = %118, %66
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* @dp_realtime, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load i64, i64* @dp_realtime, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %119
  br label %138

138:                                              ; preds = %137, %24
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @dp_realtime, align 8
  %143 = add nsw i64 %142, 200
  %144 = icmp sgt i64 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i64, i64* @dp_realtime, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %138
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @dp_realtime, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i64, i64* @dp_realtime, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  store double 0.000000e+00, double* %169, align 8
  br label %190

170:                                              ; preds = %159
  %171 = load i64, i64* @dp_realtime, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = sitofp i64 %175 to float
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = sitofp i64 %183 to float
  %185 = fdiv float %176, %184
  %186 = fpext float %185 to double
  %187 = fsub double 1.000000e+00, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 4
  store double %187, double* %189, align 8
  br label %190

190:                                              ; preds = %170, %167
  ret void
}

declare dso_local i32 @UI_SetLerpFrameAnimation(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
