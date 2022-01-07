; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_connect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@RTMP_SYSTEM_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_INVOKE = common dso_local global i32 0, align 4
@APP_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"nonprivate\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"flashVer\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"swfUrl\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tcUrl\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fpad\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"audioCodecs\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"videoCodecs\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"videoFunction\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pageUrl\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @gen_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_connect(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %12 = load i32, i32* @RTMP_PT_INVOKE, align 4
  %13 = load i64, i64* @APP_MAX_LENGTH, align 8
  %14 = add nsw i64 4096, %13
  %15 = call i32 @ff_rtmp_packet_create(%struct.TYPE_8__* %6, i32 %11, i32 %12, i32 0, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %170

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = call i32 @ff_amf_write_string(i32** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fadd double %25, 1.000000e+00
  store double %26, double* %24, align 8
  %27 = call i32 @ff_amf_write_number(i32** %7, double %26)
  %28 = call i32 @ff_amf_write_object_start(i32** %7)
  %29 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ff_amf_write_string2(i32** %7, i32 %32, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @ff_amf_write_string(i32** %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %19
  %45 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ff_amf_write_string(i32** %7, i8* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %54, %44
  %60 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @ff_amf_write_string(i32** %7, i8* %68)
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @ff_amf_write_string(i32** %7, i8* %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %54
  %77 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ff_amf_write_string2(i32** %7, i32 %80, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %76
  %90 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %91 = call i32 @ff_amf_write_bool(i32** %7, i32 0)
  %92 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %93 = call i32 @ff_amf_write_number(i32** %7, double 1.500000e+01)
  %94 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %95 = call i32 @ff_amf_write_number(i32** %7, double 4.071000e+03)
  %96 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %97 = call i32 @ff_amf_write_number(i32** %7, double 2.520000e+02)
  %98 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %99 = call i32 @ff_amf_write_number(i32** %7, double 1.000000e+00)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = call i32 @ff_amf_write_field_name(i32** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @ff_amf_write_string(i32** %7, i8* %108)
  br label %110

110:                                              ; preds = %104, %89
  br label %111

111:                                              ; preds = %110, %76
  %112 = call i32 @ff_amf_write_object_end(i32** %7)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %158

117:                                              ; preds = %111
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %9, align 8
  br label %121

121:                                              ; preds = %156, %117
  %122 = load i8*, i8** %9, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %157

124:                                              ; preds = %121
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @strspn(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %127 = load i8*, i8** %9, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %124
  br label %157

134:                                              ; preds = %124
  %135 = load i8*, i8** %9, align 8
  %136 = call i8* @strchr(i8* %135, i8 signext 32)
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i8*, i8** %10, align 8
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i32*, i32** %4, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @rtmp_write_amf_data(i32* %142, i8* %143, i32** %7)
  store i32 %144, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_8__* %6)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %3, align 4
  br label %170

149:                                              ; preds = %141
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %9, align 8
  br label %156

155:                                              ; preds = %149
  br label %157

156:                                              ; preds = %152
  br label %121

157:                                              ; preds = %155, %133, %121
  br label %158

158:                                              ; preds = %157, %111
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = ptrtoint i32* %159 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %169 = call i32 @rtmp_send_packet(%struct.TYPE_9__* %168, %struct.TYPE_8__* %6, i32 1)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %158, %146, %17
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_8__*, i32, i32, i32, i64) #1

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #1

declare dso_local i32 @ff_amf_write_number(i32**, double) #1

declare dso_local i32 @ff_amf_write_object_start(i32**) #1

declare dso_local i32 @ff_amf_write_field_name(i32**, i8*) #1

declare dso_local i32 @ff_amf_write_string2(i32**, i32, i32) #1

declare dso_local i32 @ff_amf_write_bool(i32**, i32) #1

declare dso_local i32 @ff_amf_write_object_end(i32**) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rtmp_write_amf_data(i32*, i8*, i32**) #1

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @rtmp_send_packet(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
