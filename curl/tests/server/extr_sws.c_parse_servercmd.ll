; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_parse_servercmd.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_parse_servercmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httprequest = type { i8*, i32, i32, i8*, i8*, i8*, i32, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fopen() failed with error: %d %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"  [1] Error opening file: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  Couldn't open test file %ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"servercmd\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"getpart() failed with error: %d\00", align 1
@CMD_AUTH_REQUIRED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"instructed to require authorization header\00", align 1
@TRUE = common dso_local global i8* null, align 8
@CMD_IDLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"instructed to idle\00", align 1
@RCMD_IDLE = common dso_local global i32 0, align 4
@CMD_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"instructed to stream\00", align 1
@RCMD_STREAM = common dso_local global i32 0, align 4
@CMD_CONNECTIONMONITOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"enabled connection monitoring\00", align 1
@CMD_UPGRADE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"enabled upgrade to http2\00", align 1
@CMD_SWSCLOSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"swsclose: close this connection after response\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"skip: %d\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"instructed to skip this number of bytes %d\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"writedelay: %d\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"instructed to delay %d secs between packets\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Unknown <servercmd> instruction found: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httprequest*)* @parse_servercmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_servercmd(%struct.httprequest* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.httprequest*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.httprequest* %0, %struct.httprequest** %3, align 8
  %12 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %13 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @test2file(i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** @FALSE, align 8
  %17 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %18 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %32 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %37 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  store i32 1, i32* %2, align 4
  br label %209

38:                                               ; preds = %1
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @getpart(i8** %7, i64* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %50 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  store i32 1, i32* %2, align 4
  br label %209

51:                                               ; preds = %38
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %54 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %204, %51
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i1 [ false, %56 ], [ %61, %59 ]
  br i1 %63, label %64, label %205

64:                                               ; preds = %62
  %65 = load i32, i32* @CMD_AUTH_REQUIRED, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @CMD_AUTH_REQUIRED, align 4
  %68 = call i32 @strlen(i32 %67)
  %69 = call i32 @strncmp(i32 %65, i8* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i8*, i8** @TRUE, align 8
  %74 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %75 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  br label %169

76:                                               ; preds = %64
  %77 = load i32, i32* @CMD_IDLE, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @CMD_IDLE, align 4
  %80 = call i32 @strlen(i32 %79)
  %81 = call i32 @strncmp(i32 %77, i8* %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* @RCMD_IDLE, align 4
  %86 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %87 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %90 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  br label %168

91:                                               ; preds = %76
  %92 = load i32, i32* @CMD_STREAM, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @CMD_STREAM, align 4
  %95 = call i32 @strlen(i32 %94)
  %96 = call i32 @strncmp(i32 %92, i8* %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %100 = load i32, i32* @RCMD_STREAM, align 4
  %101 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %102 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %167

103:                                              ; preds = %91
  %104 = load i32, i32* @CMD_CONNECTIONMONITOR, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* @CMD_CONNECTIONMONITOR, align 4
  %107 = call i32 @strlen(i32 %106)
  %108 = call i32 @strncmp(i32 %104, i8* %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %114 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %166

115:                                              ; preds = %103
  %116 = load i32, i32* @CMD_UPGRADE, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* @CMD_UPGRADE, align 4
  %119 = call i32 @strlen(i32 %118)
  %120 = call i32 @strncmp(i32 %116, i8* %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %124 = load i8*, i8** @TRUE, align 8
  %125 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %126 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  br label %165

127:                                              ; preds = %115
  %128 = load i32, i32* @CMD_SWSCLOSE, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* @CMD_SWSCLOSE, align 4
  %131 = call i32 @strlen(i32 %130)
  %132 = call i32 @strncmp(i32 %128, i8* %129, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %127
  %135 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i8*, i8** @TRUE, align 8
  %137 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %138 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  br label %164

139:                                              ; preds = %127
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @sscanf(i8* %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32* %10)
  %142 = icmp eq i32 1, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %148 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %163

149:                                              ; preds = %139
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32* %10)
  %152 = icmp eq i32 1, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.httprequest*, %struct.httprequest** %3, align 8
  %158 = getelementptr inbounds %struct.httprequest, %struct.httprequest* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %162

159:                                              ; preds = %149
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %159, %153
  br label %163

163:                                              ; preds = %162, %143
  br label %164

164:                                              ; preds = %163, %134
  br label %165

165:                                              ; preds = %164, %122
  br label %166

166:                                              ; preds = %165, %110
  br label %167

167:                                              ; preds = %166, %98
  br label %168

168:                                              ; preds = %167, %83
  br label %169

169:                                              ; preds = %168, %71
  %170 = load i8*, i8** %8, align 8
  %171 = call i8* @strchr(i8* %170, i8 signext 13)
  store i8* %171, i8** %11, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = call i8* @strchr(i8* %175, i8 signext 10)
  store i8* %176, i8** %11, align 8
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i8*, i8** %11, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %203

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %193, %180
  %182 = load i8*, i8** %11, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 13
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load i8*, i8** %11, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 10
  br label %191

191:                                              ; preds = %186, %181
  %192 = phi i1 [ true, %181 ], [ %190, %186 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i8*, i8** %11, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %11, align 8
  br label %181

196:                                              ; preds = %191
  %197 = load i8*, i8** %11, align 8
  %198 = load i8, i8* %197, align 1
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  br label %205

201:                                              ; preds = %196
  %202 = load i8*, i8** %11, align 8
  store i8* %202, i8** %8, align 8
  br label %204

203:                                              ; preds = %177
  br label %205

204:                                              ; preds = %201
  br label %56

205:                                              ; preds = %203, %200, %62
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @free(i8* %206)
  br label %208

208:                                              ; preds = %205
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %45, %23
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i8* @test2file(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getpart(i8**, i64*, i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
