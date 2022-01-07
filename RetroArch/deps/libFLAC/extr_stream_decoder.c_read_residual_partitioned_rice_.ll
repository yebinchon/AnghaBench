; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_residual_partitioned_rice_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_read_residual_partitioned_rice_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32* }

@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i32 0, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_residual_partitioned_rice_(%struct.TYPE_14__* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %6
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = lshr i32 %34, %35
  br label %47

37:                                               ; preds = %6
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %37, %27
  %48 = phi i32 [ %36, %27 ], [ %46, %37 ]
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ugt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp uge i32 %68, %69
  %71 = zext i1 %70 to i32
  br label %83

72:                                               ; preds = %63
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp uge i32 %79, %80
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %72, %67
  %84 = phi i32 [ %71, %67 ], [ %82, %72 ]
  %85 = call i32 @FLAC__ASSERT(i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MAX(i32 6, i32 %87)
  %89 = call i32 @FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(%struct.TYPE_15__* %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  store i32 0, i32* %7, align 4
  br label %220

97:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %216, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %219

102:                                              ; preds = %98
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %107, i32* %14, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %220

112:                                              ; preds = %102
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %161

123:                                              ; preds = %112
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %16, align 4
  %134 = icmp ugt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132, %123
  %136 = load i32, i32* %20, align 4
  br label %141

137:                                              ; preds = %132
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %138, %139
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i32 [ %136, %135 ], [ %140, %137 ]
  store i32 %142, i32* %18, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %17, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @FLAC__bitreader_read_rice_signed_block(i32 %147, i32* %151, i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %141
  store i32 0, i32* %7, align 4
  br label %220

157:                                              ; preds = %141
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %17, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* %17, align 4
  br label %215

161:                                              ; preds = %112
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN, align 4
  %168 = call i32 @FLAC__bitreader_read_raw_uint32(i32 %166, i32* %14, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  store i32 0, i32* %7, align 4
  br label %220

171:                                              ; preds = %161
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %16, align 4
  %183 = icmp ugt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181, %171
  br label %187

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 0, %184 ], [ %186, %185 ]
  store i32 %188, i32* %18, align 4
  br label %189

189:                                              ; preds = %209, %187
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %189
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @FLAC__bitreader_read_raw_int32(i32 %198, i32* %15, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  store i32 0, i32* %7, align 4
  br label %220

203:                                              ; preds = %193
  %204 = load i32, i32* %15, align 4
  %205 = load i32*, i32** %12, align 8
  %206 = load i32, i32* %17, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %18, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %17, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %189

214:                                              ; preds = %189
  br label %215

215:                                              ; preds = %214, %157
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %16, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %16, align 4
  br label %98

219:                                              ; preds = %98
  store i32 1, i32* %7, align 4
  br label %220

220:                                              ; preds = %219, %202, %170, %156, %111, %91
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_uint32(i32, i32*, i32) #1

declare dso_local i32 @FLAC__bitreader_read_rice_signed_block(i32, i32*, i32, i32) #1

declare dso_local i32 @FLAC__bitreader_read_raw_int32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
