; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_reader_container_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_container_reader.c_reader_container_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_13__*, %struct.TYPE_18__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"error opening file %s (%i)\00", align 1
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_SUBPICTURE = common dso_local global i64 0, align 8
@MMAL_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@READER_MIN_BUFFER_NUM = common dso_local global i32 0, align 4
@READER_RECOMMENDED_BUFFER_NUM = common dso_local global i32 0, align 4
@READER_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@READER_RECOMMENDED_BUFFER_SIZE = common dso_local global i32 0, align 4
@MMAL_ES_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i8*)* @reader_container_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reader_container_open(%struct.TYPE_21__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_20__* @vc_container_open_reader(i8* %18, i32* %7, i32 0, i32 0)
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @container_map_to_mmal_status(i32 %28)
  store i64 %29, i64* %3, align 8
  br label %233

30:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %40, i64 %42
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %191, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %194

56:                                               ; preds = %50
  %57 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %62
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %77, i64 %79
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %93

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %68

93:                                               ; preds = %88, %68
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %191

100:                                              ; preds = %93
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %103, i64 %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @container_to_mmal_encoding(i32 %111)
  %113 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %191

116:                                              ; preds = %100
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %119, i64 %121
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %128, i64 %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = call i64 @container_to_mmal_format(%struct.TYPE_13__* %125, %struct.TYPE_14__* %134)
  %136 = load i64, i64* @MMAL_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  br label %191

139:                                              ; preds = %116
  %140 = load i32, i32* @READER_MIN_BUFFER_NUM, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %143, i64 %145
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 5
  store i32 %140, i32* %148, align 4
  %149 = load i32, i32* @READER_RECOMMENDED_BUFFER_NUM, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %152, i64 %154
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  store i32 %149, i32* %157, align 8
  %158 = load i32, i32* @READER_MIN_BUFFER_SIZE, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %161, i64 %163
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 3
  store i32 %158, i32* %166, align 4
  %167 = load i32, i32* @READER_RECOMMENDED_BUFFER_SIZE, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %170, i64 %172
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  store i32 %167, i32* %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %179, i64 %181
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  store i32 %176, i32* %188, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %139, %138, %115, %99
  %192 = load i32, i32* %9, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %50

194:                                              ; preds = %50
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %228, %194
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ult i32 %200, %203
  br i1 %204, label %205, label %231

205:                                              ; preds = %199
  %206 = load i32, i32* @MMAL_ES_TYPE_UNKNOWN, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %209, i64 %211
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  store i32 %206, i32* %216, align 8
  %217 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %220, i64 %222
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  store i64 %217, i64* %227, align 8
  br label %228

228:                                              ; preds = %205
  %229 = load i32, i32* %9, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %199

231:                                              ; preds = %199
  %232 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %232, i64* %3, align 8
  br label %233

233:                                              ; preds = %231, %24
  %234 = load i64, i64* %3, align 8
  ret i64 %234
}

declare dso_local %struct.TYPE_20__* @vc_container_open_reader(i8*, i32*, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i8*, i32) #1

declare dso_local i64 @container_map_to_mmal_status(i32) #1

declare dso_local i64 @container_to_mmal_encoding(i32) #1

declare dso_local i64 @container_to_mmal_format(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
