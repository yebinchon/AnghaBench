; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_mmalplay.c_test_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_mmalplay.c_test_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_7__, i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@play_info_count = common dso_local global i64 0, align 8
@FILE_PLAY_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Too many URIs!\0A\00", align 1
@play_info = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@unclean_exit = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@sleepy_time = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"missing uri argument\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"invalid command line option (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"usage: %s [options] uri0 uri1 ... uriN\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"options list:\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" -h    : help\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" -V    : print version and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c" -v(vv): increase verbosity\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c" -np   : disable playback phase\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c" -nv   : disable video\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c" -nvd  : disable video decode\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c" -na   : disable audio\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c" -es   : enable scheduling\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c" -t <n>: play URI(s) for <n> seconds then stop\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c" -f <fourcc:widthxheight> : set format used on output of decoder\0A\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c" -fr <fourcc:widthxheight> : set format used for rendering\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c" -c    : do full copy of data transferred to videocore\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c" -ci   : full copy for input buffers to decoder\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c" -co   : full copy for output buffers from decoder\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c" -X    : exit without tearing down the mmal pipeline (for testing)\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c" -x <n>: use <n> video render modules \0A\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c" -d    : use direct port connections (aka tunnelling)\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c" -step : stepping (displays 1 frame at a time)\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c" -s <f>: seek to <f> seconds into the stream\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c" -o <s>: output uri\0A\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c" -mcr <s>:  name of the container reader module to use\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c" -mvr <s>:  name of the video render module to use\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c" -mvd <s>:  name of the video decoder module to use\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c" -mvc <s>:  name of the video converter module to use\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c" -mvh <s>:  name of the video scheduler to use\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c" -mvs <s>:  name of the splitter module to use\0A\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c" -mar <s>:  name of the audio render module to use\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c" -mad <s>:  name of the audio decoder module to use\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c" -ra <s>: set audio destination\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c" -rv <n>: set video destination\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c" -p    : use audio passthrough\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c" -w    : window mode (i.e. not fullscreen)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @test_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parse_cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store float 0.000000e+00, float* %9, align 4
  store i32 1, i32* %10, align 4
  br label %13

13:                                               ; preds = %574, %2
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %577

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %574

25:                                               ; preds = %17
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %53

35:                                               ; preds = %25
  %36 = load i64, i64* @play_info_count, align 8
  %37 = load i64, i64* @FILE_PLAY_MAX, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %592

42:                                               ; preds = %35
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @play_info, align 8
  %49 = load i64, i64* @play_info_count, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @play_info_count, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %49
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8* %47, i8** %52, align 8
  br label %574

53:                                               ; preds = %25
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %572 [
    i32 86, label %62
    i32 118, label %66
    i32 88, label %86
    i32 100, label %87
    i32 115, label %88
    i32 110, label %124
    i32 101, label %150
    i32 116, label %162
    i32 120, label %177
    i32 102, label %193
    i32 99, label %241
    i32 109, label %276
    i32 111, label %489
    i32 97, label %510
    i32 114, label %522
    i32 119, label %569
    i32 112, label %570
    i32 104, label %571
  ]

62:                                               ; preds = %53
  %63 = load i8*, i8** @VERSION, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = call i32 @exit(i32 0) #3
  unreachable

66:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 118
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load i32, i32* @verbosity, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @verbosity, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %67

85:                                               ; preds = %67
  br label %573

86:                                               ; preds = %53
  store i32 1, i32* @unclean_exit, align 4
  br label %573

87:                                               ; preds = %53
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 0), align 8
  br label %573

88:                                               ; preds = %53
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 1), align 4
  br label %573

98:                                               ; preds = %88
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, i8*, ...) @sscanf(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %9)
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load float, float* %9, align 4
  store float %121, float* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 2), align 8
  br label %573

122:                                              ; preds = %112, %107, %98
  br label %123

123:                                              ; preds = %122
  br label %592

124:                                              ; preds = %53
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %148 [
    i32 112, label %133
    i32 118, label %134
    i32 97, label %147
  ]

