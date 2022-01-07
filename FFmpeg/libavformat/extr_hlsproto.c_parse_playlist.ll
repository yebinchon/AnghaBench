; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsproto.c_parse_playlist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsproto.c_parse_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.variant_info = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.segment = type { i32, i32, i32 }
%struct.variant = type { i32, i32, i32 }

@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"#EXTM3U\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"#EXT-X-STREAM-INF:\00", align 1
@handle_variant_args = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"#EXT-X-TARGETDURATION:\00", align 1
@AV_TIME_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"#EXT-X-MEDIA-SEQUENCE:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"#EXT-X-ENDLIST\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"#EXTINF:\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @parse_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_playlist(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct.variant_info, align 8
  %16 = alloca %struct.segment*, align 8
  %17 = alloca %struct.variant*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @AVIO_FLAG_READ, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ffio_open_whitelist(i32** %7, i8* %21, i32 %22, i32* %24, i32* null, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %186

35:                                               ; preds = %2
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %38 = call i32 @ff_get_chomp_line(i32* %36, i8* %37, i32 1024)
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %8, align 4
  br label %182

44:                                               ; preds = %35
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @free_segment_list(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %177, %110, %44
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @avio_feof(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %178

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %57 = call i32 @ff_get_chomp_line(i32* %55, i8* %56, i32 1024)
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %59 = call i64 @av_strstart(i8* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = bitcast %struct.variant_info* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %62, i8 0, i64 16, i1 false)
  store i32 1, i32* %10, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* @handle_variant_args, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ff_parse_key_value(i8* %63, i32 %65, %struct.variant_info* %15)
  %67 = getelementptr inbounds %struct.variant_info, %struct.variant_info* %15, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @atoi(i8* %68)
  store i32 %69, i32* %11, align 4
  br label %177

70:                                               ; preds = %54
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %72 = call i64 @av_strstart(i8* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %14)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @atoi(i8* %75)
  %77 = load i32, i32* @AV_TIME_BASE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %176

81:                                               ; preds = %70
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %83 = call i64 @av_strstart(i8* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @atoi(i8* %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %175

90:                                               ; preds = %81
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %92 = call i64 @av_strstart(i8* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %14)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %174

97:                                               ; preds = %90
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %99 = call i64 @av_strstart(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %14)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = call i32 @atof(i8* %102)
  %104 = load i32, i32* @AV_TIME_BASE, align 4
  %105 = mul nsw i32 %103, %104
  store i32 %105, i32* %12, align 4
  br label %173

106:                                              ; preds = %97
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %108 = call i64 @av_strstart(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %49

111:                                              ; preds = %106
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %113 = load i8, i8* %112, align 16
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %171

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = call %struct.variant* @av_malloc(i32 12)
  %120 = bitcast %struct.variant* %119 to %struct.segment*
  store %struct.segment* %120, %struct.segment** %16, align 8
  %121 = load %struct.segment*, %struct.segment** %16, align 8
  %122 = icmp ne %struct.segment* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %8, align 4
  br label %182

126:                                              ; preds = %118
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.segment*, %struct.segment** %16, align 8
  %129 = getelementptr inbounds %struct.segment, %struct.segment* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.segment*, %struct.segment** %16, align 8
  %131 = getelementptr inbounds %struct.segment, %struct.segment* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %135 = call i32 @ff_make_absolute_url(i32 %132, i32 4, i8* %133, i8* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 7
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load %struct.segment*, %struct.segment** %16, align 8
  %141 = bitcast %struct.segment* %140 to %struct.variant*
  %142 = call i32 @dynarray_add(i32* %137, i32* %139, %struct.variant* %141)
  store i32 0, i32* %9, align 4
  br label %170

143:                                              ; preds = %115
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = call %struct.variant* @av_malloc(i32 12)
  store %struct.variant* %147, %struct.variant** %17, align 8
  %148 = load %struct.variant*, %struct.variant** %17, align 8
  %149 = icmp ne %struct.variant* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = call i32 @AVERROR(i32 %151)
  store i32 %152, i32* %8, align 4
  br label %182

153:                                              ; preds = %146
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.variant*, %struct.variant** %17, align 8
  %156 = getelementptr inbounds %struct.variant, %struct.variant* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.variant*, %struct.variant** %17, align 8
  %158 = getelementptr inbounds %struct.variant, %struct.variant* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %162 = call i32 @ff_make_absolute_url(i32 %159, i32 4, i8* %160, i8* %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = load %struct.variant*, %struct.variant** %17, align 8
  %168 = call i32 @dynarray_add(i32* %164, i32* %166, %struct.variant* %167)
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %153, %143
  br label %170

170:                                              ; preds = %169, %126
  br label %171

171:                                              ; preds = %170, %111
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172, %101
  br label %174

174:                                              ; preds = %173, %94
  br label %175

175:                                              ; preds = %174, %85
  br label %176

176:                                              ; preds = %175, %74
  br label %177

177:                                              ; preds = %176, %61
  br label %49

178:                                              ; preds = %49
  %179 = call i32 (...) @av_gettime_relative()
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %150, %123, %42
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @avio_close(i32* %183)
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %33
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ffio_open_whitelist(i32**, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_get_chomp_line(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_segment_list(%struct.TYPE_8__*) #1

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ff_parse_key_value(i8*, i32, %struct.variant_info*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local %struct.variant* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_make_absolute_url(i32, i32, i8*, i8*) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.variant*) #1

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @avio_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
