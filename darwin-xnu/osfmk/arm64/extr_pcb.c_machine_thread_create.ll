; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_pcb.c_machine_thread_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_pcb.c_machine_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i64, i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@kernel_task = common dso_local global i64 0, align 8
@user_ss_zone = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8
@ARM_SAVED_STATE64 = common dso_local global i32 0, align 4
@ARM_SAVED_STATE64_COUNT = common dso_local global i32 0, align 4
@ARM_NEON_SAVED_STATE64 = common dso_local global i32 0, align 4
@ARM_NEON_SAVED_STATE64_COUNT = common dso_local global i32 0, align 4
@ARM_SAVED_STATE32 = common dso_local global i32 0, align 4
@ARM_SAVED_STATE32_COUNT = common dso_local global i32 0, align 4
@ARM_NEON_SAVED_STATE32 = common dso_local global i32 0, align 4
@ARM_NEON_SAVED_STATE32_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @machine_thread_create(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %8, i64* %7, align 8
  %9 = call %struct.TYPE_18__* (...) @current_thread()
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = icmp ne %struct.TYPE_18__* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 7
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @kernel_task, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %16
  %30 = load i32, i32* @user_ss_zone, align 4
  %31 = call i64 @zalloc(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_19__*
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = icmp ne %struct.TYPE_19__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %42, i64* %3, align 8
  br label %161

43:                                               ; preds = %29
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @task_has_64Bit_data(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %43
  %64 = load i32, i32* @ARM_SAVED_STATE64, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* @ARM_SAVED_STATE64_COUNT, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* @ARM_NEON_SAVED_STATE64, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @ARM_NEON_SAVED_STATE64_COUNT, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  br label %121

92:                                               ; preds = %43
  %93 = load i32, i32* @ARM_SAVED_STATE32, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* @ARM_SAVED_STATE32_COUNT, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* @ARM_NEON_SAVED_STATE32, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* @ARM_NEON_SAVED_STATE32_COUNT, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %92, %63
  br label %132

122:                                              ; preds = %16
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %131, align 8
  br label %132

132:                                              ; preds = %122, %121
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = call i32 @bzero(i32* %135, i32 4)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = call i64 @machine_thread_state_initialize(%struct.TYPE_18__* %137)
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @KERN_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %132
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %6, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %149, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %155, align 8
  %156 = load i32, i32* @user_ss_zone, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = call i32 @zfree(i32 %156, %struct.TYPE_19__* %157)
  br label %159

159:                                              ; preds = %142, %132
  %160 = load i64, i64* %7, align 8
  store i64 %160, i64* %3, align 8
  br label %161

161:                                              ; preds = %159, %41
  %162 = load i64, i64* %3, align 8
  ret i64 %162
}

declare dso_local %struct.TYPE_18__* @current_thread(...) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i64 @task_has_64Bit_data(i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @machine_thread_state_initialize(%struct.TYPE_18__*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
