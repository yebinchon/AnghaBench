; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_uncoded_frame.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_uncoded_frame.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, %struct.TYPE_35__** }
%struct.TYPE_35__ = type { i32, i32, i32*, i32* }
%struct.TYPE_32__ = type { %struct.TYPE_36__*, %struct.TYPE_29__*, i32 }
%struct.TYPE_36__ = type { i64, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_31__*, i32, i32 }
%struct.TYPE_31__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"Usage: %s filter_graph dev:out [dev2:out2...]\0A\0AExamples:\0A%s movie=file.nut:s=v+a xv:- alsa:default\0A%s movie=file.nut:s=v+a uncodedframecrc:pipe:0\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to alloc graph graph: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to parse graph: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Graph has unconnected inputs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Graph has no output stream\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Graph has %d output streams, %d devices given\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Could not allocate streams\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to configure graph\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to allocate output: %s\0A\00", align 1
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to init output: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to create output stream\0A\00", align 1
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"reached\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Uncoded frames not supported on stream #%d: %s\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Error filtering: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Could not allocate frame\0A\00", align 1
@AV_BUFFERSINK_FLAG_NO_REQUEST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"Error in sink: %s\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"Error writing frame: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_35__*, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %10, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %13, align 8
  store i32 1, i32* %16, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %25, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31, i8* %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  store i8** %42, i8*** %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %8, align 4
  %45 = call i32 (...) @avdevice_register_all()
  %46 = call %struct.TYPE_34__* (...) @avfilter_graph_alloc()
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %10, align 8
  %47 = icmp ne %struct.TYPE_34__* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @av_err2str(i32 %52)
  %54 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %685

55:                                               ; preds = %37
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @avfilter_graph_parse_ptr(%struct.TYPE_34__* %56, i8* %57, i32* null, i32* null, i32* null)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @av_err2str(i32 %63)
  %65 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %685

66:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %129, %66
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %67
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %76, i64 %78
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  store %struct.TYPE_35__* %80, %struct.TYPE_35__** %18, align 8
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %102, %73
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %17, align 4
  br label %685

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %81

105:                                              ; preds = %81
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %125, %105
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %112
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %106

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %67

132:                                              ; preds = %67
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = call i32 @AVERROR(i32 %138)
  store i32 %139, i32* %17, align 4
  br label %685

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* @AV_LOG_ERROR, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = call i32 @AVERROR(i32 %152)
  store i32 %153, i32* %17, align 4
  br label %685

154:                                              ; preds = %143, %140
  %155 = load i32, i32* %9, align 4
  %156 = call %struct.TYPE_32__* @av_calloc(i32 %155, i32 24)
  store %struct.TYPE_32__* %156, %struct.TYPE_32__** %11, align 8
  %157 = icmp ne %struct.TYPE_32__* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = call i32 @AVERROR(i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* @AV_LOG_ERROR, align 4
  %162 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %163

163:                                              ; preds = %158, %154
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %164, %struct.TYPE_32__** %12, align 8
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %210, %163
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %165
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %174, i64 %176
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %177, align 8
  store %struct.TYPE_35__* %178, %struct.TYPE_35__** %19, align 8
  store i32 0, i32* %15, align 4
  br label %179

179:                                              ; preds = %206, %171
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %209

185:                                              ; preds = %179
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %185
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 1
  store %struct.TYPE_32__* %196, %struct.TYPE_32__** %12, align 8
  %197 = ptrtoint %struct.TYPE_32__* %195 to i32
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @create_sink(i32 %197, %struct.TYPE_34__* %198, %struct.TYPE_35__* %199, i32 %200)
  store i32 %201, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %685

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %185
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %179

209:                                              ; preds = %179
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %165

213:                                              ; preds = %165
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %216 = ptrtoint %struct.TYPE_32__* %214 to i64
  %217 = ptrtoint %struct.TYPE_32__* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sdiv exact i64 %218, 24
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp eq i64 %219, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @av_assert0(i32 %223)
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %226 = call i32 @avfilter_graph_config(%struct.TYPE_34__* %225, i32* null)
  store i32 %226, i32* %17, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %213
  %229 = load i32, i32* @AV_LOG_ERROR, align 4
  %230 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %229, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %685

231:                                              ; preds = %213
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %305, %231
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %308

236:                                              ; preds = %232
  store i8* null, i8** %20, align 8
  %237 = load i8**, i8*** %7, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %21, align 8
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i64 %244
  store %struct.TYPE_32__* %245, %struct.TYPE_32__** %12, align 8
  %246 = load i8*, i8** %21, align 8
  %247 = call i8* @strchr(i8* %246, i8 signext 58)
  store i8* %247, i8** %21, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %236
  %250 = load i8*, i8** %21, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %21, align 8
  store i8 0, i8* %250, align 1
  %252 = load i8**, i8*** %7, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** %20, align 8
  br label %257

257:                                              ; preds = %249, %236
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 0
  %260 = load i8*, i8** %20, align 8
  %261 = load i8*, i8** %21, align 8
  %262 = call i32 @avformat_alloc_output_context2(%struct.TYPE_36__** %259, i32* null, i8* %260, i8* %261)
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load i32, i32* @AV_LOG_ERROR, align 4
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @av_err2str(i32 %267)
  %269 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %266, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %268)
  br label %685

