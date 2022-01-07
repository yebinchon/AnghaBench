; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_findOverlap.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_findOverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i64, i64*)* @findOverlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @findOverlap(%struct.TYPE_12__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64, i64* @INT64_MAX, align 8
  store i64 %11, i64* %9, align 8
  %12 = call %struct.TYPE_13__* @hb_buffer_list_clear(i32* %7)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = call %struct.TYPE_13__* @hb_buffer_list_head(i32* %14)
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  br label %16

16:                                               ; preds = %86, %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %90

19:                                               ; preds = %16
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %90

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %35
  br label %90

49:                                               ; preds = %28
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = call %struct.TYPE_13__* @hb_buffer_dup(%struct.TYPE_13__* %64)
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %10, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = call i32 @hb_buffer_list_append(i32* %7, %struct.TYPE_13__* %70)
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %72, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %63
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64*, i64** %6, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %63
  br label %86

86:                                               ; preds = %85, %56, %49
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %8, align 8
  br label %16

90:                                               ; preds = %48, %27, %16
  %91 = call %struct.TYPE_13__* @hb_buffer_list_clear(i32* %7)
  ret %struct.TYPE_13__* %91
}

declare dso_local %struct.TYPE_13__* @hb_buffer_list_clear(i32*) #1

declare dso_local %struct.TYPE_13__* @hb_buffer_list_head(i32*) #1

declare dso_local %struct.TYPE_13__* @hb_buffer_dup(%struct.TYPE_13__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
