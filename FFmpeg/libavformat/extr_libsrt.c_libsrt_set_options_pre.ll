; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_set_options_pre.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsrt.c_libsrt_set_options_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i64, i64 }

@SRT_MODE_RENDEZVOUS = common dso_local global i64 0, align 8
@SRTO_RENDEZVOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SRTO_RENDEZVOUS\00", align 1
@SRTT_INVALID = common dso_local global i64 0, align 8
@SRTO_TRANSTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SRTO_TRANSTYPE\00", align 1
@SRTO_MAXBW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SRTO_MAXBW\00", align 1
@SRTO_PBKEYLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SRTO_PBKEYLEN\00", align 1
@SRTO_PASSPHRASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SRTO_PASSPHRASE\00", align 1
@SRTO_MSS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"SRTO_MMS\00", align 1
@SRTO_FC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"SRTO_FC\00", align 1
@SRTO_IPTTL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"SRTO_UPTTL\00", align 1
@SRTO_IPTOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"SRTO_IPTOS\00", align 1
@SRTO_LATENCY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"SRTO_LATENCY\00", align 1
@SRTO_RCVLATENCY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"SRTO_RCVLATENCY\00", align 1
@SRTO_PEERLATENCY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"SRTO_PEERLATENCY\00", align 1
@SRTO_TLPKTDROP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"SRTO_TLPKDROP\00", align 1
@SRTO_NAKREPORT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"SRTO_NAKREPORT\00", align 1
@SRTO_CONNTIMEO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"SRTO_CONNTIMEO\00", align 1
@SRTO_SNDBUF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"SRTO_SNDBUF\00", align 1
@SRTO_RCVBUF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"SRTO_RCVBUF\00", align 1
@SRTO_LOSSMAXTTL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"SRTO_LOSSMAXTTL\00", align 1
@SRTO_MINVERSION = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"SRTO_MINVERSION\00", align 1
@SRTO_STREAMID = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"SRTO_STREAMID\00", align 1
@SRTO_SMOOTHER = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"SRTO_SMOOTHER\00", align 1
@SRTO_MESSAGEAPI = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"SRTO_MESSAGEAPI\00", align 1
@SRTO_PAYLOADSIZE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"SRTO_PAYLOADSIZE\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@SRTO_SENDER = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"SRTO_SENDER\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @libsrt_set_options_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsrt_set_options_pre(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SRT_MODE_RENDEZVOUS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SRTO_RENDEZVOUS, align 4
  %39 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %361, label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SRTT_INVALID, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SRTO_TRANSTYPE, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = bitcast i64* %52 to i32*
  %54 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %53, i32 8)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %361, label %56

56:                                               ; preds = %47, %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SRTO_MAXBW, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  %67 = bitcast i64* %66 to i32*
  %68 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %67, i32 8)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %361, label %70

70:                                               ; preds = %61, %56
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SRTO_PBKEYLEN, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 7
  %81 = bitcast i64* %80 to i32*
  %82 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %81, i32 8)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %361, label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SRTO_PASSPHRASE, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 8
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @strlen(i32* %98)
  %100 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %95, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %361, label %102

102:                                              ; preds = %89, %84
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @SRTO_MSS, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 9
  %113 = bitcast i64* %112 to i32*
  %114 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %113, i32 8)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %361, label %116

116:                                              ; preds = %107, %102
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 10
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @SRTO_FC, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 10
  %127 = bitcast i64* %126 to i32*
  %128 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %127, i32 8)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %361, label %130

130:                                              ; preds = %121, %116
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @SRTO_IPTTL, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 11
  %141 = bitcast i64* %140 to i32*
  %142 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %136, i32 %137, i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %141, i32 8)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %361, label %144

144:                                              ; preds = %135, %130
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 12
  %147 = load i64, i64* %146, align 8
  %148 = icmp sge i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @SRTO_IPTOS, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 12
  %155 = bitcast i64* %154 to i32*
  %156 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %155, i32 8)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %361, label %158

158:                                              ; preds = %149, %144
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @SRTO_LATENCY, align 4
  %167 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %8, i32 4)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %361, label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @SRTO_RCVLATENCY, align 4
  %178 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %175, i32 %176, i32 %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %9, i32 4)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %361, label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @SRTO_PEERLATENCY, align 4
  %189 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %10, i32 4)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %361, label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 13
  %194 = load i64, i64* %193, align 8
  %195 = icmp sge i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @SRTO_TLPKTDROP, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 13
  %202 = bitcast i64* %201 to i32*
  %203 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32* %202, i32 8)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %361, label %205

