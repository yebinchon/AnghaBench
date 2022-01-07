; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_encCoreAudioWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_encCoreAudioWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encCoreAudioWork(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %9, align 8
  %17 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %11)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @Flush(%struct.TYPE_17__* %28, i32* %11)
  %30 = call %struct.TYPE_18__* (...) @hb_buffer_eof_init()
  %31 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_18__* %30)
  %32 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %11)
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %33, align 8
  %34 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %3
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = call i32 @hb_list_add(i32 %51, %struct.TYPE_18__* %52)
  %54 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = call %struct.TYPE_18__* @Encode(%struct.TYPE_17__* %55)
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %10, align 8
  br label %57

57:                                               ; preds = %60, %48
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = icmp ne %struct.TYPE_18__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_18__* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = call %struct.TYPE_18__* @Encode(%struct.TYPE_17__* %63)
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %10, align 8
  br label %57

65:                                               ; preds = %57
  %66 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %11)
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %67, align 8
  %68 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_18__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @Flush(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_eof_init(...) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @Encode(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