270:                                              ; preds = %257
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @AVFMT_NOFILE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %304, label %281

281:                                              ; preds = %270
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_36__*, %struct.TYPE_36__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %292 = call i32 @avio_open2(i64* %285, i32 %290, i32 %291, i32* null, i32* null)
  store i32 %292, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %281
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %297, align 8
  %299 = load i32, i32* @AV_LOG_ERROR, align 4
  %300 = load i32, i32* %17, align 4
  %301 = call i32 @av_err2str(i32 %300)
  %302 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* %298, i32 %299, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %301)
  br label %685

303:                                              ; preds = %281
  br label %304

304:                                              ; preds = %303, %270
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %14, align 4
  br label %232

308:                                              ; preds = %232
  br label %309

309:                                              ; preds = %323, %308
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %326

313:                                              ; preds = %309
  %314 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %316, align 8
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %321, i32 0, i32 0
  store %struct.TYPE_36__* %317, %struct.TYPE_36__** %322, align 8
  br label %323

323:                                              ; preds = %313
  %324 = load i32, i32* %14, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %14, align 4
  br label %309

326:                                              ; preds = %309
  store i32 0, i32* %14, align 4
  br label %327

327:                                              ; preds = %489, %326
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %9, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %492

331:                                              ; preds = %327
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %333 = load i32, i32* %14, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i64 %334
  store %struct.TYPE_32__* %335, %struct.TYPE_32__** %12, align 8
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = call %struct.TYPE_29__* @avformat_new_stream(%struct.TYPE_36__* %338, i32* null)
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 1
  store %struct.TYPE_29__* %339, %struct.TYPE_29__** %341, align 8
  %342 = icmp ne %struct.TYPE_29__* %339, null
  br i1 %342, label %348, label %343

343:                                              ; preds = %331
  %344 = load i32, i32* @ENOMEM, align 4
  %345 = call i32 @AVERROR(i32 %344)
  store i32 %345, i32* %17, align 4
  %346 = load i32, i32* @AV_LOG_ERROR, align 4
  %347 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %346, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %685

348:                                              ; preds = %331
  %349 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @av_buffersink_get_type(i32 %351)
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 0
  store i32 %352, i32* %358, align 8
  %359 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @av_buffersink_get_time_base(i32 %361)
  %363 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 1
  store i32 %362, i32* %366, align 4
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @av_buffersink_get_type(i32 %369)
  switch i32 %370, label %486 [
    i32 128, label %371
    i32 129, label %431
  ]

