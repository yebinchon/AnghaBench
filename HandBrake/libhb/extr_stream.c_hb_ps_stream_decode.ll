; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_decode.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_ps_stream_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, i32, i32 }

@HB_DVD_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@TS_HAS_PCR = common dso_local global i32 0, align 4
@AUDIO_BUF = common dso_local global i64 0, align 8
@VIDEO_BUF = common dso_local global i64 0, align 8
@OTHER_BUF = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*)* @hb_ps_stream_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @hb_ps_stream_decode(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = load i32, i32* @HB_DVD_READ_BUFFER_SIZE, align 4
  %9 = call %struct.TYPE_22__* @hb_buffer_init(i32 %8)
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %5, align 8
  br label %10

10:                                               ; preds = %1, %31, %40, %67, %72, %94, %155, %227
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = call i32 @hb_ps_read_packet(%struct.TYPE_20__* %13, %struct.TYPE_22__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = call i32 @hb_buffer_close(%struct.TYPE_22__** %5)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %2, align 8
  br label %234

21:                                               ; preds = %10
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @hb_parse_ps(%struct.TYPE_20__* %22, i64 %25, i64 %28, %struct.TYPE_21__* %4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %10

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 186
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @TS_HAS_PCR, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %10

54:                                               ; preds = %36
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TS_HAS_PCR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %10

68:                                               ; preds = %60, %54
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 187
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %10

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 189
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @index_of_ps_stream(%struct.TYPE_20__* %78, i32 %80, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %91

84:                                               ; preds = %73
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @index_of_ps_stream(%struct.TYPE_20__* %85, i32 %87, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %10

95:                                               ; preds = %91
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %115 [
    i32 129, label %105
    i32 128, label %110
  ]

105:                                              ; preds = %95
  %106 = load i64, i64* @AUDIO_BUF, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  br label %120

110:                                              ; preds = %95
  %111 = load i64, i64* @VIDEO_BUF, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %120

115:                                              ; preds = %95
  %116 = load i64, i64* @OTHER_BUF, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %110, %105
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %160

125:                                              ; preds = %120
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VIDEO_BUF, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @isIframe(%struct.TYPE_20__* %133, i64 %136, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %132, %125
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VIDEO_BUF, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = icmp slt i32 %153, 600
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %142
  br label %10

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %132
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %120
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @VIDEO_BUF, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 %178
  %180 = call i32 @get_id(%struct.TYPE_17__* %179)
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 4
  store i32 %180, i32* %183, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 4
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %206, %208
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %212, %214
  %216 = call i32 @memmove(i64 %203, i64 %209, i64 %215)
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = sub nsw i64 %221, %218
  store i64 %222, i64* %220, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %172
  br label %10

228:                                              ; preds = %172
  %229 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* %233, %struct.TYPE_22__** %2, align 8
  br label %234

234:                                              ; preds = %228, %18
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  ret %struct.TYPE_22__* %235
}

declare dso_local %struct.TYPE_22__* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_ps_read_packet(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_22__**) #1

declare dso_local i32 @hb_parse_ps(%struct.TYPE_20__*, i64, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @index_of_ps_stream(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @isIframe(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @get_id(%struct.TYPE_17__*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
