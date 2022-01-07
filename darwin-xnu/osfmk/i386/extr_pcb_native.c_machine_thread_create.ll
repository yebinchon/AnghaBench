; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb_native.c_machine_thread_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb_native.c_machine_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_13__, i64, i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i8*, i32 }

@iss_zone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"iss_zone\00", align 1
@x86_SAVED_STATE64 = common dso_local global i32 0, align 4
@USER64_CS = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i8* null, align 8
@EFL_USER_SET = common dso_local global i8* null, align 8
@x86_SAVED_STATE32 = common dso_local global i32 0, align 4
@USER_CS = common dso_local global i32 0, align 4
@ACC_P = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_create(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = call %struct.TYPE_20__* @THREAD_TO_PCB(%struct.TYPE_19__* %6)
  store %struct.TYPE_20__* %7, %struct.TYPE_20__** %5, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = call i64 (...) @get_preemption_level()
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @iss_zone, align 4
  %18 = call i64 @zalloc(i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_18__*
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = icmp eq %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = call i32 @panic(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %12
  br label %29

29:                                               ; preds = %28, %2
  %30 = call i32 @assert(i32 0)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = bitcast %struct.TYPE_18__* %33 to i8*
  %35 = call i32 @bzero(i8* %34, i32 104)
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @task_has_64Bit_addr(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %29
  %40 = load i32, i32* @x86_SAVED_STATE64, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* @USER64_CS, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %45, i32* %51, align 8
  %52 = load i8*, i8** @USER_DS, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i8* %52, i8** %58, align 8
  %59 = load i8*, i8** @USER_DS, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  store i8* %59, i8** %64, align 8
  %65 = load i8*, i8** @USER_DS, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  store i8* %65, i8** %70, align 8
  %71 = load i8*, i8** @EFL_USER_SET, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  br label %126

78:                                               ; preds = %29
  %79 = load i32, i32* @x86_SAVED_STATE32, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @USER_CS, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 6
  store i32 %84, i32* %89, align 8
  %90 = load i8*, i8** @USER_DS, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 5
  store i8* %90, i8** %95, align 8
  %96 = load i8*, i8** @USER_DS, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  store i8* %96, i8** %101, align 8
  %102 = load i8*, i8** @USER_DS, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  store i8* %102, i8** %107, align 8
  %108 = load i8*, i8** @USER_DS, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  store i8* %108, i8** %113, align 8
  %114 = load i8*, i8** @USER_DS, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  store i8* %114, i8** %119, align 8
  %120 = load i8*, i8** @EFL_USER_SET, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i8* %120, i8** %125, align 8
  br label %126

126:                                              ; preds = %78, %39
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 4
  %129 = call i32 @simple_lock_init(i32* %128, i32 0)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ACC_P, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %126
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i8*, i8** @USER_DS, align 8
  %147 = call %struct.TYPE_13__* @gdt_desc_p(i8* %146)
  %148 = bitcast %struct.TYPE_13__* %145 to i8*
  %149 = bitcast %struct.TYPE_13__* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 4 %149, i64 4, i1 false)
  br label %150

150:                                              ; preds = %143, %126
  %151 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_20__* @THREAD_TO_PCB(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @task_has_64Bit_addr(i32) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @gdt_desc_p(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
