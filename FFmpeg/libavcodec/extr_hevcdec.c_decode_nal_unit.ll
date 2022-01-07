; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_decode_nal_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_decode_nal_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, %struct.TYPE_40__*, i8*, %struct.TYPE_34__, %struct.TYPE_33__, i32, i32, i8*, i32, i32, i32, %struct.TYPE_37__* }
%struct.TYPE_40__ = type { i32, %struct.TYPE_36__*, i32 }
%struct.TYPE_36__ = type { i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32*, i32)*, i32 (%struct.TYPE_40__*, i32, i32)* }
%struct.TYPE_34__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVDISCARD_BIDIR = common dso_local global i32 0, align 4
@HEVC_SLICE_B = common dso_local global i32 0, align 4
@AVDISCARD_NONINTRA = common dso_local global i32 0, align 4
@HEVC_SLICE_I = common dso_local global i32 0, align 4
@AVDISCARD_NONKEY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i8* null, align 8
@INT_MIN = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"First slice in a frame missing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Non-matching NAL types of the VCL NALUs: %d %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Error constructing the reference lists for the current slice.\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Skipping NAL unit %d\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, %struct.TYPE_39__*)* @decode_nal_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_nal_unit(%struct.TYPE_38__* %0, %struct.TYPE_39__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_39__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %5, align 8
  %10 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %10, i32 0, i32 15
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  store %struct.TYPE_37__* %12, %struct.TYPE_37__** %6, align 8
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 0
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %567 [
    i32 128, label %32
    i32 135, label %85
    i32 142, label %141
    i32 137, label %194
    i32 136, label %194
    i32 131, label %252
    i32 132, label %252
    i32 130, label %252
    i32 129, label %252
    i32 134, label %252
    i32 133, label %252
    i32 150, label %252
    i32 149, label %252
    i32 151, label %252
    i32 143, label %252
    i32 144, label %252
    i32 148, label %252
    i32 141, label %252
    i32 140, label %252
    i32 139, label %252
    i32 138, label %252
    i32 146, label %555
    i32 147, label %555
    i32 152, label %566
    i32 145, label %566
  ]

32:                                               ; preds = %2
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_40__*, %struct.TYPE_40__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %36, align 8
  %38 = icmp ne %struct.TYPE_36__* %37, null
  br i1 %38, label %39, label %73

