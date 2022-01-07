; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sccdec.c_scc_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sccdec.c_scc_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_EIA_608 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Scenarist_SCC V1.0\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%d:%d:%d%*[:;]%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @scc_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_read_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4096 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_16__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %4, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = call %struct.TYPE_15__* @avformat_new_stream(%struct.TYPE_17__* %37, i32* null)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ff_text_init_avio(%struct.TYPE_17__* %39, i32* %13, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %1
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %233

49:                                               ; preds = %1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = call i32 @avpriv_set_pts_info(%struct.TYPE_15__* %50, i32 64, i32 1, i32 1000)
  %52 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @AV_CODEC_ID_EIA_608, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %205, %125, %92, %87, %49
  %63 = call i32 @ff_text_eof(i32* %13)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %66, label %222

66:                                               ; preds = %62
  %67 = call i32 @ff_text_pos(i32* %13)
  store i32 %67, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %81, %70
  %72 = call i32 @ff_text_eof(i32* %13)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %77 = call i32 @ff_subtitles_read_line(i32* %13, i8* %76, i32 4096)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 13
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %75
  br label %71

82:                                               ; preds = %80, %71
  br label %83

83:                                               ; preds = %82, %66
  %84 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %85 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 18)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %62

88:                                               ; preds = %83
  %89 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %90 = call i32 (i8*, i8*, ...) @sscanf(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %17, i32* %18, i32* %19, i32* %20)
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %62

93:                                               ; preds = %88
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, 3600
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, 60
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = mul nsw i64 %103, 1000
  %105 = load i32, i32* %20, align 4
  %106 = mul nsw i32 %105, 33
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %26, align 4
  br label %110

110:                                              ; preds = %120, %93
  %111 = call i32 @ff_text_eof(i32* %13)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %116 = call i32 @ff_subtitles_read_line(i32* %13, i8* %115, i32 4096)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %117, 13
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %121

120:                                              ; preds = %114
  br label %110

121:                                              ; preds = %119, %110
  %122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %123 = call i32 (i8*, i8*, ...) @sscanf(i8* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32* %23, i32* %24, i32* %25)
  %124 = icmp ne i32 %123, 4
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %62

126:                                              ; preds = %121
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 3600
  %130 = load i32, i32* %23, align 4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %131, 60
  %133 = add nsw i64 %129, %132
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = mul nsw i64 %136, 1000
  %138 = load i32, i32* %25, align 4
  %139 = mul nsw i32 %138, 33
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %226, %126
  %146 = bitcast [4096 x i8]* %6 to i8*
  store i8* %146, i8** %16, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 12
  store i8* %148, i8** %16, align 8
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %188, %145
  %150 = load i32, i32* %21, align 4
  %151 = icmp slt i32 %150, 4095
  br i1 %151, label %152, label %191

152:                                              ; preds = %149
  %153 = load i8*, i8** %16, align 8
  %154 = call i8* @av_strtok(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15)
  store i8* %154, i8** %29, align 8
  %155 = load i8*, i8** %29, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %191

158:                                              ; preds = %152
  %159 = load i8*, i8** %29, align 8
  %160 = call i32 (i8*, i8*, ...) @sscanf(i8* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %30, i8* %31, i8* %32, i8* %33)
  %161 = icmp ne i32 %160, 4
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %191

163:                                              ; preds = %158
  store i8* null, i8** %16, align 8
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %164, 0
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 %166
  store i32 252, i32* %167, align 4
  %168 = load i8, i8* %31, align 1
  %169 = call i32 @convert(i8 signext %168)
  %170 = load i8, i8* %30, align 1
  %171 = call i32 @convert(i8 signext %170)
  %172 = shl i32 %171, 4
  %173 = or i32 %169, %172
  %174 = load i32, i32* %21, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 %176
  store i32 %173, i32* %177, align 4
  %178 = load i8, i8* %33, align 1
  %179 = call i32 @convert(i8 signext %178)
  %180 = load i8, i8* %32, align 1
  %181 = call i32 @convert(i8 signext %180)
  %182 = shl i32 %181, 4
  %183 = or i32 %179, %182
  %184 = load i32, i32* %21, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 %186
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %163
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 3
  store i32 %190, i32* %21, align 4
  br label %149

191:                                              ; preds = %162, %157, %149
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = getelementptr inbounds [4096 x i32], [4096 x i32]* %12, i64 0, i64 0
  %198 = load i32, i32* %21, align 4
  %199 = call %struct.TYPE_16__* @ff_subtitles_queue_insert(i32* %196, i32* %197, i32 %198, i32 0)
  store %struct.TYPE_16__* %199, %struct.TYPE_16__** %28, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %201 = icmp ne %struct.TYPE_16__* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %191
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = call i32 @AVERROR(i32 %203)
  store i32 %204, i32* %2, align 4
  br label %233

205:                                              ; preds = %191
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %26, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* %26, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i32 @FFMAX(i32 1200, i32 %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  %218 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %220 = call i32 @memmove(i8* %218, i8* %219, i32 4096)
  %221 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %221, align 16
  br label %62

222:                                              ; preds = %62
  %223 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %224 = load i8, i8* %223, align 16
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %145

227:                                              ; preds = %222
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_17__* %228, i32* %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %227, %202, %46
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.TYPE_15__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ff_text_init_avio(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ff_text_eof(i32*) #1

declare dso_local i32 @ff_text_pos(i32*) #1

declare dso_local i32 @ff_subtitles_read_line(i32*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @convert(i8 signext) #1

declare dso_local %struct.TYPE_16__* @ff_subtitles_queue_insert(i32*, i32*, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
