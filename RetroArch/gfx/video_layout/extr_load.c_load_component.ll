; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_load_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, i32, i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [40 x i8] c"video_layout: invalid component <%s />\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"video_layout: invalid component <%s />, missing 'file' attribute\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"alphafile\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"video_layout: invalid component <%s />, missing 'string' attribute\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"maxstate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_17__*)* @load_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_component(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @comp_type_from_str(i32 %15)
  store i64 %16, i64* %11, align 8
  store i32 1, i32* %12, align 4
  %17 = load i64, i64* %11, align 8
  %18 = icmp eq i64 %17, 128
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %4, align 4
  br label %197

24:                                               ; preds = %3
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @component_init(%struct.TYPE_18__* %25, i64 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @scope_eval(i32* %32, i8* %33)
  %35 = call i8* @get_int(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %10, align 8
  br label %42

42:                                               ; preds = %71, %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %54 = call i32 @parse_bounds(i32* %52, %struct.TYPE_17__* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %70

57:                                               ; preds = %45
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = call i32 @parse_color(i32* %64, %struct.TYPE_17__* %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %10, align 8
  br label %42

75:                                               ; preds = %42
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %195 [
    i32 128, label %79
    i32 130, label %80
    i32 132, label %81
    i32 143, label %82
    i32 139, label %83
    i32 129, label %114
    i32 144, label %145
    i32 140, label %185
    i32 142, label %186
    i32 141, label %187
    i32 134, label %188
    i32 133, label %189
    i32 138, label %190
    i32 137, label %191
    i32 136, label %192
    i32 135, label %193
    i32 131, label %194
  ]

79:                                               ; preds = %75
  br label %195

80:                                               ; preds = %75
  br label %195

81:                                               ; preds = %75
  br label %195

82:                                               ; preds = %75
  br label %195

83:                                               ; preds = %75
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %85 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %85, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %5, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @scope_eval(i32* %97, i8* %98)
  %100 = call i32 @set_string(i32* %96, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i8* %102, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32*, i32** %5, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @scope_eval(i32* %109, i8* %110)
  %112 = call i32 @set_string(i32* %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %92
  br label %195

114:                                              ; preds = %75
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %116, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32*, i32** %5, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @scope_eval(i32* %128, i8* %129)
  %131 = call i32 @set_string(i32* %127, i32 %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %133, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %123
  %136 = load i32*, i32** %5, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @scope_eval(i32* %136, i8* %137)
  %139 = call i8* @get_int(i32 %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i8* %139, i8** %143, align 8
  br label %144

144:                                              ; preds = %135, %123
  br label %195

145:                                              ; preds = %75
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i8* %147, i8** %9, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32*, i32** %5, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @scope_eval(i32* %150, i8* %151)
  %153 = call i8* @get_int(i32 %152)
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store i8* %153, i8** %157, align 8
  br label %158

158:                                              ; preds = %149, %145
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i8* %160, i8** %9, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i32*, i32** %5, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 @scope_eval(i32* %163, i8* %164)
  %166 = call i8* @get_int(i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  store i8* %166, i8** %170, align 8
  br label %171

171:                                              ; preds = %162, %158
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = call i8* @rxml_node_attrib(%struct.TYPE_17__* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %173, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load i32*, i32** %5, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = call i32 @scope_eval(i32* %176, i8* %177)
  %179 = call i8* @get_int(i32 %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i8* %179, i8** %183, align 8
  br label %184

184:                                              ; preds = %175, %171
  br label %195

185:                                              ; preds = %75
  br label %195

186:                                              ; preds = %75
  br label %195

187:                                              ; preds = %75
  br label %195

188:                                              ; preds = %75
  br label %195

189:                                              ; preds = %75
  br label %195

190:                                              ; preds = %75
  br label %195

191:                                              ; preds = %75
  br label %195

192:                                              ; preds = %75
  br label %195

193:                                              ; preds = %75
  br label %195

194:                                              ; preds = %75
  br label %195

195:                                              ; preds = %75, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %144, %113, %82, %81, %80, %79
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %19
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i64 @comp_type_from_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @component_init(%struct.TYPE_18__*, i64) #1

declare dso_local i8* @rxml_node_attrib(%struct.TYPE_17__*, i8*) #1

declare dso_local i8* @get_int(i32) #1

declare dso_local i32 @scope_eval(i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @parse_bounds(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @parse_color(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @set_string(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
