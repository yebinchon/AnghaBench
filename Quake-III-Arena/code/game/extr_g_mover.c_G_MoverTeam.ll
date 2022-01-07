; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_G_MoverTeam.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_G_MoverTeam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*)*, %struct.TYPE_15__, %struct.TYPE_16__*, i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@pushed = common dso_local global i32 0, align 4
@pushed_p = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@TR_LINEAR_STOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_MoverTeam(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  %9 = load i32, i32* @pushed, align 4
  store i32 %9, i32* @pushed_p, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %5, align 8
  br label %11

11:                                               ; preds = %48, %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %17, i64 %18, i32 %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %23, i64 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @VectorSubtract(i32 %27, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @VectorSubtract(i32 %34, i32 %38, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @G_MoverPush(%struct.TYPE_16__* %41, i32 %42, i32 %43, %struct.TYPE_16__** %6)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %14
  br label %52

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %5, align 8
  br label %11

52:                                               ; preds = %46, %11
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = icmp ne %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %116

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %5, align 8
  br label %57

57:                                               ; preds = %99, %55
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %103

60:                                               ; preds = %57
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 8
  %63 = sub nsw i64 %61, %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %63
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 1), align 8
  %72 = sub nsw i64 %70, %71
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %72
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %81, i64 %82, i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %90, i64 %91, i32 %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = call i32 @trap_LinkEntity(%struct.TYPE_16__* %97)
  br label %99

99:                                               ; preds = %60
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %5, align 8
  br label %57

103:                                              ; preds = %57
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)** %105, align 8
  %107 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = call i32 %111(%struct.TYPE_16__* %112, %struct.TYPE_16__* %113)
  br label %115

115:                                              ; preds = %108, %103
  br label %161

116:                                              ; preds = %52
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %5, align 8
  br label %118

118:                                              ; preds = %157, %116
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = icmp ne %struct.TYPE_16__* %119, null
  br i1 %120, label %121, label %161

121:                                              ; preds = %118
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TR_LINEAR_STOP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %121
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @level, i32 0, i32 0), align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %135, %140
  %142 = icmp sge i64 %130, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %129
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %145, align 8
  %147 = icmp ne i32 (%struct.TYPE_16__*)* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = call i32 %151(%struct.TYPE_16__* %152)
  br label %154

154:                                              ; preds = %148, %143
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155, %121
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %5, align 8
  br label %118

161:                                              ; preds = %115, %118
  ret void
}

declare dso_local i32 @BG_EvaluateTrajectory(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @G_MoverPush(%struct.TYPE_16__*, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
