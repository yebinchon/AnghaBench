; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_textsub_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_textsub_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i64 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@HB_BUF_FLAG_EOS = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__**, %struct.TYPE_19__**)* @textsub_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @textsub_work(%struct.TYPE_18__* %0, %struct.TYPE_19__** %1, %struct.TYPE_19__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %9, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ass_process_codec_private(i32 %24, i8* %30, i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %21, %3
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %50, align 8
  %51 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %51, i32* %4, align 4
  br label %235

52:                                               ; preds = %39
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 90
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %186, %52
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_19__* @hb_fifo_get(i32 %63)
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %10, align 8
  %65 = icmp ne %struct.TYPE_19__* %64, null
  br i1 %65, label %66, label %187

66:                                               ; preds = %58
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %66
  %75 = call i32 @hb_buffer_close(%struct.TYPE_19__** %10)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = icmp ne %struct.TYPE_19__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, 900000
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  store i64 %88, i64* %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = call i32 @process_sub(%struct.TYPE_17__* %94, %struct.TYPE_19__* %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = call i32 @hb_buffer_close(%struct.TYPE_19__** %100)
  br label %102

102:                                              ; preds = %80, %74
  br label %187

103:                                              ; preds = %66
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 90
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = sdiv i64 %120, 90
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %116, %103
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = icmp ne %struct.TYPE_19__* %125, null
  br i1 %126, label %127, label %146

127:                                              ; preds = %122
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  store i64 %132, i64* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = call i32 @process_sub(%struct.TYPE_17__* %138, %struct.TYPE_19__* %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = call i32 @hb_buffer_close(%struct.TYPE_19__** %144)
  br label %146

146:                                              ; preds = %127, %122
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @HB_BUF_FLAG_EOS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = call i32 @hb_buffer_close(%struct.TYPE_19__** %10)
  br label %186

156:                                              ; preds = %146
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp eq i64 %160, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %156
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  store %struct.TYPE_19__* %165, %struct.TYPE_19__** %167, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  store i64 %174, i64* %179, align 8
  br label %185

180:                                              ; preds = %156
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %183 = call i32 @process_sub(%struct.TYPE_17__* %181, %struct.TYPE_19__* %182)
  %184 = call i32 @hb_buffer_close(%struct.TYPE_19__** %10)
  br label %185

185:                                              ; preds = %180, %164
  br label %186

186:                                              ; preds = %185, %154
  br label %58

187:                                              ; preds = %102, %58
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = icmp ne %struct.TYPE_19__* %190, null
  br i1 %191, label %192, label %227

192:                                              ; preds = %187
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %227

201:                                              ; preds = %192
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  store i64 %216, i64* %221, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %224, align 8
  %226 = call i32 @process_sub(%struct.TYPE_17__* %222, %struct.TYPE_19__* %225)
  br label %227

227:                                              ; preds = %201, %192, %187
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %230 = call i32 @ApplySSASubs(%struct.TYPE_17__* %228, %struct.TYPE_19__* %229)
  %231 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %231, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %233 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %232, %struct.TYPE_19__** %233, align 8
  %234 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %227, %47
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @ass_process_codec_private(i32, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @hb_fifo_get(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_19__**) #1

declare dso_local i32 @process_sub(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ApplySSASubs(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
