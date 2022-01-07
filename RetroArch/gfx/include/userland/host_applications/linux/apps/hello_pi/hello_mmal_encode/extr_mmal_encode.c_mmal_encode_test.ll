; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_mmal_encode_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_mmal_encode_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_25__**, i64, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Encoding test image %s\0A\00", align 1
@encoder = common dso_local global %struct.TYPE_20__* null, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to disable input port\0A\00", align 1
@INPUT_ENC = common dso_local global i32 0, align 4
@WIDTH = common dso_local global i8* null, align 8
@HEIGHT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to commit input port format\0A\00", align 1
@MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to enable input port\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"- input %4.4s %ux%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to disable output port\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to commit output port format\0A\00", align 1
@MMAL_PARAMETER_JPEG_Q_FACTOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to enable output port\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"- output %4.4s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to open file %s (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to send buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"- sending %u bytes to encoder\0A\00", align 1
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@MMAL_EAGAIN = common dso_local global i64 0, align 8
@sem = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to get full buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"- received %i bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to write complete buffer\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"- written %u bytes to %s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmal_encode_test(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** @encoder, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %19, i64 0
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %5, align 8
  %22 = load i64, i64* @MMAL_SUCCESS, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** @encoder, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = call i64 @mmal_wrapper_port_disable(%struct.TYPE_25__* %30)
  %32 = load i64, i64* @MMAL_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* @INPUT_ENC, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = load i8*, i8** @WIDTH, align 8
  %46 = call i8* @VCOS_ALIGN_UP(i8* %45, i32 32)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 8
  %55 = load i8*, i8** @HEIGHT, align 8
  %56 = call i8* @VCOS_ALIGN_UP(i8* %55, i32 16)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 4
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** @WIDTH, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  store i8* %81, i8** %89, align 8
  %90 = load i8*, i8** @HEIGHT, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i8* %90, i8** %98, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = call i64 @mmal_port_format_commit(%struct.TYPE_25__* %99)
  %101 = load i64, i64* @MMAL_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %39
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %39
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %119 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE, align 4
  %120 = call i64 @mmal_wrapper_port_enable(%struct.TYPE_25__* %118, i32 %119)
  %121 = load i64, i64* @MMAL_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %107
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = bitcast i32* %131 to i8*
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %132, i32 %140, i32 %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** @encoder, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %152, i64 0
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  store %struct.TYPE_25__* %154, %struct.TYPE_25__** %6, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %127
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %161 = call i64 @mmal_wrapper_port_disable(%struct.TYPE_25__* %160)
  %162 = load i64, i64* @MMAL_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %167 = call i32 @exit(i32 1) #3
  unreachable

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %127
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %176 = call i64 @mmal_port_format_commit(%struct.TYPE_25__* %175)
  %177 = load i64, i64* @MMAL_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %182 = call i32 @exit(i32 1) #3
  unreachable

183:                                              ; preds = %169
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %185 = load i32, i32* @MMAL_PARAMETER_JPEG_Q_FACTOR, align 4
  %186 = call i32 @mmal_port_parameter_set_uint32(%struct.TYPE_25__* %184, i32 %185, i32 100)
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %198 = load i32, i32* @MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE, align 4
  %199 = call i64 @mmal_wrapper_port_enable(%struct.TYPE_25__* %197, i32 %198)
  %200 = load i64, i64* @MMAL_SUCCESS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %183
  %203 = load i32, i32* @stderr, align 4
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %183
  %207 = bitcast i32* %3 to i8*
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %207)
  %209 = load i8*, i8** %4, align 8
  %210 = call i32* @fopen(i8* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %210, i32** %13, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load i32, i32* @stderr, align 4
  %215 = load i8*, i8** %4, align 8
  %216 = load i32, i32* @errno, align 4
  %217 = call i8* @strerror(i32 %216)
  %218 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %215, i8* %217)
  %219 = call i32 @exit(i32 1) #3
  unreachable

220:                                              ; preds = %206
  br label %221

