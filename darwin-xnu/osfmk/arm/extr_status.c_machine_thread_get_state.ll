; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_machine_thread_get_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_status.c_machine_thread_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.arm_saved_state }
%struct.arm_saved_state = type { i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.arm_thread_state = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.arm_thread_state }
%struct.TYPE_8__ = type { i32, i32 }
%struct.arm_exception_state = type { i32, i32, i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ARM_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_UNIFIED_THREAD_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_THREAD_STATE32 = common dso_local global i32 0, align 4
@ARM_THREAD_STATE32_COUNT = common dso_local global i32 0, align 4
@ARM_EXCEPTION_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ARM_VFPV2_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_VFP_STATE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_get_state(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.arm_thread_state*, align 8
  %11 = alloca %struct.arm_saved_state*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arm_exception_state*, align 8
  %15 = alloca %struct.arm_saved_state*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %170 [
    i32 128, label %19
    i32 130, label %35
    i32 131, label %116
    i32 129, label %146
    i32 132, label %147
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %5, align 4
  br label %174

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 130, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 129, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 131, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 132, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 4, i32* %34, align 4
  br label %172

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %41, i32* %5, align 4
  br label %174

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ARM_UNIFIED_THREAD_STATE_COUNT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %12, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store %struct.arm_thread_state* %51, %struct.arm_thread_state** %10, align 8
  %52 = load i32, i32* @ARM_THREAD_STATE32, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ARM_THREAD_STATE32_COUNT, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br label %63

60:                                               ; preds = %42
  %61 = load i32*, i32** %8, align 8
  %62 = bitcast i32* %61 to %struct.arm_thread_state*
  store %struct.arm_thread_state* %62, %struct.arm_thread_state** %10, align 8
  br label %63

63:                                               ; preds = %60, %47
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store %struct.arm_saved_state* %66, %struct.arm_saved_state** %11, align 8
  %67 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %68 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %71 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %73 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %76 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %78 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %81 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %83 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %86 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %104, %63
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %88, 13
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.arm_saved_state*, %struct.arm_saved_state** %11, align 8
  %92 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.arm_thread_state*, %struct.arm_thread_state** %10, align 8
  %99 = getelementptr inbounds %struct.arm_thread_state, %struct.arm_thread_state* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %87

107:                                              ; preds = %87
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ARM_UNIFIED_THREAD_STATE_COUNT, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @ARM_THREAD_STATE_COUNT, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %107
  br label %172

116:                                              ; preds = %4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ARM_EXCEPTION_STATE_COUNT, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %122, i32* %5, align 4
  br label %174

123:                                              ; preds = %116
  %124 = load i32*, i32** %8, align 8
  %125 = bitcast i32* %124 to %struct.arm_exception_state*
  store %struct.arm_exception_state* %125, %struct.arm_exception_state** %14, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store %struct.arm_saved_state* %128, %struct.arm_saved_state** %15, align 8
  %129 = load %struct.arm_saved_state*, %struct.arm_saved_state** %15, align 8
  %130 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.arm_exception_state*, %struct.arm_exception_state** %14, align 8
  %133 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.arm_saved_state*, %struct.arm_saved_state** %15, align 8
  %135 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.arm_exception_state*, %struct.arm_exception_state** %14, align 8
  %138 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.arm_saved_state*, %struct.arm_saved_state** %15, align 8
  %140 = getelementptr inbounds %struct.arm_saved_state, %struct.arm_saved_state* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.arm_exception_state*, %struct.arm_exception_state** %14, align 8
  %143 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @ARM_EXCEPTION_STATE_COUNT, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  br label %172

146:                                              ; preds = %4
  br label %172

147:                                              ; preds = %4
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ARM_DEBUG_STATE_COUNT, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %153, i32* %5, align 4
  br label %174

154:                                              ; preds = %147
  %155 = load i32*, i32** %8, align 8
  store i32* %155, i32** %16, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %157 = call i32* @find_debug_state(%struct.TYPE_10__* %156)
  store i32* %157, i32** %17, align 8
  %158 = load i32*, i32** %17, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 @bzero(i32* %161, i32 4)
  br label %167

163:                                              ; preds = %154
  %164 = load i32*, i32** %17, align 8
  %165 = load i32*, i32** %16, align 8
  %166 = call i32 @bcopy(i32* %164, i32* %165, i32 4)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* @ARM_DEBUG_STATE_COUNT, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %172

170:                                              ; preds = %4
  %171 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %171, i32* %5, align 4
  br label %174

172:                                              ; preds = %167, %146, %123, %115, %25
  %173 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %170, %152, %121, %40, %23
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32* @find_debug_state(%struct.TYPE_10__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
