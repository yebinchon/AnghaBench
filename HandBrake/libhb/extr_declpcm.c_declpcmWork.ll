; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_declpcm.c_declpcmWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_declpcm.c_declpcmWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__**, %struct.TYPE_17__**)* @declpcmWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @declpcmWork(%struct.TYPE_16__* %0, %struct.TYPE_17__** %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %19 = call %struct.TYPE_17__* @hb_buffer_list_clear(i32* %11)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %29, align 8
  %30 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %30, align 8
  %31 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %3
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 6
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = call i32 @memcpy(i64 %45, i64 %49, i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = call %struct.TYPE_17__* @Decode(%struct.TYPE_16__* %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %10, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %61 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_17__* %60)
  br label %62

62:                                               ; preds = %37, %32
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = call i32 @lpcmInfo(%struct.TYPE_16__* %63, %struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @memcpy(i64 %79, i64 %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %62
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call %struct.TYPE_17__* @Decode(%struct.TYPE_16__* %94)
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %10, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = call i32 @hb_buffer_list_append(i32* %11, %struct.TYPE_17__* %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %62
  %101 = call %struct.TYPE_17__* @hb_buffer_list_clear(i32* %11)
  %102 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %102, align 8
  %103 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %27
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_17__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local %struct.TYPE_17__* @Decode(%struct.TYPE_16__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @lpcmInfo(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
