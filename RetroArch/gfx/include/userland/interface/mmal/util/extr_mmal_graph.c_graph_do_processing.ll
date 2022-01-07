; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_do_processing.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_do_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mmal_port_send_buffer failed (%i)\00", align 1
@MMAL_CONNECTION_FLAG_DIRECT = common dso_local global i32 0, align 4
@PROCESSING_TIME_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @graph_do_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_do_processing(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %82, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = urem i32 %24, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %23, i64 %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %20
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %20
  br label %82

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %80, %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @mmal_queue_get(i32 %50)
  store i32* %51, i32** %3, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %81

53:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @mmal_port_send_buffer(%struct.TYPE_11__* %56, i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MMAL_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @mmal_queue_put_back(i32 %77, i32* %78)
  store i32 0, i32* %4, align 4
  br label %81

80:                                               ; preds = %53
  br label %45

81:                                               ; preds = %72, %45
  br label %82

82:                                               ; preds = %81, %43
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %14

87:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %90, 1
  store i32 %91, i32* %89, align 8
  store i32 %90, i32* %7, align 4
  br label %92

92:                                               ; preds = %147, %87
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %152

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = urem i32 %102, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %101, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %9, align 8
  %110 = call i64 (...) @vcos_getmicrosecs64()
  store i64 %110, i64* %10, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %147

118:                                              ; preds = %98
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MMAL_CONNECTION_FLAG_DIRECT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %147

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %141, %126
  %128 = call i64 (...) @vcos_getmicrosecs64()
  %129 = load i64, i64* %10, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load i64, i64* @PROCESSING_TIME_MAX, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32* @mmal_queue_get(i32 %136)
  store i32* %137, i32** %3, align 8
  %138 = icmp ne i32* %137, null
  br label %139

139:                                              ; preds = %133, %127
  %140 = phi i1 [ false, %127 ], [ %138, %133 ]
  br i1 %140, label %141, label %146

141:                                              ; preds = %139
  store i32 1, i32* %4, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @graph_process_buffer(%struct.TYPE_9__* %142, %struct.TYPE_10__* %143, i32* %144)
  br label %127

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %125, %117
  %148 = load i32, i32* %6, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %92

152:                                              ; preds = %92
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i32 @mmal_port_send_buffer(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32) #1

declare dso_local i32 @mmal_queue_put_back(i32, i32*) #1

declare dso_local i64 @vcos_getmicrosecs64(...) #1

declare dso_local i32 @graph_process_buffer(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