371:                                              ; preds = %348
  %372 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %377, i32 0, i32 2
  store i32 %372, i32* %378, align 8
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @av_buffersink_get_frame_rate(i32 %381)
  %383 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 3
  store i32 %382, i32* %386, align 8
  %387 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %388 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 4
  store i32 %382, i32* %390, align 4
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @av_buffersink_get_w(i32 %393)
  %395 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 2
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %399, i32 0, i32 8
  store i32 %394, i32* %400, align 8
  %401 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @av_buffersink_get_h(i32 %403)
  %405 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 2
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %409, i32 0, i32 7
  store i32 %404, i32* %410, align 4
  %411 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @av_buffersink_get_sample_aspect_ratio(i32 %413)
  %415 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_29__*, %struct.TYPE_29__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %417, i32 0, i32 2
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i32 0, i32 6
  store i32 %414, i32* %420, align 8
  %421 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %422 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = call i8* @av_buffersink_get_format(i32 %423)
  %425 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 2
  %429 = load %struct.TYPE_31__*, %struct.TYPE_31__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %429, i32 0, i32 1
  store i8* %424, i8** %430, align 8
  br label %488

431:                                              ; preds = %348
  %432 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @av_buffersink_get_channel_layout(i32 %434)
  %436 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %437 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_29__*, %struct.TYPE_29__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %438, i32 0, i32 2
  %440 = load %struct.TYPE_31__*, %struct.TYPE_31__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %440, i32 0, i32 5
  store i32 %435, i32* %441, align 4
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %443 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @av_buffersink_get_channels(i32 %444)
  %446 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_29__*, %struct.TYPE_29__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %448, i32 0, i32 2
  %450 = load %struct.TYPE_31__*, %struct.TYPE_31__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %450, i32 0, i32 4
  store i32 %445, i32* %451, align 8
  %452 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %453 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @av_buffersink_get_sample_rate(i32 %454)
  %456 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %457 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 2
  %460 = load %struct.TYPE_31__*, %struct.TYPE_31__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %460, i32 0, i32 3
  store i32 %455, i32* %461, align 4
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = call i8* @av_buffersink_get_format(i32 %464)
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %467 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_29__*, %struct.TYPE_29__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %468, i32 0, i32 2
  %470 = load %struct.TYPE_31__*, %struct.TYPE_31__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %470, i32 0, i32 1
  store i8* %465, i8** %471, align 8
  %472 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %473 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_29__*, %struct.TYPE_29__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %474, i32 0, i32 2
  %476 = load %struct.TYPE_31__*, %struct.TYPE_31__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %476, i32 0, i32 1
  %478 = load i8*, i8** %477, align 8
  %479 = call i32 @av_get_pcm_codec(i8* %478, i32 -1)
  %480 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %481 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %480, i32 0, i32 1
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 2
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 2
  store i32 %479, i32* %485, align 8
  br label %488

486:                                              ; preds = %348
  %487 = call i32 @av_assert0(i32 0)
  br label %488

488:                                              ; preds = %486, %431, %371
  br label %489

489:                                              ; preds = %488
  %490 = load i32, i32* %14, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %14, align 4
  br label %327

492:                                              ; preds = %327
  store i32 0, i32* %14, align 4
  br label %493

493:                                              ; preds = %516, %492
  %494 = load i32, i32* %14, align 4
  %495 = load i32, i32* %8, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %519

497:                                              ; preds = %493
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %499 = load i32, i32* %14, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %498, i64 %500
  store %struct.TYPE_32__* %501, %struct.TYPE_32__** %12, align 8
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %503 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i32 0, i32 0
  %504 = load %struct.TYPE_36__*, %struct.TYPE_36__** %503, align 8
  %505 = call i32 @avformat_write_header(%struct.TYPE_36__* %504, i32* null)
  store i32 %505, i32* %17, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %515

507:                                              ; preds = %497
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_36__*, %struct.TYPE_36__** %509, align 8
  %511 = load i32, i32* @AV_LOG_ERROR, align 4
  %512 = load i32, i32* %17, align 4
  %513 = call i32 @av_err2str(i32 %512)
  %514 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* %510, i32 %511, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %513)
  br label %685

515:                                              ; preds = %497
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %14, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %14, align 4
  br label %493

519:                                              ; preds = %493
  store i32 0, i32* %14, align 4
  br label %520

