; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, i32**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AVERROR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32* %27, %struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %171, label %34

34:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %96, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %96

52:                                               ; preds = %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @check_ir(i32* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %2, align 4
  br label %246

65:                                               ; preds = %52
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @ff_outlink_get_status(i32* %82)
  %84 = load i64, i64* @AVERROR_EOF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %75
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %51
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %35

99:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %106
  br label %121

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %100

121:                                              ; preds = %116, %100
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @ff_outlink_frame_wanted(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %127
  store i32 1, i32* %8, align 4
  br label %136

136:                                              ; preds = %162, %135
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %136
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %142
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @ff_inlink_request_frame(i32* %159)
  br label %161

161:                                              ; preds = %152, %142
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %136

165:                                              ; preds = %136
  br label %166

166:                                              ; preds = %165, %127
  store i32 0, i32* %2, align 4
  br label %246

167:                                              ; preds = %121
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %170

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170, %1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @convert_coeffs(%struct.TYPE_10__* %182, i32* %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %246

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %176, %171
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 0
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @ff_inlink_consume_samples(i32* %195, i32 %198, i32 %201, i32** %7)
  store i32 %202, i32* %9, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %190
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %206 = load i32*, i32** %7, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @headphone_frame(%struct.TYPE_9__* %205, i32* %206, i32* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %2, align 4
  br label %246

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213, %190
  %215 = load i32, i32* %9, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %2, align 4
  br label %246

219:                                              ; preds = %214
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 0
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i32**, i32*** %226, align 8
  %228 = getelementptr inbounds i32*, i32** %227, i64 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @FF_FILTER_FORWARD_STATUS(i32* %224, i32* %229)
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  %236 = call i64 @ff_outlink_frame_wanted(i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %219
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32**, i32*** %240, align 8
  %242 = getelementptr inbounds i32*, i32** %241, i64 0
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @ff_inlink_request_frame(i32* %243)
  br label %245

245:                                              ; preds = %238, %219
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %245, %217, %211, %187, %166, %63
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @check_ir(i32*, i32) #1

declare dso_local i64 @ff_outlink_get_status(i32*) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32*) #1

declare dso_local i32 @ff_inlink_request_frame(i32*) #1

declare dso_local i32 @convert_coeffs(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_inlink_consume_samples(i32*, i32, i32, i32**) #1

declare dso_local i32 @headphone_frame(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
