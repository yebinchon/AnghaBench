; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_write_abst.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hdsenc.c_write_abst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32 (%struct.TYPE_16__*, i32**, i8*, i32, i32*)*, %struct.TYPE_12__**, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__**, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s/stream%d.abst\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s/stream%d.abst.tmp\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to open %s for writing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32)* @write_abst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_abst(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %28
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i32 @FFMAX(i64 %45, i32 0)
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %37, %3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %19, align 4
  br label %78

59:                                               ; preds = %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %64, %59
  br label %78

78:                                               ; preds = %77, %55
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @snprintf(i8* %79, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %82, i32 %83)
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @snprintf(i8* %85, i32 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_16__*, i32**, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i32**, i8*, i32, i32*)** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %96 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %97 = call i32 %93(%struct.TYPE_16__* %94, i32** %9, i8* %95, i32 %96, i32* null)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %78
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %104 = call i32 @av_log(%struct.TYPE_16__* %101, i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %249

106:                                              ; preds = %78
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @avio_wb32(i32* %107, i32 0)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @MKTAG(i8 signext 97, float 9.800000e+01, i8 signext 115, i8 signext 116)
  %111 = call i32 @avio_wl32(i32* %109, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @avio_wb32(i32* %112, i32 0)
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @avio_wb32(i32* %114, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 32
  %125 = call i32 @avio_w8(i32* %120, i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @avio_wb32(i32* %126, i32 1000)
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @avio_wb64(i32* %128, i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @avio_wb64(i32* %131, i32 0)
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @avio_w8(i32* %133, i32 0)
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @avio_w8(i32* %135, i32 0)
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @avio_w8(i32* %137, i32 0)
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @avio_w8(i32* %139, i32 0)
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @avio_w8(i32* %141, i32 0)
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @avio_w8(i32* %143, i32 1)
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @avio_tell(i32* %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @avio_wb32(i32* %147, i32 0)
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @MKTAG(i8 signext 97, float 1.150000e+02, i8 signext 114, i8 signext 116)
  %151 = call i32 @avio_wl32(i32* %149, i32 %150)
  %152 = load i32*, i32** %9, align 8
  %153 = call i32 @avio_wb32(i32* %152, i32 0)
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @avio_w8(i32* %154, i32 0)
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @avio_wb32(i32* %156, i32 1)
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @avio_wb32(i32* %158, i32 1)
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %106
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  br label %169

168:                                              ; preds = %106
  br label %169

169:                                              ; preds = %168, %163
  %170 = phi i32 [ %167, %163 ], [ -1, %168 ]
  %171 = call i32 @avio_wb32(i32* %160, i32 %170)
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @update_size(i32* %172, i32 %173)
  %175 = load i32*, i32** %9, align 8
  %176 = call i32 @avio_w8(i32* %175, i32 1)
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @avio_tell(i32* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @avio_wb32(i32* %179, i32 0)
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @MKTAG(i8 signext 97, float 1.020000e+02, i8 signext 114, i8 signext 116)
  %183 = call i32 @avio_wl32(i32* %181, i32 %182)
  %184 = load i32*, i32** %9, align 8
  %185 = call i32 @avio_wb32(i32* %184, i32 0)
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @avio_wb32(i32* %186, i32 1000)
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @avio_w8(i32* %188, i32 0)
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @avio_wb32(i32* %190, i32 %191)
  %193 = load i32, i32* %16, align 4
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %234, %169
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %237

200:                                              ; preds = %194
  %201 = load i32*, i32** %9, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %204, i64 %206
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @avio_wb32(i32* %201, i32 %210)
  %212 = load i32*, i32** %9, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %215, i64 %217
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @avio_wb64(i32* %212, i32 %221)
  %223 = load i32*, i32** %9, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %226, i64 %228
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @avio_wb32(i32* %223, i32 %232)
  br label %234

234:                                              ; preds = %200
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %194

237:                                              ; preds = %194
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @update_size(i32* %238, i32 %239)
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @update_size(i32* %241, i32 0)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %244 = call i32 @ff_format_io_close(%struct.TYPE_16__* %243, i32** %9)
  %245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = call i32 @ff_rename(i8* %245, i8* %246, %struct.TYPE_16__* %247)
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %237, %100
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @FFMAX(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @MKTAG(i8 signext, float, i8 signext, i8 signext) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @update_size(i32*, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_16__*, i32**) #1

declare dso_local i32 @ff_rename(i8*, i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