520:                                              ; preds = %550, %519
  %521 = load i32, i32* %14, align 4
  %522 = load i32, i32* %9, align 4
  %523 = icmp slt i32 %521, %522
  br i1 %523, label %524, label %553

524:                                              ; preds = %520
  %525 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %526 = load i32, i32* %14, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %525, i64 %527
  store %struct.TYPE_32__* %528, %struct.TYPE_32__** %12, align 8
  %529 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %529, i32 0, i32 0
  %531 = load %struct.TYPE_36__*, %struct.TYPE_36__** %530, align 8
  %532 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_29__*, %struct.TYPE_29__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @av_write_uncoded_frame_query(%struct.TYPE_36__* %531, i32 %536)
  store i32 %537, i32* %17, align 4
  %538 = load i32, i32* %17, align 4
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %549

540:                                              ; preds = %524
  %541 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %542 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %541, i32 0, i32 0
  %543 = load %struct.TYPE_36__*, %struct.TYPE_36__** %542, align 8
  %544 = load i32, i32* @AV_LOG_ERROR, align 4
  %545 = load i32, i32* %14, align 4
  %546 = load i32, i32* %17, align 4
  %547 = call i32 @av_err2str(i32 %546)
  %548 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* %543, i32 %544, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %545, i32 %547)
  br label %685

549:                                              ; preds = %524
  br label %550

550:                                              ; preds = %549
  %551 = load i32, i32* %14, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %14, align 4
  br label %520

553:                                              ; preds = %520
  br label %554

554:                                              ; preds = %666, %553
  %555 = load i32, i32* %16, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %667

557:                                              ; preds = %554
  %558 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %559 = call i32 @avfilter_graph_request_oldest(%struct.TYPE_34__* %558)
  store i32 %559, i32* %17, align 4
  %560 = load i32, i32* %17, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %573

562:                                              ; preds = %557
  %563 = load i32, i32* %17, align 4
  %564 = load i32, i32* @AVERROR_EOF, align 4
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %567

566:                                              ; preds = %562
  store i32 0, i32* %16, align 4
  br label %572

567:                                              ; preds = %562
  %568 = load i32, i32* @AV_LOG_ERROR, align 4
  %569 = load i32, i32* %17, align 4
  %570 = call i32 @av_err2str(i32 %569)
  %571 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %568, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %570)
  br label %667

572:                                              ; preds = %566
  br label %573

573:                                              ; preds = %572, %557
  store i32 0, i32* %14, align 4
  br label %574

574:                                              ; preds = %663, %573
  %575 = load i32, i32* %14, align 4
  %576 = load i32, i32* %9, align 4
  %577 = icmp slt i32 %575, %576
  br i1 %577, label %578, label %666

578:                                              ; preds = %574
  %579 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %580 = load i32, i32* %14, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %579, i64 %581
  store %struct.TYPE_32__* %582, %struct.TYPE_32__** %12, align 8
  br label %583

583:                                              ; preds = %578, %661
  %584 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %585 = icmp ne %struct.TYPE_33__* %584, null
  br i1 %585, label %594, label %586

586:                                              ; preds = %583
  %587 = call %struct.TYPE_33__* (...) @av_frame_alloc()
  store %struct.TYPE_33__* %587, %struct.TYPE_33__** %13, align 8
  %588 = icmp ne %struct.TYPE_33__* %587, null
  br i1 %588, label %594, label %589

589:                                              ; preds = %586
  %590 = load i32, i32* @ENOMEM, align 4
  %591 = call i32 @AVERROR(i32 %590)
  store i32 %591, i32* %17, align 4
  %592 = load i32, i32* @AV_LOG_ERROR, align 4
  %593 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %592, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %685

594:                                              ; preds = %586, %583
  %595 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %599 = load i32, i32* @AV_BUFFERSINK_FLAG_NO_REQUEST, align 4
  %600 = call i32 @av_buffersink_get_frame_flags(i32 %597, %struct.TYPE_33__* %598, i32 %599)
  store i32 %600, i32* %17, align 4
  %601 = load i32, i32* %17, align 4
  %602 = icmp slt i32 %601, 0
  br i1 %602, label %603, label %618

