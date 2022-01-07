; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_encx264Work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_encx264Work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (i32, i32**, i32*, i32*, i32*)*, i64 (i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encx264Work(%struct.TYPE_19__* %0, %struct.TYPE_20__** %1, %struct.TYPE_20__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca %struct.TYPE_20__**, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %8, align 8
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %3
  %29 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %13)
  br label %30

30:                                               ; preds = %58, %53, %28
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64 (i32)*, i64 (i32)** %34, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 %35(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %30
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32**, i32*, i32*, i32*)*, i32 (i32, i32**, i32*, i32*, i32*)** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %46(i32 %49, i32** %12, i32* %11, i32* null, i32* %10)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %30

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %65

58:                                               ; preds = %54
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call %struct.TYPE_20__* @nal_encode(%struct.TYPE_19__* %59, i32* %10, i32 %60, i32* %61)
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %14, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %64 = call i32 @hb_buffer_list_append(i32* %13, %struct.TYPE_20__* %63)
  br label %30

65:                                               ; preds = %57, %30
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = call i32 @hb_buffer_list_append(i32* %13, %struct.TYPE_20__* %66)
  %68 = call %struct.TYPE_20__* @hb_buffer_list_clear(i32* %13)
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %69, align 8
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %70, align 8
  %71 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %71, i32* %4, align 4
  br label %78

72:                                               ; preds = %3
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = call %struct.TYPE_20__* @x264_encode(%struct.TYPE_19__* %73, %struct.TYPE_20__* %74)
  %76 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %76, align 8
  %77 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_20__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_20__* @nal_encode(%struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @x264_encode(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
