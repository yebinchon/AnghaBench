; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hw_device_init_from_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_hw.c_hw_device_init_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c":=@\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_HWDEVICE_TYPE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown device type\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c":@\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"named device already exists\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to parse options\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"invalid source device name\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Invalid device specification \22%s\22: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Device creation failed: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_device_init_from_string(i8* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %12, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcspn(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* %17, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %17, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %15, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %17, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @av_strndup(i8* %23, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %13, align 4
  br label %216

32:                                               ; preds = %2
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @av_hwdevice_find_type_by_name(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AV_HWDEVICE_TYPE_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %209

39:                                               ; preds = %32
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i64 @strcspn(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %47, i64* %17, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i64, i64* %17, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @av_strndup(i8* %49, i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %13, align 4
  br label %216

58:                                               ; preds = %44
  %59 = load i8*, i8** %7, align 8
  %60 = call %struct.TYPE_5__* @hw_device_get_by_name(i8* %59)
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %209

63:                                               ; preds = %58
  %64 = load i64, i64* %17, align 8
  %65 = add i64 1, %64
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %15, align 8
  br label %77

68:                                               ; preds = %39
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @hw_device_default_name(i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %13, align 4
  br label %216

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i8*, i8** %15, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @av_hwdevice_ctx_create(i32** %12, i32 %82, i8* null, i32* null, i32 0)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %216

87:                                               ; preds = %81
  br label %180

88:                                               ; preds = %77
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 58
  br i1 %92, label %93, label %155

93:                                               ; preds = %88
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %15, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i8* @strchr(i8* %96, i8 signext 44)
  store i8* %97, i8** %16, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %130

100:                                              ; preds = %93
  %101 = load i8*, i8** %16, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load i8*, i8** %15, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @av_strndup(i8* %108, i32 %114)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 @AVERROR(i32 %119)
  store i32 %120, i32* %13, align 4
  br label %216

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i8*, i8** %16, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = call i32 @av_dict_parse_string(i32** %5, i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %209

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %93
  %131 = load i32, i32* %9, align 4
  %132 = load i8*, i8** %16, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i8*, i8** %8, align 8
  br label %147

136:                                              ; preds = %130
  %137 = load i8*, i8** %15, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i8*, i8** %15, align 8
  br label %145

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i8* [ %143, %142 ], [ null, %144 ]
  br label %147

147:                                              ; preds = %145, %134
  %148 = phi i8* [ %135, %134 ], [ %146, %145 ]
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @av_hwdevice_ctx_create(i32** %12, i32 %131, i8* %148, i32* %149, i32 0)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %216

154:                                              ; preds = %147
  br label %179

155:                                              ; preds = %88
  %156 = load i8*, i8** %15, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 64
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = load i8*, i8** %15, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = call %struct.TYPE_5__* @hw_device_get_by_name(i8* %162)
  store %struct.TYPE_5__* %163, %struct.TYPE_5__** %11, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %209

167:                                              ; preds = %160
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @av_hwdevice_ctx_create_derived(i32** %12, i32 %168, i32* %171, i32 0)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %216

176:                                              ; preds = %167
  br label %178

177:                                              ; preds = %155
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %209

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %178, %154
  br label %180

180:                                              ; preds = %179, %87
  %181 = call %struct.TYPE_5__* (...) @hw_device_add()
  store %struct.TYPE_5__* %181, %struct.TYPE_5__** %10, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %183 = icmp ne %struct.TYPE_5__* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %13, align 4
  br label %216

187:                                              ; preds = %180
  %188 = load i8*, i8** %7, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i32* %194, i32** %196, align 8
  %197 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %198 = icmp ne %struct.TYPE_5__** %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %187
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %201 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %200, %struct.TYPE_5__** %201, align 8
  br label %202

202:                                              ; preds = %199, %187
  store i8* null, i8** %7, align 8
  store i32 0, i32* %13, align 4
  br label %203

203:                                              ; preds = %216, %209, %202
  %204 = call i32 @av_freep(i8** %6)
  %205 = call i32 @av_freep(i8** %7)
  %206 = call i32 @av_freep(i8** %8)
  %207 = call i32 @av_dict_free(i32** %5)
  %208 = load i32, i32* %13, align 4
  ret i32 %208

209:                                              ; preds = %177, %166, %128, %62, %38
  %210 = load i32, i32* @AV_LOG_ERROR, align 4
  %211 = load i8*, i8** %3, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %210, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %211, i8* %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = call i32 @AVERROR(i32 %214)
  store i32 %215, i32* %13, align 4
  br label %203

216:                                              ; preds = %184, %175, %153, %118, %86, %73, %55, %29
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  %220 = call i32 @av_buffer_unref(i32** %12)
  br label %203
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @av_strndup(i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_hwdevice_find_type_by_name(i8*) #1

declare dso_local %struct.TYPE_5__* @hw_device_get_by_name(i8*) #1

declare dso_local i8* @hw_device_default_name(i32) #1

declare dso_local i32 @av_hwdevice_ctx_create(i32**, i32, i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_dict_parse_string(i32**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @av_hwdevice_ctx_create_derived(i32**, i32, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @hw_device_add(...) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
