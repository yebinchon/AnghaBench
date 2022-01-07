; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_parse_cc_stream_mapstring.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_parse_cc_stream_mapstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ccgroup:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"instreamid:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"language:\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid keyval %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Insufficient parameters in cc stream map string\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Invalid instream ID CC index %d in %s, range 1-4\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SERVICE\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Invalid instream ID SERVICE index %d in %s, range 1-63 \0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Invalid instream ID %s, supported are CCn or SERIVICEn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @parse_cc_stream_mapstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cc_stream_mapstring(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @av_strdup(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %226

26:                                               ; preds = %1
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %32, %26
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @av_strtok(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  store i8* null, i8** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %28

37:                                               ; preds = %28
  %38 = call i32 @av_freep(i8** %6)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 24, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_8__* @av_mallocz(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %226

55:                                               ; preds = %37
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %224, %55
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @av_strtok(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %61, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %225

63:                                               ; preds = %59
  store i8* null, i8** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %75
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %13, align 8
  br label %80

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %226

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %145, %80
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @av_strtok(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  store i8* %83, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %146

85:                                               ; preds = %81
  store i8* null, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @av_strstart(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %12)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i8*, i8** %12, align 8
  %91 = call i8* @av_strdup(i8* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %226

101:                                              ; preds = %89
  br label %145

102:                                              ; preds = %85
  %103 = load i8*, i8** %9, align 8
  %104 = call i64 @av_strstart(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %12)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i8*, i8** %12, align 8
  %108 = call i8* @av_strdup(i8* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = call i32 @AVERROR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %226

118:                                              ; preds = %106
  br label %144

119:                                              ; preds = %102
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @av_strstart(i8* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %12)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i8*, i8** %12, align 8
  %125 = call i8* @av_strdup(i8* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = call i32 @AVERROR(i32 %133)
  store i32 %134, i32* %2, align 4
  br label %226

135:                                              ; preds = %123
  br label %143

136:                                              ; preds = %119
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %137, i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %2, align 4
  br label %226

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %118
  br label %145

145:                                              ; preds = %144, %101
  br label %81

146:                                              ; preds = %81
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %157, i32 %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %2, align 4
  br label %226

162:                                              ; preds = %151
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @av_strstart(i8* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %12)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %162
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 @atoi(i8* %169)
  %171 = icmp slt i32 %170, 1
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @atoi(i8* %173)
  %175 = icmp sgt i32 %174, 4
  br i1 %175, label %176, label %187

176:                                              ; preds = %172, %168
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @atoi(i8* %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %177, i32 %178, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %180, i8* %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %2, align 4
  br label %226

187:                                              ; preds = %172
  br label %224

188:                                              ; preds = %162
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @av_strstart(i8* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %12)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %188
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @atoi(i8* %195)
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 @atoi(i8* %199)
  %201 = icmp sgt i32 %200, 63
  br i1 %201, label %202, label %213

202:                                              ; preds = %198, %194
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = load i8*, i8** %12, align 8
  %206 = call i32 @atoi(i8* %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %203, i32 %204, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %206, i8* %209)
  %211 = load i32, i32* @EINVAL, align 4
  %212 = call i32 @AVERROR(i32 %211)
  store i32 %212, i32* %2, align 4
  br label %226

213:                                              ; preds = %198
  br label %223

214:                                              ; preds = %188
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = load i32, i32* @AV_LOG_ERROR, align 4
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %215, i32 %216, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* @EINVAL, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %2, align 4
  br label %226

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %187
  br label %59

225:                                              ; preds = %59
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %225, %214, %202, %176, %156, %136, %132, %115, %98, %77, %52, %23
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local %struct.TYPE_8__* @av_mallocz(i32) #1

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
