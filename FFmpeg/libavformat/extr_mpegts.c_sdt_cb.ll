; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_sdt_cb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_sdt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"SDT:\0A\00", align 1
@SDT_TID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"tag: 0x%02x len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"service_name\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"service_provider\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32)* @sdt_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdt_cb(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %7, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %10, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AV_LOG_TRACE, align 4
  %37 = call i32 (i32, i32, i8*, ...) @av_log(i32 %35, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @hex_dump_debug(i32 %40, i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 -4
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %5, align 8
  store i32* %49, i32** %11, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @parse_section_header(%struct.TYPE_13__* %50, i32** %11, i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %191

55:                                               ; preds = %3
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SDT_TID, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %191

62:                                               ; preds = %55
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %191

68:                                               ; preds = %62
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = call i64 @skip_identical(%struct.TYPE_13__* %69, %struct.TYPE_14__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %191

74:                                               ; preds = %68
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @get16(i32** %11, i32* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %191

80:                                               ; preds = %74
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @get8(i32** %11, i32* %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %191

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %189, %86
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @get16(i32** %11, i32* %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %191

93:                                               ; preds = %87
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @get8(i32** %11, i32* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %191

99:                                               ; preds = %93
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @get16(i32** %11, i32* %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %191

105:                                              ; preds = %99
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %106, 4095
  store i32 %107, i32* %18, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %13, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = icmp ugt i32* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %191

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %187, %116
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @get8(i32** %11, i32* %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %189

123:                                              ; preds = %117
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @get8(i32** %11, i32* %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32* %129, i32** %14, align 8
  %130 = load i32, i32* %20, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = icmp ugt i32* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %123
  br label %189

137:                                              ; preds = %132
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @AV_LOG_TRACE, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = call i32 (i32, i32, i8*, ...) @av_log(i32 %140, i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load i32, i32* %19, align 4
  switch i32 %145, label %186 [
    i32 72, label %146
  ]

146:                                              ; preds = %137
  %147 = load i32*, i32** %12, align 8
  %148 = call i32 @get8(i32** %11, i32* %147)
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %187

152:                                              ; preds = %146
  %153 = load i32*, i32** %12, align 8
  %154 = call i8* @getstr8(i32** %11, i32* %153)
  store i8* %154, i8** %23, align 8
  %155 = load i8*, i8** %23, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %187

158:                                              ; preds = %152
  %159 = load i32*, i32** %12, align 8
  %160 = call i8* @getstr8(i32** %11, i32* %159)
  store i8* %160, i8** %22, align 8
  %161 = load i8*, i8** %22, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %158
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call %struct.TYPE_17__* @av_new_program(i32 %166, i32 %167)
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %24, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %170 = icmp ne %struct.TYPE_17__* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i8*, i8** %22, align 8
  %175 = call i32 @av_dict_set(i32* %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %174, i32 0)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i8*, i8** %23, align 8
  %179 = call i32 @av_dict_set(i32* %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %178, i32 0)
  br label %180

180:                                              ; preds = %171, %163
  br label %181

181:                                              ; preds = %180, %158
  %182 = load i8*, i8** %22, align 8
  %183 = call i32 @av_free(i8* %182)
  %184 = load i8*, i8** %23, align 8
  %185 = call i32 @av_free(i8* %184)
  br label %187

186:                                              ; preds = %137
  br label %187

187:                                              ; preds = %186, %181, %157, %151
  %188 = load i32*, i32** %14, align 8
  store i32* %188, i32** %11, align 8
  br label %117

189:                                              ; preds = %136, %122
  %190 = load i32*, i32** %13, align 8
  store i32* %190, i32** %11, align 8
  br label %87

191:                                              ; preds = %54, %61, %67, %73, %79, %85, %115, %104, %98, %92
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @hex_dump_debug(i32, i32*, i32) #1

declare dso_local i64 @parse_section_header(%struct.TYPE_13__*, i32**, i32*) #1

declare dso_local i64 @skip_identical(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @get16(i32**, i32*) #1

declare dso_local i32 @get8(i32**, i32*) #1

declare dso_local i8* @getstr8(i32**, i32*) #1

declare dso_local %struct.TYPE_17__* @av_new_program(i32, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