133:                                              ; preds = %124
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 3), align 4
  br label %149

134:                                              ; preds = %124
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 100
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 4), align 8
  br label %146

145:                                              ; preds = %134
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 5), align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %149

147:                                              ; preds = %124
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 6), align 8
  br label %149

148:                                              ; preds = %124
  br label %149

149:                                              ; preds = %148, %147, %146, %133
  br label %573

150:                                              ; preds = %53
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 115
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %592

161:                                              ; preds = %150
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 7), align 4
  br label %573

162:                                              ; preds = %53
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, i8*, ...) @sscanf(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* @sleepy_time)
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %176

175:                                              ; preds = %167, %162
  br label %592

176:                                              ; preds = %167
  br label %573

177:                                              ; preds = %53
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %177
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, i8*, ...) @sscanf(i8* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %189 = icmp ne i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %182, %177
  br label %592

191:                                              ; preds = %182
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 8), align 8
  br label %573

193:                                              ; preds = %53
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  %196 = load i32, i32* %4, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %199, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @get_format(i8* %204, i8** %8, i32* %6, i32* %7)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198, %193
  br label %592

208:                                              ; preds = %198
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = load i8*, i8** %8, align 8
  store i8* %220, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 26), align 8
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 25, i32 0), align 8
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 25, i32 1), align 4
  br label %240

223:                                              ; preds = %208
  %224 = load i8**, i8*** %5, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 114
  br i1 %233, label %234, label %238

234:                                              ; preds = %223
  %235 = load i8*, i8** %8, align 8
  store i8* %235, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 24), align 8
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 23, i32 0), align 4
  %237 = load i32, i32* %7, align 4
  store i32 %237, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 23, i32 1), align 4
  br label %239

238:                                              ; preds = %223
  br label %592

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %219
  br label %573

241:                                              ; preds = %53
  %242 = load i8**, i8*** %5, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %242, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 2
  %248 = load i8, i8* %247, align 1
  %249 = icmp ne i8 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %241
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 9), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 10), align 8
  br label %275

251:                                              ; preds = %241
  %252 = load i8**, i8*** %5, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 105
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 9), align 4
  br label %274

262:                                              ; preds = %251
  %263 = load i8**, i8*** %5, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 2
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 111
  br i1 %271, label %272, label %273

272:                                              ; preds = %262
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 10), align 8
  br label %273

273:                                              ; preds = %272, %262
  br label %274

274:                                              ; preds = %273, %261
  br label %275

275:                                              ; preds = %274, %250
  br label %573

276:                                              ; preds = %53
  %277 = load i8**, i8*** %5, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 2
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 118
  br i1 %285, label %286, label %397

286:                                              ; preds = %276
  %287 = load i8**, i8*** %5, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 3
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 114
  br i1 %295, label %296, label %307

296:                                              ; preds = %286
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %4, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %307

300:                                              ; preds = %296
  %301 = load i8**, i8*** %5, align 8
  %302 = load i32, i32* %10, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %301, i64 %304
  %306 = load i8*, i8** %305, align 8
  store i8* %306, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 11), align 8
  br label %396

307:                                              ; preds = %296, %286
  %308 = load i8**, i8*** %5, align 8
  %309 = load i32, i32* %10, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %308, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 3
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 100
  br i1 %316, label %317, label %328

317:                                              ; preds = %307
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* %4, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %317
  %322 = load i8**, i8*** %5, align 8
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %322, i64 %325
  %327 = load i8*, i8** %326, align 8
  store i8* %327, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 12), align 8
  br label %395

328:                                              ; preds = %317, %307
  %329 = load i8**, i8*** %5, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 3
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 115
  br i1 %337, label %338, label %349

338:                                              ; preds = %328
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %4, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = load i8**, i8*** %5, align 8
  %344 = load i32, i32* %10, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %343, i64 %346
  %348 = load i8*, i8** %347, align 8
  store i8* %348, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 13), align 8
  br label %394

