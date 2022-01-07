; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_stream_cycle_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_stream_cycle_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Switch %s stream from #%d to #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @stream_cycle_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_cycle_channel(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %47

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %95

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_14__* @av_find_program_from_stream(%struct.TYPE_15__* %57, i32* null, i32 %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %10, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %84, %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %68

87:                                               ; preds = %82, %68
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %56
  br label %95

95:                                               ; preds = %94, %51, %47
  br label %96

96:                                               ; preds = %168, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 129
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  store i32 -1, i32* %7, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  store i32 -1, i32* %106, align 8
  br label %169

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %196

111:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %196

117:                                              ; preds = %112
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  br label %135

133:                                              ; preds = %117
  %134 = load i32, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %125
  %136 = phi i32 [ %132, %125 ], [ %134, %133 ]
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %122, i64 %137
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %9, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %135
  %148 = load i32, i32* %4, align 4
  switch i32 %148, label %166 [
    i32 130, label %149
    i32 128, label %165
    i32 129, label %165
  ]

149:                                              ; preds = %147
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %169

164:                                              ; preds = %156, %149
  br label %167

165:                                              ; preds = %147, %147
  br label %169

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %164
  br label %168

168:                                              ; preds = %167, %135
  br label %96

169:                                              ; preds = %165, %163, %104
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = icmp ne %struct.TYPE_14__* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %175, %172, %169
  %184 = load i32, i32* @AV_LOG_INFO, align 4
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @av_get_media_type_string(i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @av_log(i32* null, i32 %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %187, i32 %188)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @stream_component_close(%struct.TYPE_12__* %190, i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @stream_component_open(%struct.TYPE_12__* %193, i32 %194)
  br label %196

196:                                              ; preds = %183, %116, %110
  ret void
}

declare dso_local %struct.TYPE_14__* @av_find_program_from_stream(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @av_get_media_type_string(i32) #1

declare dso_local i32 @stream_component_close(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @stream_component_open(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
