; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_decsrtWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_decsrtWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HB_WORK_OK = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i32**)* @decsrtWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decsrtWork(%struct.TYPE_8__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32**, i32*** %7, align 8
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %48, %53
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %29
  br label %58

58:                                               ; preds = %57, %23
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = call i32* @srt_read(%struct.TYPE_7__* %59)
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = call i32 @hb_srt_to_ssa(i32* %64, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32**, i32*** %7, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %58
  %74 = call i32* (...) @hb_buffer_eof_init()
  %75 = load i32**, i32*** %7, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %63, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @srt_read(%struct.TYPE_7__*) #1

declare dso_local i32 @hb_srt_to_ssa(i32*, i32) #1

declare dso_local i32* @hb_buffer_eof_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
