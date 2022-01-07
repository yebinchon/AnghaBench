; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_copy_input_port_format_commit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_copy.c_copy_input_port_format_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_11__*, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to get an event buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @copy_input_port_format_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_input_port_format_commit(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %14, i64 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mmal_format_compare(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @MMAL_MAX(i64 %39, i64 %42)
  %44 = icmp eq i64 %36, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %46, i64* %2, align 8
  br label %122

47:                                               ; preds = %33, %25, %1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @MMAL_MAX(i64 %55, i64 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @mmal_format_full_copy(i32 %66, i32 %69)
  store i64 %70, i64* %2, align 8
  br label %122

71:                                               ; preds = %47
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load i32, i32* @MMAL_EVENT_FORMAT_CHANGED, align 4
  %74 = call i64 @mmal_port_event_get(%struct.TYPE_12__* %72, i32** %7, i32 %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @MMAL_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %80 = load i64, i64* %8, align 8
  store i64 %80, i64* %2, align 8
  br label %122

81:                                               ; preds = %71
  %82 = load i32*, i32** %7, align 8
  %83 = call %struct.TYPE_13__* @mmal_event_format_changed_get(i32* %82)
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %6, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mmal_format_copy(i32 %86, i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @MMAL_MAX(i64 %103, i64 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @mmal_port_event_send(%struct.TYPE_12__* %118, i32* %119)
  %121 = load i64, i64* %8, align 8
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %81, %78, %52, %45
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @mmal_format_compare(i32, i32) #1

declare dso_local i64 @MMAL_MAX(i64, i64) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i64 @mmal_port_event_get(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local %struct.TYPE_13__* @mmal_event_format_changed_get(i32*) #1

declare dso_local i32 @mmal_format_copy(i32, i32) #1

declare dso_local i32 @mmal_port_event_send(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
