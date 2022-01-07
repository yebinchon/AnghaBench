; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decavcodecaWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_14__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__, i32*, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_FLAG_DISCARD = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__**, %struct.TYPE_18__**)* @decavcodecaWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decavcodecaWork(%struct.TYPE_17__* %0, %struct.TYPE_18__** %1, %struct.TYPE_18__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %36, %40
  %42 = call i32 @memset(i32* %33, i32 0, i64 %41)
  br label %43

43:                                               ; preds = %25, %3
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = call i32 @audioParserFlush(%struct.TYPE_17__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %55 = call i32 @decodeAudio(%struct.TYPE_16__* %54, %struct.TYPE_19__* null)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %59 = call i32 @hb_buffer_list_append(i32* %57, %struct.TYPE_18__* %58)
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %62)
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %64, align 8
  %65 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %65, i32* %4, align 4
  br label %226

66:                                               ; preds = %43
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @HB_FLAG_DISCARD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %76, %66
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %216, %111
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %220

118:                                              ; preds = %112
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = icmp ne %struct.TYPE_14__* %121, null
  br i1 %122, label %123, label %150

123:                                              ; preds = %118
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @av_parser_parse2(%struct.TYPE_14__* %126, i32 %129, i32** %13, i32* %14, i32* %135, i32 %140, i32 %141, i32 %142, i32 0)
  store i32 %143, i32* %11, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %149, i32* %12, align 4
  br label %161

150:                                              ; preds = %118
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %13, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %14, align 4
  store i32 %156, i32* %11, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %150, %123
  %162 = load i32*, i32** %13, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %206

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %164
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 4
  store i32* %168, i32** %171, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 3
  store i32 %176, i32* %179, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = call i32 @decodeAudio(%struct.TYPE_16__* %180, %struct.TYPE_19__* %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @HB_FLAG_DISCARD, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %167, %164, %161
  %207 = load i32, i32* %11, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %209, %206
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %10, align 4
  br label %112

220:                                              ; preds = %112
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  %223 = call %struct.TYPE_18__* @hb_buffer_list_clear(i32* %222)
  %224 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %223, %struct.TYPE_18__** %224, align 8
  %225 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %220, %51
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @audioParserFlush(%struct.TYPE_17__*) #1

declare dso_local i32 @decodeAudio(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @av_parser_parse2(%struct.TYPE_14__*, i32, i32**, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