349:                                              ; preds = %338, %328
  %350 = load i8**, i8*** %5, align 8
  %351 = load i32, i32* %10, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %350, i64 %352
  %354 = load i8*, i8** %353, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 3
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 99
  br i1 %358, label %359, label %370

359:                                              ; preds = %349
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %4, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load i8**, i8*** %5, align 8
  %365 = load i32, i32* %10, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %364, i64 %367
  %369 = load i8*, i8** %368, align 8
  store i8* %369, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 14), align 8
  br label %393

370:                                              ; preds = %359, %349
  %371 = load i8**, i8*** %5, align 8
  %372 = load i32, i32* %10, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 3
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 104
  br i1 %379, label %380, label %391

380:                                              ; preds = %370
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* %4, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load i8**, i8*** %5, align 8
  %386 = load i32, i32* %10, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8*, i8** %385, i64 %388
  %390 = load i8*, i8** %389, align 8
  store i8* %390, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 15), align 8
  br label %392

391:                                              ; preds = %380, %370
  br label %592

392:                                              ; preds = %384
  br label %393

393:                                              ; preds = %392, %363
  br label %394

394:                                              ; preds = %393, %342
  br label %395

395:                                              ; preds = %394, %321
  br label %396

396:                                              ; preds = %395, %300
  br label %488

397:                                              ; preds = %276
  %398 = load i8**, i8*** %5, align 8
  %399 = load i32, i32* %10, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %398, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = icmp eq i32 %405, 97
  br i1 %406, label %407, label %452

407:                                              ; preds = %397
  %408 = load i8**, i8*** %5, align 8
  %409 = load i32, i32* %10, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %408, i64 %410
  %412 = load i8*, i8** %411, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 3
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = icmp eq i32 %415, 114
  br i1 %416, label %417, label %428

417:                                              ; preds = %407
  %418 = load i32, i32* %10, align 4
  %419 = load i32, i32* %4, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %428

421:                                              ; preds = %417
  %422 = load i8**, i8*** %5, align 8
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %10, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %422, i64 %425
  %427 = load i8*, i8** %426, align 8
  store i8* %427, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 16), align 8
  br label %451

428:                                              ; preds = %417, %407
  %429 = load i8**, i8*** %5, align 8
  %430 = load i32, i32* %10, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8*, i8** %429, i64 %431
  %433 = load i8*, i8** %432, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 3
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp eq i32 %436, 100
  br i1 %437, label %438, label %449

438:                                              ; preds = %428
  %439 = load i32, i32* %10, align 4
  %440 = load i32, i32* %4, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %449

442:                                              ; preds = %438
  %443 = load i8**, i8*** %5, align 8
  %444 = load i32, i32* %10, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %10, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8*, i8** %443, i64 %446
  %448 = load i8*, i8** %447, align 8
  store i8* %448, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 17), align 8
  br label %450

449:                                              ; preds = %438, %428
  br label %592

450:                                              ; preds = %442
  br label %451

451:                                              ; preds = %450, %421
  br label %487

452:                                              ; preds = %397
  %453 = load i8**, i8*** %5, align 8
  %454 = load i32, i32* %10, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 2
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %460, 99
  br i1 %461, label %462, label %485

462:                                              ; preds = %452
  %463 = load i8**, i8*** %5, align 8
  %464 = load i32, i32* %10, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  %467 = load i8*, i8** %466, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 3
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = icmp eq i32 %470, 114
  br i1 %471, label %472, label %483

472:                                              ; preds = %462
  %473 = load i32, i32* %10, align 4
  %474 = load i32, i32* %4, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %472
  %477 = load i8**, i8*** %5, align 8
  %478 = load i32, i32* %10, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8*, i8** %477, i64 %480
  %482 = load i8*, i8** %481, align 8
  store i8* %482, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 18), align 8
  br label %484

483:                                              ; preds = %472, %462
  br label %592

484:                                              ; preds = %476
  br label %486

485:                                              ; preds = %452
  br label %592

