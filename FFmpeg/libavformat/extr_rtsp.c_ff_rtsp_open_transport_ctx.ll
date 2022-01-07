; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_ff_rtsp_open_transport_ctx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_ff_rtsp_open_transport_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__**, i64, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i64*, %struct.TYPE_20__*, i32, i32, i32, i32, i32* }
%struct.TYPE_20__ = type { i32 }

@RTSP_LOWER_TRANSPORT_TCP = common dso_local global i64 0, align 8
@RTP_REORDER_QUEUE_DEFAULT_SIZE = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@CONFIG_RTSP_MUXER = common dso_local global i64 0, align 8
@RTSP_TCP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@RTSP_TRANSPORT_RAW = common dso_local global i64 0, align 8
@CONFIG_RTPDEC = common dso_local global i64 0, align 8
@RTSP_TRANSPORT_RDT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RTSP_TRANSPORT_RTP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_open_transport_ctx(%struct.TYPE_22__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTSP_LOWER_TRANSPORT_TCP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %19
  store i32 0, i32* %8, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @RTP_REORDER_QUEUE_DEFAULT_SIZE, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %30
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %42, i64 %45
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %7, align 8
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = icmp ne %struct.TYPE_21__* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i64, i64* @CONFIG_RTSP_MUXER, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = icmp ne %struct.TYPE_21__* %66, null
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = bitcast %struct.TYPE_20__** %70 to %struct.TYPE_22__**
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @RTSP_TCP_MAX_PACKET_SIZE, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ff_rtp_chain_mux_open(%struct.TYPE_22__** %71, %struct.TYPE_22__* %72, %struct.TYPE_21__* %73, i32* %76, i32 %77, i64 %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 8
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %217

88:                                               ; preds = %68
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = bitcast %struct.TYPE_20__* %91 to %struct.TYPE_22__*
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %94, i64 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %150

101:                                              ; preds = %65, %60, %57
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @RTSP_TRANSPORT_RAW, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %217

108:                                              ; preds = %101
  %109 = load i64, i64* @CONFIG_RTPDEC, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RTSP_TRANSPORT_RDT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %119 = icmp ne %struct.TYPE_21__* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.TYPE_20__* @ff_rdt_parse_open(%struct.TYPE_22__* %121, i32 %124, i32 %127, i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %133, align 8
  br label %148

134:                                              ; preds = %117, %111, %108
  %135 = load i64, i64* @CONFIG_RTPDEC, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call %struct.TYPE_20__* @ff_rtp_parse_open(%struct.TYPE_22__* %138, %struct.TYPE_21__* %139, i32 %142, i32 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  store %struct.TYPE_20__* %144, %struct.TYPE_20__** %146, align 8
  br label %147

147:                                              ; preds = %137, %134
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149, %88
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = icmp ne %struct.TYPE_20__* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %3, align 4
  br label %217

158:                                              ; preds = %150
  %159 = load i64, i64* @CONFIG_RTPDEC, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %215

161:                                              ; preds = %158
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RTSP_TRANSPORT_RTP, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %161
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %167
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %10, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %172
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ff_rtp_parse_set_dynamic_protocol(%struct.TYPE_20__* %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %185, %172
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %196
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @ff_rtp_parse_set_crypto(%struct.TYPE_20__* %206, i64* %209, i32 %212)
  br label %214

214:                                              ; preds = %203, %196
  br label %215

215:                                              ; preds = %214, %167, %161, %158
  br label %216

216:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %155, %107, %86
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @ff_rtp_chain_mux_open(%struct.TYPE_22__**, %struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32, i64) #1

declare dso_local %struct.TYPE_20__* @ff_rdt_parse_open(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @ff_rtp_parse_open(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_rtp_parse_set_dynamic_protocol(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ff_rtp_parse_set_crypto(%struct.TYPE_20__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
