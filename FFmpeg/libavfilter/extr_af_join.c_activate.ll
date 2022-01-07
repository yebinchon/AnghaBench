; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32 %17, %struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %22, i64 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %91, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 0
  %36 = call i32 @ff_inlink_consume_frame(i32 %31, %struct.TYPE_10__** %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %198

41:                                               ; preds = %26
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ff_inlink_acknowledge_status(i32 %46, i32* %7, i32* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ff_outlink_set_status(i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %198

58:                                               ; preds = %41
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ff_outlink_frame_wanted(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ff_inlink_request_frame(i32 %78)
  store i32 0, i32* %2, align 4
  br label %198

80:                                               ; preds = %66, %58
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %198

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %94, i64 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %192, %91
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br label %108

108:                                              ; preds = %105, %99
  %109 = phi i1 [ false, %99 ], [ %107, %105 ]
  br i1 %109, label %110, label %195

110:                                              ; preds = %108
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %192

120:                                              ; preds = %110
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @ff_inlink_check_available_samples(i32 %127, i32 %128)
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %173

131:                                              ; preds = %120
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %143, i64 %145
  %147 = call i32 @ff_inlink_consume_samples(i32 %138, i32 %139, i32 %140, %struct.TYPE_10__** %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %198

152:                                              ; preds = %131
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @ff_inlink_acknowledge_status(i32 %159, i32* %7, i32* %9)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %152
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @ff_outlink_set_status(i32 %167, i32 %168, i32 %169)
  store i32 0, i32* %2, align 4
  br label %198

171:                                              ; preds = %152
  br label %172

172:                                              ; preds = %171
  br label %191

173:                                              ; preds = %120
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @ff_outlink_frame_wanted(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ff_inlink_request_frame(i32 %188)
  store i32 0, i32* %2, align 4
  br label %198

190:                                              ; preds = %173
  br label %191

191:                                              ; preds = %190, %172
  br label %192

192:                                              ; preds = %191, %119
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %99

195:                                              ; preds = %108
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %197 = call i32 @try_push_frame(%struct.TYPE_9__* %196)
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %195, %181, %162, %150, %89, %73, %49, %39
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ff_inlink_consume_frame(i32, %struct.TYPE_10__**) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(i32, i32, i32) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32) #1

declare dso_local i32 @ff_inlink_request_frame(i32) #1

declare dso_local i64 @ff_inlink_check_available_samples(i32, i32) #1

declare dso_local i32 @ff_inlink_consume_samples(i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @try_push_frame(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
