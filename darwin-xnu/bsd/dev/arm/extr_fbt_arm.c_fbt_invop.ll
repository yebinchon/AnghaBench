; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fbt_arm.c_fbt_invop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_fbt_arm.c_fbt_invop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.arm_saved_state = type { i32, i32, i64*, i64 }

@fbt_probetab = common dso_local global %struct.TYPE_4__** null, align 8
@CPU = common dso_local global %struct.TYPE_5__* null, align 8
@PSR_MODE_MASK = common dso_local global i32 0, align 4
@PSR_FIQ_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dtrace: fbt: The probe at %08x was called from FIQ_MODE\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"dtrace: fbt: Instruction stream error: Middle of IT block at %08x\00", align 1
@DTRACE_INVOP_NOP = common dso_local global i32 0, align 4
@VFPSAVE_ALIGN_DTRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_invop(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.arm_saved_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @fbt_probetab, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @FBT_ADDR2NDX(i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  br label %19

19:                                               ; preds = %178, %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %182

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %177

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 0, %31
  br i1 %32, label %33, label %173

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = bitcast i64* %36 to %struct.arm_saved_state*
  store %struct.arm_saved_state* %37, %struct.arm_saved_state** %9, align 8
  %38 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %39 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %45 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PSR_MODE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @PSR_FIQ_MODE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %33
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %33
  %56 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %57 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_itstate(i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %135

72:                                               ; preds = %67
  %73 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %74 = ptrtoint %struct.arm_saved_state* %73 to i32
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, 24
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @FBT_IS_THUMB_SET_R7(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %72
  %84 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %85 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @FBT_THUMB_SET_R7_OFFSET(i32 %89)
  %91 = add nsw i32 %86, %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  store i32 %91, i32* %94, align 4
  br label %102

95:                                               ; preds = %72
  %96 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %97 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %83
  %103 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %104 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %112 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %117 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %122 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %127 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @dtrace_probe(i32 %110, i64 %115, i64 %120, i64 %125, i64 %130, i64 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  br label %170

135:                                              ; preds = %67
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, 240
  %141 = ashr i32 %140, 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %144 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @dtrace_arm_condition_true(i32 %142, i32 %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %150 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %149, i32 0, i32 1
  %151 = call i32 @clear_itstate(i32* %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load i32, i32* @DTRACE_INVOP_NOP, align 4
  store i32 %154, i32* %4, align 4
  br label %183

155:                                              ; preds = %138
  br label %156

156:                                              ; preds = %155, %135
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @dtrace_probe(i32 %159, i64 %162, i64 %163, i64 0, i64 0, i64 0)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load %struct.arm_saved_state*, %struct.arm_saved_state** %9, align 8
  %168 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %167, i32 0, i32 1
  %169 = call i32 @clear_itstate(i32* %168)
  br label %170

170:                                              ; preds = %156, %102
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CPU, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %28
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %4, align 4
  br label %183

177:                                              ; preds = %22
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  store %struct.TYPE_4__* %181, %struct.TYPE_4__** %8, align 8
  br label %19

182:                                              ; preds = %19
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %173, %148
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @FBT_ADDR2NDX(i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @get_itstate(i32) #1

declare dso_local i64 @FBT_IS_THUMB_SET_R7(i32) #1

declare dso_local i32 @FBT_THUMB_SET_R7_OFFSET(i32) #1

declare dso_local i32 @dtrace_probe(i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @dtrace_arm_condition_true(i32, i32) #1

declare dso_local i32 @clear_itstate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
