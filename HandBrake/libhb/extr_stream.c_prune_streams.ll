; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_prune_streams.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_prune_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@transport = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@program = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @prune_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_streams(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @transport, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %121

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %115, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %118

19:                                               ; preds = %12
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @ts_stream_kind(%struct.TYPE_17__* %20, i32 %21)
  %23 = load i64, i64* @U, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @hb_stream_delete_ts_entry(%struct.TYPE_17__* %37, i32 %38)
  br label %115

40:                                               ; preds = %25, %19
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @ts_stream_kind(%struct.TYPE_17__* %41, i32 %42)
  %44 = load i64, i64* @A, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %86, %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @audio_inactive(%struct.TYPE_17__* %60, i32 %69, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @hb_stream_delete_ps_entry(%struct.TYPE_17__* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %59
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %4, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %96
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @hb_stream_try_delete_ts_entry(%struct.TYPE_17__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %115

113:                                              ; preds = %107, %96
  br label %114

114:                                              ; preds = %113, %40
  br label %115

115:                                              ; preds = %114, %112, %36
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %12

118:                                              ; preds = %12
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = call i32 @hb_stream_seek(%struct.TYPE_17__* %119, i32 0)
  br label %197

121:                                              ; preds = %1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @program, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %196

127:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %190, %127
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %128
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @U, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @hb_stream_delete_ps_entry(%struct.TYPE_17__* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %135
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @A, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %151
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @audio_inactive(%struct.TYPE_17__* %164, i32 %173, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %163
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @hb_stream_delete_ps_entry(%struct.TYPE_17__* %186, i32 %187)
  br label %190

189:                                              ; preds = %163, %151
  br label %190

190:                                              ; preds = %189, %185
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %128

193:                                              ; preds = %128
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %195 = call i32 @hb_stream_seek(%struct.TYPE_17__* %194, i32 0)
  br label %196

196:                                              ; preds = %193, %121
  br label %197

197:                                              ; preds = %196, %118
  ret void
}

declare dso_local i64 @ts_stream_kind(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @hb_stream_delete_ts_entry(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @audio_inactive(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @hb_stream_delete_ps_entry(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @hb_stream_try_delete_ts_entry(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @hb_stream_seek(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
