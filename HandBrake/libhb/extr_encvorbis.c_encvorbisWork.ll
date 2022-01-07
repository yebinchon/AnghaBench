; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encvorbis.c_encvorbisWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encvorbis.c_encvorbisWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encvorbisWork(%struct.TYPE_15__* %0, %struct.TYPE_16__** %1, %struct.TYPE_16__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__**, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %9, align 8
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %17, align 8
  %18 = call %struct.TYPE_16__* @hb_buffer_list_clear(i32* %11)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %28, align 8
  %29 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = call i32 @hb_list_add(i32 %33, %struct.TYPE_16__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call %struct.TYPE_16__* @Encode(%struct.TYPE_15__* %36)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %10, align 8
  br label %38

38:                                               ; preds = %41, %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = call %struct.TYPE_16__* @Encode(%struct.TYPE_15__* %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %10, align 8
  br label %38

46:                                               ; preds = %38
  %47 = call %struct.TYPE_16__* @hb_buffer_list_clear(i32* %11)
  %48 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %48, align 8
  %49 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_16__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @Encode(%struct.TYPE_15__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