221:                                              ; preds = %330, %292, %220
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  br i1 %224, label %225, label %336

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %240, %225
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %228 = call i64 @mmal_wrapper_buffer_get_empty(%struct.TYPE_25__* %227, %struct.TYPE_26__** %8, i32 0)
  %229 = load i64, i64* @MMAL_SUCCESS, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %234 = call i64 @mmal_port_send_buffer(%struct.TYPE_25__* %232, %struct.TYPE_26__* %233)
  %235 = load i64, i64* @MMAL_SUCCESS, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i32, i32* @stderr, align 4
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %241

240:                                              ; preds = %231
  br label %226

241:                                              ; preds = %237, %226
  %242 = load i32, i32* %11, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %286, label %244

244:                                              ; preds = %241
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %246 = call i64 @mmal_wrapper_buffer_get_empty(%struct.TYPE_25__* %245, %struct.TYPE_26__** %7, i32 0)
  %247 = load i64, i64* @MMAL_SUCCESS, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %286

249:                                              ; preds = %244
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %252)
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @create_rgba_test_image(i32 %256, i32 %259, i32 %267)
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %279 = call i64 @mmal_port_send_buffer(%struct.TYPE_25__* %277, %struct.TYPE_26__* %278)
  %280 = load i64, i64* @MMAL_SUCCESS, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %249
  %283 = load i32, i32* @stderr, align 4
  %284 = call i32 (i32, i8*, ...) @fprintf(i32 %283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %336

285:                                              ; preds = %249
  store i32 1, i32* %11, align 4
  br label %286

286:                                              ; preds = %285, %244, %241
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %288 = call i64 @mmal_wrapper_buffer_get_full(%struct.TYPE_25__* %287, %struct.TYPE_26__** %8, i32 0)
  store i64 %288, i64* %9, align 8
  %289 = load i64, i64* %9, align 8
  %290 = load i64, i64* @MMAL_EAGAIN, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = call i32 @vcos_semaphore_wait(i32* @sem)
  br label %221

294:                                              ; preds = %286
  %295 = load i64, i64* %9, align 8
  %296 = load i64, i64* @MMAL_SUCCESS, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load i32, i32* @stderr, align 4
  %300 = call i32 (i32, i8*, ...) @fprintf(i32 %299, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %301 = call i32 @exit(i32 1) #3
  unreachable

302:                                              ; preds = %294
  br label %303

303:                                              ; preds = %302
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %306)
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %312 = and i32 %310, %311
  store i32 %312, i32* %10, align 4
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %13, align 8
  %320 = call i32 @fwrite(i32 %315, i32 1, i32 %318, i32* %319)
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %321, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %303
  %327 = load i32, i32* @stderr, align 4
  %328 = call i32 (i32, i8*, ...) @fprintf(i32 %327, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %329 = call i32 @exit(i32 1) #3
  unreachable

330:                                              ; preds = %303
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %12, align 4
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %335 = call i32 @mmal_buffer_header_release(%struct.TYPE_26__* %334)
  br label %221

336:                                              ; preds = %282, %221
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %338 = call i32 @mmal_port_flush(%struct.TYPE_25__* %337)
  %339 = load i32*, i32** %13, align 8
  %340 = call i32 @fclose(i32* %339)
  %341 = load i32, i32* %12, align 4
  %342 = load i8*, i8** %4, align 8
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %341, i8* %342)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mmal_wrapper_port_disable(%struct.TYPE_25__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @VCOS_ALIGN_UP(i8*, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_25__*) #1

declare dso_local i64 @mmal_wrapper_port_enable(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @mmal_port_parameter_set_uint32(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @mmal_wrapper_buffer_get_empty(%struct.TYPE_25__*, %struct.TYPE_26__**, i32) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @create_rgba_test_image(i32, i32, i32) #1

declare dso_local i64 @mmal_wrapper_buffer_get_full(%struct.TYPE_25__*, %struct.TYPE_26__**, i32) #1

declare dso_local i32 @vcos_semaphore_wait(i32*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_26__*) #1

declare dso_local i32 @mmal_port_flush(%struct.TYPE_25__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