205:                                              ; preds = %196, %191
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 14
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* @SRTO_NAKREPORT, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 14
  %216 = bitcast i64* %215 to i32*
  %217 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %211, i32 %212, i32 %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %216, i32 8)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %361, label %219

219:                                              ; preds = %210, %205
  %220 = load i32, i32* %11, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @SRTO_CONNTIMEO, align 4
  %226 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32* %11, i32 4)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %361, label %228

228:                                              ; preds = %222, %219
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 15
  %231 = load i64, i64* %230, align 8
  %232 = icmp sge i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %228
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @SRTO_SNDBUF, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 15
  %239 = bitcast i64* %238 to i32*
  %240 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32* %239, i32 8)
  %241 = icmp slt i64 %240, 0
  br i1 %241, label %361, label %242

242:                                              ; preds = %233, %228
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 16
  %245 = load i64, i64* %244, align 8
  %246 = icmp sge i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %242
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @SRTO_RCVBUF, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 16
  %253 = bitcast i64* %252 to i32*
  %254 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32* %253, i32 8)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %361, label %256

256:                                              ; preds = %247, %242
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 17
  %259 = load i64, i64* %258, align 8
  %260 = icmp sge i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %256
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* @SRTO_LOSSMAXTTL, align 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 17
  %267 = bitcast i64* %266 to i32*
  %268 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %262, i32 %263, i32 %264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32* %267, i32 8)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %361, label %270

270:                                              ; preds = %261, %256
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 18
  %273 = load i64, i64* %272, align 8
  %274 = icmp sge i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* @SRTO_MINVERSION, align 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 18
  %281 = bitcast i64* %280 to i32*
  %282 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %276, i32 %277, i32 %278, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32* %281, i32 8)
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %361, label %284

284:                                              ; preds = %275, %270
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 19
  %287 = load i32*, i32** %286, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %302

289:                                              ; preds = %284
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @SRTO_STREAMID, align 4
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 19
  %295 = load i32*, i32** %294, align 8
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 19
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @strlen(i32* %298)
  %300 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %290, i32 %291, i32 %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32* %295, i32 %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %361, label %302

302:                                              ; preds = %289, %284
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 20
  %305 = load i32*, i32** %304, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %320

307:                                              ; preds = %302
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @SRTO_SMOOTHER, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 20
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 20
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @strlen(i32* %316)
  %318 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %308, i32 %309, i32 %310, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32* %313, i32 %317)
  %319 = icmp slt i64 %318, 0
  br i1 %319, label %361, label %320

320:                                              ; preds = %307, %302
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 21
  %323 = load i64, i64* %322, align 8
  %324 = icmp sge i64 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %320
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* @SRTO_MESSAGEAPI, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 21
  %331 = bitcast i64* %330 to i32*
  %332 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %326, i32 %327, i32 %328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32* %331, i32 8)
  %333 = icmp slt i64 %332, 0
  br i1 %333, label %361, label %334

334:                                              ; preds = %325, %320
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 22
  %337 = load i64, i64* %336, align 8
  %338 = icmp sge i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* @SRTO_PAYLOADSIZE, align 4
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 22
  %345 = bitcast i64* %344 to i32*
  %346 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %340, i32 %341, i32 %342, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32* %345, i32 8)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %361, label %348

348:                                              ; preds = %339, %334
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %348
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %357 = load i32, i32* %5, align 4
  %358 = load i32, i32* @SRTO_SENDER, align 4
  %359 = call i64 @libsrt_setsockopt(%struct.TYPE_5__* %356, i32 %357, i32 %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32* %7, i32 4)
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %355, %339, %325, %307, %289, %275, %261, %247, %233, %222, %210, %196, %185, %174, %163, %149, %135, %121, %107, %89, %75, %61, %47, %35
  %362 = load i32, i32* @EIO, align 4
  %363 = call i32 @AVERROR(i32 %362)
  store i32 %363, i32* %3, align 4
  br label %365

364:                                              ; preds = %355, %348
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %364, %361
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i64 @libsrt_setsockopt(%struct.TYPE_5__*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
