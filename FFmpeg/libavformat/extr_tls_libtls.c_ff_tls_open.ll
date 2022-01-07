; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_libtls.c_ff_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_libtls.c_ff_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.tls*, %struct.TYPE_10__ }
%struct.tls = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.tls_config = type { i32 }

@EIO = common dso_local global i32 0, align 4
@TLS_PROTOCOLS_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"compat\00", align 1
@tls_read_callback = common dso_local global i32 0, align 4
@tls_write_callback = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32**)* @ff_tls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_tls_open(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.tls_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tls*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  store %struct.tls_config* null, %struct.tls_config** %12, align 8
  %20 = call i32 (...) @tls_init()
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %13, align 4
  br label %196

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32**, i32*** %9, align 8
  %30 = call i32 @ff_tls_open_underlying(%struct.TYPE_10__* %26, %struct.TYPE_9__* %27, i8* %28, i32** %29)
  store i32 %30, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %196

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call %struct.tls* (...) @tls_client()
  br label %42

40:                                               ; preds = %33
  %41 = call %struct.tls* (...) @tls_server()
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi %struct.tls* [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store %struct.tls* %43, %struct.tls** %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.tls*, %struct.tls** %47, align 8
  %49 = icmp ne %struct.tls* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EIO, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %13, align 4
  br label %196

53:                                               ; preds = %42
  %54 = call %struct.tls_config* (...) @tls_config_new()
  store %struct.tls_config* %54, %struct.tls_config** %12, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.tls*, %struct.tls** %56, align 8
  %58 = icmp ne %struct.tls* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EIO, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %13, align 4
  br label %196

62:                                               ; preds = %53
  %63 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %64 = load i32, i32* @TLS_PROTOCOLS_ALL, align 4
  %65 = call i32 @tls_config_set_protocols(%struct.tls_config* %63, i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %178

68:                                               ; preds = %62
  %69 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %70 = call i32 @tls_config_set_ciphers(%struct.tls_config* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %178

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @tls_config_set_ca_file(%struct.tls_config* %79, i64 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %178

86:                                               ; preds = %78, %73
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @tls_config_set_cert_file(%struct.tls_config* %92, i64 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %178

99:                                               ; preds = %91, %86
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @tls_config_set_key_file(%struct.tls_config* %105, i64 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %178

112:                                              ; preds = %104, %99
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %119 = call i32 @tls_config_insecure_noverifycert(%struct.tls_config* %118)
  %120 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %121 = call i32 @tls_config_insecure_noverifyname(%struct.tls_config* %120)
  %122 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %123 = call i32 @tls_config_insecure_noverifytime(%struct.tls_config* %122)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.tls*, %struct.tls** %126, align 8
  %128 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %129 = call i32 @tls_configure(%struct.tls* %127, %struct.tls_config* %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %186

132:                                              ; preds = %124
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.tls*, %struct.tls** %139, align 8
  %141 = load i32, i32* @tls_read_callback, align 4
  %142 = load i32, i32* @tls_write_callback, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @tls_connect_cbs(%struct.tls* %140, i32 %141, i32 %142, i32 %145, i32 %148)
  store i32 %149, i32* %13, align 4
  br label %171

150:                                              ; preds = %132
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load %struct.tls*, %struct.tls** %152, align 8
  %154 = load i32, i32* @tls_read_callback, align 4
  %155 = load i32, i32* @tls_write_callback, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @tls_accept_cbs(%struct.tls* %153, %struct.tls** %14, i32 %154, i32 %155, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %150
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.tls*, %struct.tls** %164, align 8
  %166 = call i32 @tls_free(%struct.tls* %165)
  %167 = load %struct.tls*, %struct.tls** %14, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store %struct.tls* %167, %struct.tls** %169, align 8
  br label %170

170:                                              ; preds = %162, %150
  br label %171

171:                                              ; preds = %170, %137
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %186

175:                                              ; preds = %171
  %176 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %177 = call i32 @tls_config_free(%struct.tls_config* %176)
  store i32 0, i32* %5, align 4
  br label %206

178:                                              ; preds = %111, %98, %85, %72, %67
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = load i32, i32* @AV_LOG_ERROR, align 4
  %181 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %182 = call i32 @tls_config_error(%struct.tls_config* %181)
  %183 = call i32 @av_log(%struct.TYPE_9__* %179, i32 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @EIO, align 4
  %185 = call i32 @AVERROR(i32 %184)
  store i32 %185, i32* %13, align 4
  br label %196

186:                                              ; preds = %174, %131
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load %struct.tls*, %struct.tls** %190, align 8
  %192 = call i32 @tls_error(%struct.tls* %191)
  %193 = call i32 @av_log(%struct.TYPE_9__* %187, i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @EIO, align 4
  %195 = call i32 @AVERROR(i32 %194)
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %186, %178, %59, %50, %32, %22
  %197 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %198 = icmp ne %struct.tls_config* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.tls_config*, %struct.tls_config** %12, align 8
  %201 = call i32 @tls_config_free(%struct.tls_config* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = call i32 @ff_tls_close(%struct.TYPE_9__* %203)
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %202, %175
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @tls_init(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32**) #1

declare dso_local %struct.tls* @tls_client(...) #1

declare dso_local %struct.tls* @tls_server(...) #1

declare dso_local %struct.tls_config* @tls_config_new(...) #1

declare dso_local i32 @tls_config_set_protocols(%struct.tls_config*, i32) #1

declare dso_local i32 @tls_config_set_ciphers(%struct.tls_config*, i8*) #1

declare dso_local i32 @tls_config_set_ca_file(%struct.tls_config*, i64) #1

declare dso_local i32 @tls_config_set_cert_file(%struct.tls_config*, i64) #1

declare dso_local i32 @tls_config_set_key_file(%struct.tls_config*, i64) #1

declare dso_local i32 @tls_config_insecure_noverifycert(%struct.tls_config*) #1

declare dso_local i32 @tls_config_insecure_noverifyname(%struct.tls_config*) #1

declare dso_local i32 @tls_config_insecure_noverifytime(%struct.tls_config*) #1

declare dso_local i32 @tls_configure(%struct.tls*, %struct.tls_config*) #1

declare dso_local i32 @tls_connect_cbs(%struct.tls*, i32, i32, i32, i32) #1

declare dso_local i32 @tls_accept_cbs(%struct.tls*, %struct.tls**, i32, i32, i32) #1

declare dso_local i32 @tls_free(%struct.tls*) #1

declare dso_local i32 @tls_config_free(%struct.tls_config*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @tls_config_error(%struct.tls_config*) #1

declare dso_local i32 @tls_error(%struct.tls*) #1

declare dso_local i32 @ff_tls_close(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