486:                                              ; preds = %484
  br label %487

487:                                              ; preds = %486, %451
  br label %488

488:                                              ; preds = %487, %396
  br label %573

489:                                              ; preds = %53
  %490 = load i32, i32* %10, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %10, align 4
  %492 = load i32, i32* %4, align 4
  %493 = icmp sge i32 %491, %492
  br i1 %493, label %498, label %494

494:                                              ; preds = %489
  %495 = load i64, i64* @play_info_count, align 8
  %496 = load i64, i64* @FILE_PLAY_MAX, align 8
  %497 = icmp sge i64 %495, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %494, %489
  br label %592

499:                                              ; preds = %494
  %500 = load i8**, i8*** %5, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8*, i8** %500, i64 %502
  %504 = load i8*, i8** %503, align 8
  %505 = load %struct.TYPE_9__*, %struct.TYPE_9__** @play_info, align 8
  %506 = load i64, i64* @play_info_count, align 8
  %507 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 0
  store i8* %504, i8** %509, align 8
  br label %573

510:                                              ; preds = %53
  %511 = load i32, i32* %10, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %10, align 4
  %513 = load i32, i32* %4, align 4
  %514 = icmp sge i32 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %510
  br label %592

516:                                              ; preds = %510
  %517 = load i8**, i8*** %5, align 8
  %518 = load i32, i32* %10, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8*, i8** %517, i64 %519
  %521 = load i8*, i8** %520, align 8
  store i8* %521, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 19), align 8
  br label %573

522:                                              ; preds = %53
  %523 = load i32, i32* %10, align 4
  %524 = add nsw i32 %523, 1
  %525 = load i32, i32* %4, align 4
  %526 = icmp sge i32 %524, %525
  br i1 %526, label %527, label %528

527:                                              ; preds = %522
  br label %592

528:                                              ; preds = %522
  %529 = load i8**, i8*** %5, align 8
  %530 = load i32, i32* %10, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8*, i8** %529, i64 %531
  %533 = load i8*, i8** %532, align 8
  %534 = getelementptr inbounds i8, i8* %533, i64 2
  %535 = load i8, i8* %534, align 1
  %536 = sext i8 %535 to i32
  %537 = icmp eq i32 %536, 97
  br i1 %537, label %538, label %545

538:                                              ; preds = %528
  %539 = load i8**, i8*** %5, align 8
  %540 = load i32, i32* %10, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %10, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8*, i8** %539, i64 %542
  %544 = load i8*, i8** %543, align 8
  store i8* %544, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 19), align 8
  br label %568

545:                                              ; preds = %528
  %546 = load i8**, i8*** %5, align 8
  %547 = load i32, i32* %10, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8*, i8** %546, i64 %548
  %550 = load i8*, i8** %549, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 2
  %552 = load i8, i8* %551, align 1
  %553 = sext i8 %552 to i32
  %554 = icmp eq i32 %553, 118
  br i1 %554, label %555, label %566

555:                                              ; preds = %545
  %556 = load i8**, i8*** %5, align 8
  %557 = load i32, i32* %10, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %10, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8*, i8** %556, i64 %559
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 (i8*, i8*, ...) @sscanf(i8* %561, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 20))
  %563 = icmp ne i32 %562, 1
  br i1 %563, label %564, label %565

564:                                              ; preds = %555
  br label %592

565:                                              ; preds = %555
  br label %567

566:                                              ; preds = %545
  br label %592

567:                                              ; preds = %565
  br label %568

568:                                              ; preds = %567, %538
  br label %573

569:                                              ; preds = %53
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 21), align 4
  br label %573

570:                                              ; preds = %53
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 22), align 8
  br label %573

571:                                              ; preds = %53
  br label %592

572:                                              ; preds = %53
  br label %584

573:                                              ; preds = %570, %569, %568, %516, %499, %488, %275, %240, %191, %176, %161, %149, %120, %97, %87, %86, %85
  br label %574

