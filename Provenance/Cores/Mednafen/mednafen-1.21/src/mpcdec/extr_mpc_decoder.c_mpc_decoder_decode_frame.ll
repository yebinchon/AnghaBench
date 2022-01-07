; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_decoder.c_mpc_decoder_decode_frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_decoder.c_mpc_decoder_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }

@MPC_DECODER_SYNTH_DELAY = common dso_local global i32 0, align 4
@MPC_FRAME_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc_decoder_decode_frame(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = bitcast %struct.TYPE_16__* %7 to i8*
  %12 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load i32, i32* @MPC_DECODER_SYNTH_DELAY, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  br label %213

34:                                               ; preds = %24, %3
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mpc_decoder_read_bitstream_sv8(%struct.TYPE_15__* %40, %struct.TYPE_16__* %41, i32 %44)
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i32 @mpc_decoder_read_bitstream_sv7(%struct.TYPE_15__* %47, %struct.TYPE_16__* %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %55 = load i32, i32* @MPC_DECODER_SYNTH_DELAY, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = call i32 @mpc_decoder_requantisierung(%struct.TYPE_15__* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mpc_decoder_synthese_filter_float(%struct.TYPE_15__* %61, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %58, %50
  %70 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %69
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %89, label %118

89:                                               ; preds = %84
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = call i32 @mpc_bits_read(%struct.TYPE_16__* %90, i32 11)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %89
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %104, %89
  br label %118

118:                                              ; preds = %117, %84, %69
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  br label %132

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %127
  %131 = phi i32 [ 0, %127 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %130, %122
  %133 = phi i32 [ %123, %122 ], [ %131, %130 ]
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %138, %140
  %142 = shl i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %143, %145
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %213

158:                                              ; preds = %132
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp sle i32 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %212

176:                                              ; preds = %158
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %192, %195
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %189, %197
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memmove(i64 %186, i64 %198, i32 %208)
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 3
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %176, %166
  br label %213

213:                                              ; preds = %29, %212, %132
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mpc_decoder_read_bitstream_sv8(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @mpc_decoder_read_bitstream_sv7(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32 @mpc_decoder_requantisierung(%struct.TYPE_15__*) #2

declare dso_local i32 @mpc_decoder_synthese_filter_float(%struct.TYPE_15__*, i64, i32) #2

declare dso_local i32 @mpc_bits_read(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @memmove(i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
