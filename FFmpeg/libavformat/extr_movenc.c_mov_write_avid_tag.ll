; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_avid_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_avid_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not locate DNxHD bit stream in vos_data\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not locate DNxHD bit stream, vos_data too small\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ACLR\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0001\00", align 1
@AVCOL_RANGE_MPEG = common dso_local global i64 0, align 8
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ADHR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"APRG\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ARES\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @mov_write_avid_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_avid_tag(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 41
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @ff_dnxhd_parse_header_prefix(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 2
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 40
  %41 = call i32 @AV_RB32(i32* %40)
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %24
  %43 = load i32, i32* @AV_LOG_WARNING, align 4
  %44 = call i32 @av_log(i32* null, i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %217

45:                                               ; preds = %30
  br label %49

46:                                               ; preds = %19, %2
  %47 = load i32, i32* @AV_LOG_WARNING, align 4
  %48 = call i32 @av_log(i32* null, i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %217

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @avio_wb32(i32* %50, i32 24)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ffio_wfourcc(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ffio_wfourcc(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ffio_wfourcc(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AVCOL_RANGE_MPEG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %49
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AVCOL_RANGE_UNSPECIFIED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65, %49
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @avio_wb32(i32* %74, i32 1)
  br label %79

76:                                               ; preds = %65
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @avio_wb32(i32* %77, i32 2)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @avio_wb32(i32* %80, i32 0)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @MKTAG(i8 signext 65, i8 signext 86, i8 signext 100, i8 signext 104)
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @avio_wb32(i32* %88, i32 32)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ffio_wfourcc(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @ffio_wfourcc(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @avio_wb32(i32* %94, i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @avio_wb32(i32* %97, i32 0)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @avio_wb32(i32* %99, i32 1)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @avio_wb32(i32* %101, i32 0)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @avio_wb32(i32* %103, i32 0)
  store i32 0, i32* %3, align 4
  br label %217

105:                                              ; preds = %79
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @avio_wb32(i32* %106, i32 24)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @ffio_wfourcc(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @ffio_wfourcc(i32* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @ffio_wfourcc(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @avio_wb32(i32* %114, i32 1)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @avio_wb32(i32* %116, i32 0)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @avio_wb32(i32* %118, i32 120)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @ffio_wfourcc(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @ffio_wfourcc(i32* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @ffio_wfourcc(i32* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @avio_wb32(i32* %126, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %105
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %136
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %145, %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %152, %158
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %144, %136, %105
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @avio_wb32(i32* %161, i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %160
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sdiv i32 %172, 2
  %174 = call i32 @avio_wb32(i32* %167, i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @avio_wb32(i32* %175, i32 2)
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @avio_wb32(i32* %177, i32 0)
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @avio_wb32(i32* %179, i32 4)
  br label %206

181:                                              ; preds = %160
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @avio_wb32(i32* %182, i32 %187)
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @avio_wb32(i32* %189, i32 1)
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @avio_wb32(i32* %191, i32 0)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1080
  br i1 %198, label %199, label %202

199:                                              ; preds = %181
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @avio_wb32(i32* %200, i32 5)
  br label %205

202:                                              ; preds = %181
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @avio_wb32(i32* %203, i32 6)
  br label %205

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %205, %166
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %213, %206
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 10
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @avio_wb64(i32* %211, i32 0)
  br label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %207

216:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %87, %46, %42
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i64 @ff_dnxhd_parse_header_prefix(i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