574:                                              ; preds = %573, %42, %24
  %575 = load i32, i32* %10, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %10, align 4
  br label %13

577:                                              ; preds = %13
  %578 = load i64, i64* @play_info_count, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %583, label %580

580:                                              ; preds = %577
  %581 = load i32, i32* @stderr, align 4
  %582 = call i32 (i32, i8*, ...) @fprintf(i32 %581, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %592

583:                                              ; preds = %577
  store i32 0, i32* %3, align 4
  br label %693

584:                                              ; preds = %572
  %585 = load i32, i32* @stderr, align 4
  %586 = load i8**, i8*** %5, align 8
  %587 = load i32, i32* %10, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8*, i8** %586, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = call i32 (i32, i8*, ...) @fprintf(i32 %585, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %590)
  br label %592

592:                                              ; preds = %584, %580, %571, %566, %564, %527, %515, %498, %485, %483, %449, %391, %238, %207, %190, %175, %160, %123, %39
  %593 = load i8**, i8*** %5, align 8
  %594 = getelementptr inbounds i8*, i8** %593, i64 0
  %595 = load i8*, i8** %594, align 8
  %596 = call i8* @strrchr(i8* %595, i8 signext 92)
  store i8* %596, i8** %12, align 8
  %597 = load i8*, i8** %12, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %602

599:                                              ; preds = %592
  %600 = load i8*, i8** %12, align 8
  %601 = getelementptr inbounds i8, i8* %600, i32 1
  store i8* %601, i8** %12, align 8
  br label %602

602:                                              ; preds = %599, %592
  %603 = load i8*, i8** %12, align 8
  %604 = icmp ne i8* %603, null
  br i1 %604, label %616, label %605

605:                                              ; preds = %602
  %606 = load i8**, i8*** %5, align 8
  %607 = getelementptr inbounds i8*, i8** %606, i64 0
  %608 = load i8*, i8** %607, align 8
  %609 = call i8* @strrchr(i8* %608, i8 signext 47)
  store i8* %609, i8** %12, align 8
  %610 = load i8*, i8** %12, align 8
  %611 = icmp ne i8* %610, null
  br i1 %611, label %612, label %615

612:                                              ; preds = %605
  %613 = load i8*, i8** %12, align 8
  %614 = getelementptr inbounds i8, i8* %613, i32 1
  store i8* %614, i8** %12, align 8
  br label %615

615:                                              ; preds = %612, %605
  br label %616

616:                                              ; preds = %615, %602
  %617 = load i8*, i8** %12, align 8
  %618 = icmp ne i8* %617, null
  br i1 %618, label %623, label %619

619:                                              ; preds = %616
  %620 = load i8**, i8*** %5, align 8
  %621 = getelementptr inbounds i8*, i8** %620, i64 0
  %622 = load i8*, i8** %621, align 8
  store i8* %622, i8** %12, align 8
  br label %623

623:                                              ; preds = %619, %616
  %624 = load i32, i32* @stderr, align 4
  %625 = load i8*, i8** %12, align 8
  %626 = call i32 (i32, i8*, ...) @fprintf(i32 %624, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %625)
  %627 = load i32, i32* @stderr, align 4
  %628 = call i32 (i32, i8*, ...) @fprintf(i32 %627, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %629 = load i32, i32* @stderr, align 4
  %630 = call i32 (i32, i8*, ...) @fprintf(i32 %629, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %631 = load i32, i32* @stderr, align 4
  %632 = call i32 (i32, i8*, ...) @fprintf(i32 %631, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %633 = load i32, i32* @stderr, align 4
  %634 = call i32 (i32, i8*, ...) @fprintf(i32 %633, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %635 = load i32, i32* @stderr, align 4
  %636 = call i32 (i32, i8*, ...) @fprintf(i32 %635, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %637 = load i32, i32* @stderr, align 4
  %638 = call i32 (i32, i8*, ...) @fprintf(i32 %637, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %639 = load i32, i32* @stderr, align 4
  %640 = call i32 (i32, i8*, ...) @fprintf(i32 %639, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %641 = load i32, i32* @stderr, align 4
  %642 = call i32 (i32, i8*, ...) @fprintf(i32 %641, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %643 = load i32, i32* @stderr, align 4
  %644 = call i32 (i32, i8*, ...) @fprintf(i32 %643, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %645 = load i32, i32* @stderr, align 4
  %646 = call i32 (i32, i8*, ...) @fprintf(i32 %645, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  %647 = load i32, i32* @stderr, align 4
  %648 = call i32 (i32, i8*, ...) @fprintf(i32 %647, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0))
  %649 = load i32, i32* @stderr, align 4
  %650 = call i32 (i32, i8*, ...) @fprintf(i32 %649, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0))
  %651 = load i32, i32* @stderr, align 4
  %652 = call i32 (i32, i8*, ...) @fprintf(i32 %651, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0))
  %653 = load i32, i32* @stderr, align 4
  %654 = call i32 (i32, i8*, ...) @fprintf(i32 %653, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  %655 = load i32, i32* @stderr, align 4
  %656 = call i32 (i32, i8*, ...) @fprintf(i32 %655, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0))
  %657 = load i32, i32* @stderr, align 4
  %658 = call i32 (i32, i8*, ...) @fprintf(i32 %657, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i64 0, i64 0))
  %659 = load i32, i32* @stderr, align 4
  %660 = call i32 (i32, i8*, ...) @fprintf(i32 %659, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %661 = load i32, i32* @stderr, align 4
  %662 = call i32 (i32, i8*, ...) @fprintf(i32 %661, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0))
  %663 = load i32, i32* @stderr, align 4
  %664 = call i32 (i32, i8*, ...) @fprintf(i32 %663, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0))
  %665 = load i32, i32* @stderr, align 4
  %666 = call i32 (i32, i8*, ...) @fprintf(i32 %665, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0))
  %667 = load i32, i32* @stderr, align 4
  %668 = call i32 (i32, i8*, ...) @fprintf(i32 %667, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %669 = load i32, i32* @stderr, align 4
  %670 = call i32 (i32, i8*, ...) @fprintf(i32 %669, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0))
  %671 = load i32, i32* @stderr, align 4
  %672 = call i32 (i32, i8*, ...) @fprintf(i32 %671, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %673 = load i32, i32* @stderr, align 4
  %674 = call i32 (i32, i8*, ...) @fprintf(i32 %673, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i64 0, i64 0))
  %675 = load i32, i32* @stderr, align 4
  %676 = call i32 (i32, i8*, ...) @fprintf(i32 %675, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i64 0, i64 0))
  %677 = load i32, i32* @stderr, align 4
  %678 = call i32 (i32, i8*, ...) @fprintf(i32 %677, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0))
  %679 = load i32, i32* @stderr, align 4
  %680 = call i32 (i32, i8*, ...) @fprintf(i32 %679, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i64 0, i64 0))
  %681 = load i32, i32* @stderr, align 4
  %682 = call i32 (i32, i8*, ...) @fprintf(i32 %681, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i64 0, i64 0))
  %683 = load i32, i32* @stderr, align 4
  %684 = call i32 (i32, i8*, ...) @fprintf(i32 %683, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i64 0, i64 0))
  %685 = load i32, i32* @stderr, align 4
  %686 = call i32 (i32, i8*, ...) @fprintf(i32 %685, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0))
  %687 = load i32, i32* @stderr, align 4
  %688 = call i32 (i32, i8*, ...) @fprintf(i32 %687, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
  %689 = load i32, i32* @stderr, align 4
  %690 = call i32 (i32, i8*, ...) @fprintf(i32 %689, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0))
  %691 = load i32, i32* @stderr, align 4
  %692 = call i32 (i32, i8*, ...) @fprintf(i32 %691, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %693

693:                                              ; preds = %623, %583
  %694 = load i32, i32* %3, align 4
  ret i32 %694
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @get_format(i8*, i8**, i32*, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