603:                                              ; preds = %594
  %604 = load i32, i32* %17, align 4
  %605 = load i32, i32* @EAGAIN, align 4
  %606 = call i32 @AVERROR(i32 %605)
  %607 = icmp ne i32 %604, %606
  br i1 %607, label %608, label %617

608:                                              ; preds = %603
  %609 = load i32, i32* %17, align 4
  %610 = load i32, i32* @AVERROR_EOF, align 4
  %611 = icmp ne i32 %609, %610
  br i1 %611, label %612, label %617

612:                                              ; preds = %608
  %613 = load i32, i32* @AV_LOG_WARNING, align 4
  %614 = load i32, i32* %17, align 4
  %615 = call i32 @av_err2str(i32 %614)
  %616 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* null, i32 %613, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %615)
  br label %617

617:                                              ; preds = %612, %608, %603
  br label %662

618:                                              ; preds = %594
  %619 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %620 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %623 = icmp ne i64 %621, %622
  br i1 %623, label %624, label %640

624:                                              ; preds = %618
  %625 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %626 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %629 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = call i32 @av_buffersink_get_time_base(i32 %630)
  %632 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %633 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %632, i32 0, i32 1
  %634 = load %struct.TYPE_29__*, %struct.TYPE_29__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = call i64 @av_rescale_q(i64 %627, i32 %631, i32 %636)
  %638 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %639 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %638, i32 0, i32 0
  store i64 %637, i64* %639, align 8
  br label %640

640:                                              ; preds = %624, %618
  %641 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %642 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %641, i32 0, i32 0
  %643 = load %struct.TYPE_36__*, %struct.TYPE_36__** %642, align 8
  %644 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %645 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %644, i32 0, i32 1
  %646 = load %struct.TYPE_29__*, %struct.TYPE_29__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %650 = call i32 @av_interleaved_write_uncoded_frame(%struct.TYPE_36__* %643, i32 %648, %struct.TYPE_33__* %649)
  store i32 %650, i32* %17, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %13, align 8
  %651 = load i32, i32* %17, align 4
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %653, label %661

653:                                              ; preds = %640
  %654 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %655 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %654, i32 0, i32 0
  %656 = load %struct.TYPE_36__*, %struct.TYPE_36__** %655, align 8
  %657 = load i32, i32* @AV_LOG_ERROR, align 4
  %658 = load i32, i32* %17, align 4
  %659 = call i32 @av_err2str(i32 %658)
  %660 = call i32 (%struct.TYPE_36__*, i32, i8*, ...) @av_log(%struct.TYPE_36__* %656, i32 %657, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %659)
  br label %685

661:                                              ; preds = %640
  br label %583

662:                                              ; preds = %617
  br label %663

663:                                              ; preds = %662
  %664 = load i32, i32* %14, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %14, align 4
  br label %574

666:                                              ; preds = %574
  br label %554

667:                                              ; preds = %567, %554
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %668

668:                                              ; preds = %681, %667
  %669 = load i32, i32* %14, align 4
  %670 = load i32, i32* %8, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %684

672:                                              ; preds = %668
  %673 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %674 = load i32, i32* %14, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %673, i64 %675
  store %struct.TYPE_32__* %676, %struct.TYPE_32__** %12, align 8
  %677 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %678 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %677, i32 0, i32 0
  %679 = load %struct.TYPE_36__*, %struct.TYPE_36__** %678, align 8
  %680 = call i32 @av_write_trailer(%struct.TYPE_36__* %679)
  br label %681

681:                                              ; preds = %672
  %682 = load i32, i32* %14, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %14, align 4
  br label %668

684:                                              ; preds = %668
  br label %685

685:                                              ; preds = %684, %653, %589, %540, %507, %343, %295, %265, %228, %203, %147, %135, %96, %61, %48
  %686 = call i32 @av_frame_free(%struct.TYPE_33__** %13)
  %687 = call i32 @avfilter_graph_free(%struct.TYPE_34__** %10)
  %688 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %689 = icmp ne %struct.TYPE_32__* %688, null
  br i1 %689, label %690, label %727

