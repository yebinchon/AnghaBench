; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_filter_loop.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_filter_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)*, i32, i64*, i32*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@HB_FILTER_DONE = common dso_local global i64 0, align 8
@HB_FILTER_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @filter_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %8

8:                                                ; preds = %137, %29, %1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HB_FILTER_DONE, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i1 [ false, %8 ], [ %19, %14 ]
  br i1 %21, label %22, label %138

22:                                               ; preds = %20
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_18__* @hb_fifo_get_wait(i32 %25)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %4, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = icmp eq %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %8

30:                                               ; preds = %22
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %36, %30
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = icmp ne %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @hb_buffer_close(%struct.TYPE_18__** %4)
  br label %63

63:                                               ; preds = %61, %58
  br label %138

64:                                               ; preds = %52
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = call i64 %67(%struct.TYPE_17__* %68, %struct.TYPE_18__** %4, %struct.TYPE_18__** %5)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = icmp ne %struct.TYPE_18__* %72, null
  br i1 %73, label %74, label %97

74:                                               ; preds = %64
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %82, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %79, %74, %64
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @hb_buffer_close(%struct.TYPE_18__** %4)
  br label %102

102:                                              ; preds = %100, %97
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 @hb_buffer_close(%struct.TYPE_18__** %5)
  br label %112

112:                                              ; preds = %110, %105, %102
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = icmp ne %struct.TYPE_18__* %113, null
  br i1 %114, label %115, label %137

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %135, %115
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @hb_fifo_full_wait(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = call i32 @hb_fifo_push(i32* %132, %struct.TYPE_18__* %133)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %136

135:                                              ; preds = %123
  br label %116

136:                                              ; preds = %129, %116
  br label %137

137:                                              ; preds = %136, %112
  br label %8

138:                                              ; preds = %63, %20
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = icmp ne %struct.TYPE_18__* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 @hb_buffer_close(%struct.TYPE_18__** %5)
  br label %143

143:                                              ; preds = %141, %138
  br label %144

144:                                              ; preds = %160, %143
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 4
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  br i1 %150, label %151, label %161

151:                                              ; preds = %144
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.TYPE_18__* @hb_fifo_get_wait(i32 %154)
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %4, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = icmp ne %struct.TYPE_18__* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 @hb_buffer_close(%struct.TYPE_18__** %4)
  br label %160

160:                                              ; preds = %158, %151
  br label %144

161:                                              ; preds = %144
  ret void
}

declare dso_local %struct.TYPE_18__* @hb_fifo_get_wait(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_18__**) #1

declare dso_local i64 @hb_fifo_full_wait(i32*) #1

declare dso_local i32 @hb_fifo_push(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
