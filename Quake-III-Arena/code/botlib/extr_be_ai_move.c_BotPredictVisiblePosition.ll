; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotPredictVisiblePosition.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotPredictVisiblePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MAX_AVOIDREACH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotPredictVisiblePosition(i32 %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @MAX_AVOIDREACH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @MAX_AVOIDREACH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca float, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i32, i32* @MAX_AVOIDREACH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

49:                                               ; preds = %42
  %50 = load i32, i32* @MAX_AVOIDREACH, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @Com_Memset(i32* %26, i32 0, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @VectorCopy(i32 %59, i32 %60)
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %143, %49
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 20
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  br i1 %72, label %73, label %146

73:                                               ; preds = %71
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @BotGetReachabilityToGoal(i32 %74, i32 %75, i32 %76, i32 %77, i32* %26, float* %29, i32* %32, %struct.TYPE_6__* %78, i32 %79, i32 %80, i32* null, i32 0, i32* null)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @qfalse, align 4
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

86:                                               ; preds = %73
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @AAS_ReachabilityFromNum(i32 %87, %struct.TYPE_7__* %12)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @BotVisible(i32 %91, i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @VectorCopy(i32 %101, i32 %102)
  %104 = load i32, i32* @qtrue, align 4
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

105:                                              ; preds = %86
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @BotVisible(i32 %108, i32 %111, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @VectorCopy(i32 %118, i32 %119)
  %121 = load i32, i32* @qtrue, align 4
  store i32 %121, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

122:                                              ; preds = %105
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @VectorCopy(i32 %131, i32 %132)
  %134 = load i32, i32* @qtrue, align 4
  store i32 %134, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %15, align 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %8, align 4
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @VectorCopy(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %62

146:                                              ; preds = %71
  %147 = load i32, i32* @qfalse, align 4
  store i32 %147, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %148

148:                                              ; preds = %146, %129, %116, %99, %84, %47, %40, %35
  %149 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @BotGetReachabilityToGoal(i32, i32, i32, i32, i32*, float*, i32*, %struct.TYPE_6__*, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_7__*) #2

declare dso_local i64 @BotVisible(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
