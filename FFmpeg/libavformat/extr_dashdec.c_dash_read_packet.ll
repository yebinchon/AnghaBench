; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.representation**, %struct.representation**, %struct.representation** }
%struct.representation = type { i64, i64, i32, i32, i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @dash_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dash_read_packet(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.representation*, align 8
  %11 = alloca %struct.representation*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store %struct.representation* null, %struct.representation** %10, align 8
  store %struct.representation* null, %struct.representation** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 6
  %18 = load %struct.representation**, %struct.representation*** %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @recheck_discard_flags(%struct.TYPE_17__* %15, %struct.representation** %18, i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load %struct.representation**, %struct.representation*** %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @recheck_discard_flags(%struct.TYPE_17__* %23, %struct.representation** %26, i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 4
  %34 = load %struct.representation**, %struct.representation*** %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @recheck_discard_flags(%struct.TYPE_17__* %31, %struct.representation** %34, i32 %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %73, %2
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 6
  %48 = load %struct.representation**, %struct.representation*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.representation*, %struct.representation** %48, i64 %50
  %52 = load %struct.representation*, %struct.representation** %51, align 8
  store %struct.representation* %52, %struct.representation** %11, align 8
  %53 = load %struct.representation*, %struct.representation** %11, align 8
  %54 = getelementptr inbounds %struct.representation, %struct.representation* %53, i32 0, i32 7
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %73

58:                                               ; preds = %45
  %59 = load %struct.representation*, %struct.representation** %10, align 8
  %60 = icmp ne %struct.representation* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.representation*, %struct.representation** %11, align 8
  %63 = getelementptr inbounds %struct.representation, %struct.representation* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %58
  %68 = load %struct.representation*, %struct.representation** %11, align 8
  store %struct.representation* %68, %struct.representation** %10, align 8
  %69 = load %struct.representation*, %struct.representation** %11, align 8
  %70 = getelementptr inbounds %struct.representation, %struct.representation* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %39

76:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load %struct.representation**, %struct.representation*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.representation*, %struct.representation** %86, i64 %88
  %90 = load %struct.representation*, %struct.representation** %89, align 8
  store %struct.representation* %90, %struct.representation** %11, align 8
  %91 = load %struct.representation*, %struct.representation** %11, align 8
  %92 = getelementptr inbounds %struct.representation, %struct.representation* %91, i32 0, i32 7
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %111

96:                                               ; preds = %83
  %97 = load %struct.representation*, %struct.representation** %10, align 8
  %98 = icmp ne %struct.representation* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.representation*, %struct.representation** %11, align 8
  %101 = getelementptr inbounds %struct.representation, %struct.representation* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %96
  %106 = load %struct.representation*, %struct.representation** %11, align 8
  store %struct.representation* %106, %struct.representation** %10, align 8
  %107 = load %struct.representation*, %struct.representation** %11, align 8
  %108 = getelementptr inbounds %struct.representation, %struct.representation* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %95
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %77

114:                                              ; preds = %77
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %149, %114
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  %124 = load %struct.representation**, %struct.representation*** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.representation*, %struct.representation** %124, i64 %126
  %128 = load %struct.representation*, %struct.representation** %127, align 8
  store %struct.representation* %128, %struct.representation** %11, align 8
  %129 = load %struct.representation*, %struct.representation** %11, align 8
  %130 = getelementptr inbounds %struct.representation, %struct.representation* %129, i32 0, i32 7
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %121
  br label %149

134:                                              ; preds = %121
  %135 = load %struct.representation*, %struct.representation** %10, align 8
  %136 = icmp ne %struct.representation* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.representation*, %struct.representation** %11, align 8
  %139 = getelementptr inbounds %struct.representation, %struct.representation* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %137, %134
  %144 = load %struct.representation*, %struct.representation** %11, align 8
  store %struct.representation* %144, %struct.representation** %10, align 8
  %145 = load %struct.representation*, %struct.representation** %11, align 8
  %146 = getelementptr inbounds %struct.representation, %struct.representation* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %9, align 8
  br label %148

148:                                              ; preds = %143, %137
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %115

152:                                              ; preds = %115
  %153 = load %struct.representation*, %struct.representation** %10, align 8
  %154 = icmp ne %struct.representation* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %156, i32* %3, align 4
  br label %235

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %232, %157
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ff_check_interrupt(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %164, %158
  %169 = phi i1 [ false, %158 ], [ %167, %164 ]
  br i1 %169, label %170, label %233

170:                                              ; preds = %168
  %171 = load %struct.representation*, %struct.representation** %10, align 8
  %172 = getelementptr inbounds %struct.representation, %struct.representation* %171, i32 0, i32 7
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = call i32 @av_read_frame(%struct.TYPE_12__* %173, %struct.TYPE_16__* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %170
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.representation*, %struct.representation** %10, align 8
  %183 = getelementptr inbounds %struct.representation, %struct.representation* %182, i32 0, i32 7
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %186, i64 0
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = mul nsw i64 %191, 90000
  %193 = load %struct.representation*, %struct.representation** %10, align 8
  %194 = getelementptr inbounds %struct.representation, %struct.representation* %193, i32 0, i32 7
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %197, i64 0
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @av_rescale(i32 %181, i64 %192, i32 %202)
  %204 = load %struct.representation*, %struct.representation** %10, align 8
  %205 = getelementptr inbounds %struct.representation, %struct.representation* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load %struct.representation*, %struct.representation** %10, align 8
  %207 = getelementptr inbounds %struct.representation, %struct.representation* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  store i32 0, i32* %3, align 4
  br label %235

211:                                              ; preds = %170
  %212 = load %struct.representation*, %struct.representation** %10, align 8
  %213 = getelementptr inbounds %struct.representation, %struct.representation* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  %217 = load %struct.representation*, %struct.representation** %10, align 8
  %218 = getelementptr inbounds %struct.representation, %struct.representation* %217, i32 0, i32 5
  store i64 0, i64* %218, align 8
  %219 = load %struct.representation*, %struct.representation** %10, align 8
  %220 = getelementptr inbounds %struct.representation, %struct.representation* %219, i32 0, i32 4
  store i64 0, i64* %220, align 8
  %221 = load %struct.representation*, %struct.representation** %10, align 8
  %222 = getelementptr inbounds %struct.representation, %struct.representation* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.representation*, %struct.representation** %10, align 8
  %225 = getelementptr inbounds %struct.representation, %struct.representation* %224, i32 0, i32 2
  %226 = call i32 @ff_format_io_close(i32 %223, i32* %225)
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %228 = load %struct.representation*, %struct.representation** %10, align 8
  %229 = call i32 @reopen_demux_for_component(%struct.TYPE_17__* %227, %struct.representation* %228)
  store i32 %229, i32* %7, align 4
  %230 = load %struct.representation*, %struct.representation** %10, align 8
  %231 = getelementptr inbounds %struct.representation, %struct.representation* %230, i32 0, i32 1
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %216, %211
  br label %158

233:                                              ; preds = %168
  %234 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %178, %155
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @recheck_discard_flags(%struct.TYPE_17__*, %struct.representation**, i32) #1

declare dso_local i32 @ff_check_interrupt(i32) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_12__*, %struct.TYPE_16__*) #1

declare dso_local i64 @av_rescale(i32, i64, i32) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

declare dso_local i32 @reopen_demux_for_component(%struct.TYPE_17__*, %struct.representation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