690:                                              ; preds = %685
  store i32 0, i32* %14, align 4
  br label %691

691:                                              ; preds = %723, %690
  %692 = load i32, i32* %14, align 4
  %693 = load i32, i32* %8, align 4
  %694 = icmp slt i32 %692, %693
  br i1 %694, label %695, label %726

695:                                              ; preds = %691
  %696 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %697 = load i32, i32* %14, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %696, i64 %698
  store %struct.TYPE_32__* %699, %struct.TYPE_32__** %12, align 8
  %700 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %701 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %700, i32 0, i32 0
  %702 = load %struct.TYPE_36__*, %struct.TYPE_36__** %701, align 8
  %703 = icmp ne %struct.TYPE_36__* %702, null
  br i1 %703, label %704, label %722

704:                                              ; preds = %695
  %705 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %706 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %705, i32 0, i32 0
  %707 = load %struct.TYPE_36__*, %struct.TYPE_36__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %707, i32 0, i32 0
  %709 = load i64, i64* %708, align 8
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %717

711:                                              ; preds = %704
  %712 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %713 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %712, i32 0, i32 0
  %714 = load %struct.TYPE_36__*, %struct.TYPE_36__** %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %714, i32 0, i32 0
  %716 = call i32 @avio_closep(i64* %715)
  br label %717

717:                                              ; preds = %711, %704
  %718 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %719 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %718, i32 0, i32 0
  %720 = load %struct.TYPE_36__*, %struct.TYPE_36__** %719, align 8
  %721 = call i32 @avformat_free_context(%struct.TYPE_36__* %720)
  br label %722

722:                                              ; preds = %717, %695
  br label %723

723:                                              ; preds = %722
  %724 = load i32, i32* %14, align 4
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %14, align 4
  br label %691

726:                                              ; preds = %691
  br label %727

727:                                              ; preds = %726, %685
  %728 = call i32 @av_freep(%struct.TYPE_32__** %11)
  %729 = load i32, i32* %17, align 4
  %730 = icmp slt i32 %729, 0
  %731 = zext i1 %730 to i32
  ret i32 %731
}

declare dso_local i32 @av_log(%struct.TYPE_36__*, i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @avdevice_register_all(...) #1

declare dso_local %struct.TYPE_34__* @avfilter_graph_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @avfilter_graph_parse_ptr(%struct.TYPE_34__*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @av_calloc(i32, i32) #1

declare dso_local i32 @create_sink(i32, %struct.TYPE_34__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avfilter_graph_config(%struct.TYPE_34__*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_36__**, i32*, i8*, i8*) #1

declare dso_local i32 @avio_open2(i64*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @avformat_new_stream(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @av_buffersink_get_type(i32) #1

declare dso_local i32 @av_buffersink_get_time_base(i32) #1

declare dso_local i32 @av_buffersink_get_frame_rate(i32) #1

declare dso_local i32 @av_buffersink_get_w(i32) #1

declare dso_local i32 @av_buffersink_get_h(i32) #1

declare dso_local i32 @av_buffersink_get_sample_aspect_ratio(i32) #1

declare dso_local i8* @av_buffersink_get_format(i32) #1

declare dso_local i32 @av_buffersink_get_channel_layout(i32) #1

declare dso_local i32 @av_buffersink_get_channels(i32) #1

declare dso_local i32 @av_buffersink_get_sample_rate(i32) #1

declare dso_local i32 @av_get_pcm_codec(i8*, i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @av_write_uncoded_frame_query(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @avfilter_graph_request_oldest(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_33__* @av_frame_alloc(...) #1

declare dso_local i32 @av_buffersink_get_frame_flags(i32, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_interleaved_write_uncoded_frame(%struct.TYPE_36__*, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_36__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_33__**) #1

declare dso_local i32 @avfilter_graph_free(%struct.TYPE_34__**) #1

declare dso_local i32 @avio_closep(i64*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_36__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_32__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