39:                                               ; preds = %32
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_40__*, i32, i32, i32)* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %39
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %57, align 8
  %59 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %55(%struct.TYPE_40__* %58, i32 %61, i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %48
  br label %577

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %39, %32
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %76, align 8
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 7
  %80 = call i32 @ff_hevc_decode_nal_vps(i32* %74, %struct.TYPE_40__* %77, %struct.TYPE_34__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %577

84:                                               ; preds = %73
  br label %576

85:                                               ; preds = %2
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %89, align 8
  %91 = icmp ne %struct.TYPE_36__* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %85
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %98, align 8
  %100 = icmp ne i32 (%struct.TYPE_40__*, i32, i32, i32)* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %92
  %102 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %107, align 8
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_40__*, %struct.TYPE_40__** %110, align 8
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 %108(%struct.TYPE_40__* %111, i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %101
  br label %577

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125, %92, %85
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %129, align 8
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 13
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ff_hevc_decode_nal_sps(i32* %127, %struct.TYPE_40__* %130, %struct.TYPE_34__* %132, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %577

140:                                              ; preds = %126
  br label %576

141:                                              ; preds = %2
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_40__*, %struct.TYPE_40__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %145, align 8
  %147 = icmp ne %struct.TYPE_36__* %146, null
  br i1 %147, label %148, label %182

148:                                              ; preds = %141
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_40__*, %struct.TYPE_40__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %154, align 8
  %156 = icmp ne i32 (%struct.TYPE_40__*, i32, i32, i32)* %155, null
  br i1 %156, label %157, label %182

157:                                              ; preds = %148
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_40__*, %struct.TYPE_40__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %163, align 8
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_40__*, %struct.TYPE_40__** %166, align 8
  %168 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 %164(%struct.TYPE_40__* %167, i32 %170, i32 %173, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %157
  br label %577

181:                                              ; preds = %157
  br label %182

182:                                              ; preds = %181, %148, %141
  %183 = load i32*, i32** %7, align 8
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_40__*, %struct.TYPE_40__** %185, align 8
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 7
  %189 = call i32 @ff_hevc_decode_nal_pps(i32* %183, %struct.TYPE_40__* %186, %struct.TYPE_34__* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %577

193:                                              ; preds = %182
  br label %576

194:                                              ; preds = %2, %2
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %198, align 8
  %200 = icmp ne %struct.TYPE_36__* %199, null
  br i1 %200, label %201, label %235

201:                                              ; preds = %194
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_40__*, %struct.TYPE_40__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %207, align 8
  %209 = icmp ne i32 (%struct.TYPE_40__*, i32, i32, i32)* %208, null
  br i1 %209, label %210, label %235

210:                                              ; preds = %201
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_40__*, %struct.TYPE_40__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 0
  %217 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %216, align 8
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_40__*, %struct.TYPE_40__** %219, align 8
  %221 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 %217(%struct.TYPE_40__* %220, i32 %223, i32 %226, i32 %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %210
  br label %577

234:                                              ; preds = %210
  br label %235

235:                                              ; preds = %234, %201, %194
  %236 = load i32*, i32** %7, align 8
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_40__*, %struct.TYPE_40__** %238, align 8
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 12
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @ff_hevc_decode_nal_sei(i32* %236, %struct.TYPE_40__* %239, i32* %241, %struct.TYPE_34__* %243, i32 %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %235
  br label %577

251:                                              ; preds = %235
  br label %576

252:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %253 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %254 = call i32 @hls_slice_header(%struct.TYPE_38__* %253)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* %9, align 4
  store i32 %258, i32* %3, align 4
  br label %589

259:                                              ; preds = %252
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %263, i32* %9, align 4
  br label %577

264:                                              ; preds = %259
  %265 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_40__*, %struct.TYPE_40__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @AVDISCARD_BIDIR, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %264
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %273, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @HEVC_SLICE_B, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %306, label %279

279:                                              ; preds = %272, %264
  %280 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @AVDISCARD_NONINTRA, align 4
  %286 = icmp sge i32 %284, %285
  br i1 %286, label %287, label %294

287:                                              ; preds = %279
  %288 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %288, i32 0, i32 8
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @HEVC_SLICE_I, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %306, label %294

294:                                              ; preds = %287, %279
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_40__*, %struct.TYPE_40__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @AVDISCARD_NONKEY, align 4
  %301 = icmp sge i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %294
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %304 = call i32 @IS_IRAP(%struct.TYPE_38__* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %302, %287, %272
  br label %576

307:                                              ; preds = %302, %294
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %395

313:                                              ; preds = %307
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 6
  %316 = load i8*, i8** %315, align 8
  %317 = load i8*, i8** @INT_MAX, align 8
  %318 = icmp eq i8* %316, %317
  br i1 %318, label %319, label %344

319:                                              ; preds = %313
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %322, 148
  br i1 %323, label %328, label %324

324:                                              ; preds = %319
  %325 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %326 = call i32 @IS_BLA(%struct.TYPE_38__* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %324, %319
  %329 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 11
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i32 0, i32 6
  store i8* %331, i8** %333, align 8
  br label %343

334:                                              ; preds = %324
  %335 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %336 = call i32 @IS_IDR(%struct.TYPE_38__* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  %339 = load i8*, i8** @INT_MIN, align 8
  %340 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %340, i32 0, i32 6
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %338, %334
  br label %343

343:                                              ; preds = %342, %328
  br label %344

344:                                              ; preds = %343, %313
  %345 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp eq i32 %347, 138
  br i1 %348, label %354, label %349

349:                                              ; preds = %344
  %350 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %352, 139
  br i1 %353, label %354, label %365

354:                                              ; preds = %349, %344
  %355 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %355, i32 0, i32 11
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 6
  %360 = load i8*, i8** %359, align 8
  %361 = icmp ule i8* %357, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %354
  %363 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %363, i32 0, i32 1
  store i32 0, i32* %364, align 4
  br label %576

365:                                              ; preds = %354, %349
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp eq i32 %368, 138
  br i1 %369, label %370, label %382

370:                                              ; preds = %365
  %371 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %371, i32 0, i32 11
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 6
  %376 = load i8*, i8** %375, align 8
  %377 = icmp ugt i8* %373, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %370
  %379 = load i8*, i8** @INT_MIN, align 8
  %380 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %380, i32 0, i32 6
  store i8* %379, i8** %381, align 8
  br label %382

382:                                              ; preds = %378, %370, %365
  br label %383

383:                                              ; preds = %382
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 10
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %385, align 4
  %388 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %389 = call i32 @hevc_frame_start(%struct.TYPE_38__* %388)
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %9, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %383
  %393 = load i32, i32* %9, align 4
  store i32 %393, i32* %3, align 4
  br label %589

394:                                              ; preds = %383
  br label %407

395:                                              ; preds = %307
  %396 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %396, i32 0, i32 9
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %395
  %401 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %401, i32 0, i32 5
  %403 = load %struct.TYPE_40__*, %struct.TYPE_40__** %402, align 8
  %404 = load i32, i32* @AV_LOG_ERROR, align 4
  %405 = call i32 (%struct.TYPE_40__*, i32, i8*, ...) @av_log(%struct.TYPE_40__* %403, i32 %404, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %577

406:                                              ; preds = %395
  br label %407

407:                                              ; preds = %406, %394
  %408 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %410, %413
  br i1 %414, label %415, label %428

415:                                              ; preds = %407
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %416, i32 0, i32 5
  %418 = load %struct.TYPE_40__*, %struct.TYPE_40__** %417, align 8
  %419 = load i32, i32* @AV_LOG_ERROR, align 4
  %420 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = call i32 (%struct.TYPE_40__*, i32, i8*, ...) @av_log(%struct.TYPE_40__* %418, i32 %419, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %422, i32 %425)
  %427 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %427, i32* %3, align 4
  br label %589

428:                                              ; preds = %407
  %429 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %429, i32 0, i32 8
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %453, label %434

434:                                              ; preds = %428
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %435, i32 0, i32 8
  %437 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @HEVC_SLICE_I, align 4
  %440 = icmp ne i32 %438, %439
  br i1 %440, label %441, label %453

441:                                              ; preds = %434
  %442 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %443 = call i32 @ff_hevc_slice_rpl(%struct.TYPE_38__* %442)
  store i32 %443, i32* %9, align 4
  %444 = load i32, i32* %9, align 4
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %441
  %447 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %447, i32 0, i32 5
  %449 = load %struct.TYPE_40__*, %struct.TYPE_40__** %448, align 8
  %450 = load i32, i32* @AV_LOG_WARNING, align 4
  %451 = call i32 (%struct.TYPE_40__*, i32, i8*, ...) @av_log(%struct.TYPE_40__* %449, i32 %450, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %577

452:                                              ; preds = %441
  br label %453

453:                                              ; preds = %452, %434, %428
  %454 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %482

459:                                              ; preds = %453
  %460 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %460, i32 0, i32 5
  %462 = load %struct.TYPE_40__*, %struct.TYPE_40__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %462, i32 0, i32 1
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %463, align 8
  %465 = icmp ne %struct.TYPE_36__* %464, null
  br i1 %465, label %466, label %482

466:                                              ; preds = %459
  %467 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %467, i32 0, i32 5
  %469 = load %struct.TYPE_40__*, %struct.TYPE_40__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_36__*, %struct.TYPE_36__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %471, i32 0, i32 1
  %473 = load i32 (%struct.TYPE_40__*, i32*, i32)*, i32 (%struct.TYPE_40__*, i32*, i32)** %472, align 8
  %474 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %474, i32 0, i32 5
  %476 = load %struct.TYPE_40__*, %struct.TYPE_40__** %475, align 8
  %477 = call i32 %473(%struct.TYPE_40__* %476, i32* null, i32 0)
  store i32 %477, i32* %9, align 4
  %478 = load i32, i32* %9, align 4
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %466
  br label %577

481:                                              ; preds = %466
  br label %482

482:                                              ; preds = %481, %459, %453
  %483 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %483, i32 0, i32 5
  %485 = load %struct.TYPE_40__*, %struct.TYPE_40__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_36__*, %struct.TYPE_36__** %486, align 8
  %488 = icmp ne %struct.TYPE_36__* %487, null
  br i1 %488, label %489, label %511

489:                                              ; preds = %482
  %490 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %490, i32 0, i32 5
  %492 = load %struct.TYPE_40__*, %struct.TYPE_40__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_36__*, %struct.TYPE_36__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %494, i32 0, i32 2
  %496 = load i32 (%struct.TYPE_40__*, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32)** %495, align 8
  %497 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %497, i32 0, i32 5
  %499 = load %struct.TYPE_40__*, %struct.TYPE_40__** %498, align 8
  %500 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i32 %496(%struct.TYPE_40__* %499, i32 %502, i32 %505)
  store i32 %506, i32* %9, align 4
  %507 = load i32, i32* %9, align 4
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %489
  br label %577

510:                                              ; preds = %489
  br label %554

511:                                              ; preds = %482
  %512 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = icmp sgt i32 %514, 1
  br i1 %515, label %516, label %526

516:                                              ; preds = %511
  %517 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %518 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %517, i32 0, i32 8
  %519 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %516
  %523 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %524 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %525 = call i32 @hls_slice_data_wpp(%struct.TYPE_38__* %523, %struct.TYPE_39__* %524)
  store i32 %525, i32* %8, align 4
  br label %529

526:                                              ; preds = %516, %511
  %527 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %528 = call i32 @hls_slice_data(%struct.TYPE_38__* %527)
  store i32 %528, i32* %8, align 4
  br label %529

529:                                              ; preds = %526, %522
  %530 = load i32, i32* %8, align 4
  %531 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %531, i32 0, i32 7
  %533 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %532, i32 0, i32 0
  %534 = load %struct.TYPE_35__*, %struct.TYPE_35__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %537, i32 0, i32 7
  %539 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %538, i32 0, i32 0
  %540 = load %struct.TYPE_35__*, %struct.TYPE_35__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = mul nsw i32 %536, %542
  %544 = icmp sge i32 %530, %543
  br i1 %544, label %545, label %548

545:                                              ; preds = %529
  %546 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %547 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %546, i32 0, i32 1
  store i32 1, i32* %547, align 4
  br label %548

548:                                              ; preds = %545, %529
  %549 = load i32, i32* %8, align 4
  %550 = icmp slt i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %548
  %552 = load i32, i32* %8, align 4
  store i32 %552, i32* %9, align 4
  br label %577

553:                                              ; preds = %548
  br label %554

554:                                              ; preds = %553, %510
  br label %576

555:                                              ; preds = %2, %2
  %556 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %556, i32 0, i32 4
  %558 = load i32, i32* %557, align 8
  %559 = add nsw i32 %558, 1
  %560 = and i32 %559, 255
  %561 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %561, i32 0, i32 4
  store i32 %560, i32* %562, align 8
  %563 = load i8*, i8** @INT_MAX, align 8
  %564 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %564, i32 0, i32 6
  store i8* %563, i8** %565, align 8
  br label %576

566:                                              ; preds = %2, %2
  br label %576

567:                                              ; preds = %2
  %568 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %568, i32 0, i32 5
  %570 = load %struct.TYPE_40__*, %struct.TYPE_40__** %569, align 8
  %571 = load i32, i32* @AV_LOG_INFO, align 4
  %572 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = call i32 (%struct.TYPE_40__*, i32, i8*, ...) @av_log(%struct.TYPE_40__* %570, i32 %571, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %574)
  br label %576

576:                                              ; preds = %567, %566, %555, %554, %362, %306, %251, %193, %140, %84
  store i32 0, i32* %3, align 4
  br label %589

577:                                              ; preds = %551, %509, %480, %446, %400, %262, %250, %233, %192, %180, %139, %124, %83, %71
  %578 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %579 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %578, i32 0, i32 5
  %580 = load %struct.TYPE_40__*, %struct.TYPE_40__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* @AV_EF_EXPLODE, align 4
  %584 = and i32 %582, %583
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %588

586:                                              ; preds = %577
  %587 = load i32, i32* %9, align 4
  store i32 %587, i32* %3, align 4
  br label %589

588:                                              ; preds = %577
  store i32 0, i32* %3, align 4
  br label %589

589:                                              ; preds = %588, %586, %576, %415, %392, %257
  %590 = load i32, i32* %3, align 4
  ret i32 %590
}

declare dso_local i32 @ff_hevc_decode_nal_vps(i32*, %struct.TYPE_40__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ff_hevc_decode_nal_sps(i32*, %struct.TYPE_40__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @ff_hevc_decode_nal_pps(i32*, %struct.TYPE_40__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ff_hevc_decode_nal_sei(i32*, %struct.TYPE_40__*, i32*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @hls_slice_header(%struct.TYPE_38__*) #1

declare dso_local i32 @IS_IRAP(%struct.TYPE_38__*) #1

declare dso_local i32 @IS_BLA(%struct.TYPE_38__*) #1

declare dso_local i32 @IS_IDR(%struct.TYPE_38__*) #1

declare dso_local i32 @hevc_frame_start(%struct.TYPE_38__*) #1

declare dso_local i32 @av_log(%struct.TYPE_40__*, i32, i8*, ...) #1

declare dso_local i32 @ff_hevc_slice_rpl(%struct.TYPE_38__*) #1

declare dso_local i32 @hls_slice_data_wpp(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @hls_slice_data(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
