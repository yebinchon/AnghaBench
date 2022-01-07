; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_read_vbr_headers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_read_vbr_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_26__**, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64* }

@VC_CONTAINER_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"XING\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"XING flags\00", align 1
@MPGA_XING_HAS_FRAMES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"XING frames\00", align 1
@MPGA_XING_HAS_BYTES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"XING bytes\00", align 1
@MPGA_XING_HAS_TOC = common dso_local global i64 0, align 8
@MPGA_XING_HAS_QUALITY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"XING quality\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LAME\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"LAME encoder version\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"LAME tag revision/VBR method\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"LAME LP filter value\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"LAME peak signal amplitude\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"LAME radio replay gain\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"LAME audiophile replay gain\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"LAME encoder flags\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"LAME ABR/minimal bitrate\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"LAME encoder delay/padding\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"LAME misc\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"LAME MP3 gain\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"LAME presets and surround info\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"LAME music length\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"LAME music CRC\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"LAME tag CRC\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @mpga_read_vbr_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpga_read_vbr_headers(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i64], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %4, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %21, i64 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %5, align 8
  %24 = load i32, i32* @VC_CONTAINER_ERROR_NOT_FOUND, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %26 = call i32 @STREAM_POSITION(%struct.TYPE_27__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @INT64_C(i32 21)
  br label %40

38:                                               ; preds = %31
  %39 = call i32 @INT64_C(i32 36)
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  br label %53

42:                                               ; preds = %1
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @INT64_C(i32 13)
  br label %51

49:                                               ; preds = %42
  %50 = call i32 @INT64_C(i32 21)
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %40
  %54 = phi i32 [ %41, %40 ], [ %52, %51 ]
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %58 = bitcast i64* %57 to i32*
  %59 = call i32 @PEEK_BYTES_AT(%struct.TYPE_27__* %55, i32 %56, i32* %58, i32 4)
  %60 = icmp ne i32 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %62, i32* %2, align 4
  br label %254

63:                                               ; preds = %53
  %64 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @VC_FOURCC(i8 signext 88, i8 signext 105, i8 signext 110, i8 signext 103)
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @VC_FOURCC(i8 signext 73, i8 signext 110, i8 signext 102, i8 signext 111)
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %252

73:                                               ; preds = %68, %63
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @SKIP_BYTES(%struct.TYPE_27__* %74, i32 %75)
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %78 = call i32 @SKIP_FOURCC(%struct.TYPE_27__* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %80 = call i64 @READ_U32(%struct.TYPE_27__* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @MPGA_XING_HAS_FRAMES, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = call i64 @READ_U32(%struct.TYPE_27__* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @MPGA_XING_HAS_BYTES, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %95 = call i64 @READ_U32(%struct.TYPE_27__* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @MPGA_XING_HAS_TOC, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 8
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @READ_BYTES(%struct.TYPE_27__* %102, i64* %105, i32 8)
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %101
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 8
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %96
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @MPGA_XING_HAS_QUALITY, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %124 = call i32 @SKIP_U32(%struct.TYPE_27__* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i64, i64* %12, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %11, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %125
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %146, %149
  %151 = mul nsw i32 %150, 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = sdiv i32 %151, %158
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %143, %138, %125
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, 1000000
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = sdiv i64 %171, %175
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %180 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %181 = bitcast i64* %180 to i32*
  %182 = call i32 @PEEK_BYTES(%struct.TYPE_27__* %179, i32* %181, i32 4)
  %183 = icmp ne i32 %182, 4
  br i1 %183, label %184, label %186

184:                                              ; preds = %162
  %185 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %185, i32* %2, align 4
  br label %254

186:                                              ; preds = %162
  %187 = getelementptr inbounds [1 x i64], [1 x i64]* %7, i64 0, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @VC_FOURCC(i8 signext 76, i8 signext 65, i8 signext 77, i8 signext 69)
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %247

191:                                              ; preds = %186
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %193 = call i32 @SKIP_FOURCC(%struct.TYPE_27__* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %195 = call i32 @SKIP_STRING(%struct.TYPE_27__* %194, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %197 = call i32 @SKIP_U8(%struct.TYPE_27__* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %199 = call i32 @SKIP_U8(%struct.TYPE_27__* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %201 = call i32 @SKIP_U32(%struct.TYPE_27__* %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %203 = call i32 @SKIP_U16(%struct.TYPE_27__* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %205 = call i32 @SKIP_U16(%struct.TYPE_27__* %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %207 = call i32 @SKIP_U8(%struct.TYPE_27__* %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %209 = call i32 @SKIP_U8(%struct.TYPE_27__* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %211 = call i64 @READ_U24(%struct.TYPE_27__* %210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  store i64 %211, i64* %13, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %213 = call i32 @SKIP_U8(%struct.TYPE_27__* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %215 = call i32 @SKIP_U8(%struct.TYPE_27__* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %217 = call i32 @SKIP_U16(%struct.TYPE_27__* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %219 = call i32 @SKIP_U32(%struct.TYPE_27__* %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %221 = call i32 @SKIP_U16(%struct.TYPE_27__* %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %223 = call i32 @SKIP_U16(%struct.TYPE_27__* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %224 = load i64, i64* %13, align 8
  %225 = ashr i64 %224, 12
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  store i64 %230, i64* %237, align 8
  %238 = load i64, i64* %13, align 8
  %239 = and i64 %238, 4095
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 1
  store i64 %239, i64* %246, align 8
  br label %247

247:                                              ; preds = %191, %186
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @SEEK(%struct.TYPE_27__* %248, i32 %249)
  %251 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %247, %68
  %253 = load i32, i32* %6, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %184, %61
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_27__*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @PEEK_BYTES_AT(%struct.TYPE_27__*, i32, i32*, i32) #1

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @SKIP_FOURCC(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @READ_U32(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @READ_BYTES(%struct.TYPE_27__*, i64*, i32) #1

declare dso_local i32 @SKIP_U32(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @SKIP_STRING(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @SKIP_U8(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @SKIP_U16(%struct.TYPE_27__*, i8*) #1

declare dso_local i64 @READ_U24(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @SEEK(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
