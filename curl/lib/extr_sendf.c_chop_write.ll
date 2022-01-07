; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sendf.c_chop_write.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sendf.c_chop_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_5__*, %struct.Curl_easy* }
%struct.TYPE_5__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)*, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@KEEP_RECV_PAUSE = common dso_local global i32 0, align 4
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@CLIENTWRITE_HEADER = common dso_local global i32 0, align 4
@CURL_MAX_WRITE_SIZE = common dso_local global i64 0, align 8
@CURL_WRITEFUNC_PAUSE = common dso_local global i64 0, align 8
@PROTOPT_NONETWORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Write callback asked for PAUSE when not supported!\00", align 1
@CURLE_WRITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed writing body (%zu != %zu)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed writing header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i8*, i64)* @chop_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chop_write(%struct.connectdata* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca i64 (i8*, i32, i64, i64)*, align 8
  %12 = alloca i64 (i8*, i32, i64, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 1
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %19, align 8
  store %struct.Curl_easy* %20, %struct.Curl_easy** %10, align 8
  store i64 (i8*, i32, i64, i64)* null, i64 (i8*, i32, i64, i64)** %11, align 8
  store i64 (i8*, i32, i64, i64)* null, i64 (i8*, i32, i64, i64)** %12, align 8
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @CURLE_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %193

27:                                               ; preds = %4
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @pausewrite(%struct.Curl_easy* %36, i32 %37, i8* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  br label %193

41:                                               ; preds = %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %48 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %49, align 8
  store i64 (i8*, i32, i64, i64)* %50, i64 (i8*, i32, i64, i64)** %12, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %59, align 8
  %61 = icmp ne i64 (i8*, i32, i64, i64)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %62, %56
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %71, align 8
  %73 = icmp ne i64 (i8*, i32, i64, i64)* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %76 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %77, align 8
  br label %84

79:                                               ; preds = %68
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %82, align 8
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i64 (i8*, i32, i64, i64)* [ %78, %74 ], [ %83, %79 ]
  store i64 (i8*, i32, i64, i64)* %85, i64 (i8*, i32, i64, i64)** %11, align 8
  br label %86

86:                                               ; preds = %84, %62, %51
  br label %87

87:                                               ; preds = %148, %86
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %155

90:                                               ; preds = %87
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @CURL_MAX_WRITE_SIZE, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i64, i64* %14, align 8
  br label %98

96:                                               ; preds = %90
  %97 = load i64, i64* @CURL_MAX_WRITE_SIZE, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  store i64 %99, i64* %15, align 8
  %100 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %12, align 8
  %101 = icmp ne i64 (i8*, i32, i64, i64)* %100, null
  br i1 %101, label %102, label %148

102:                                              ; preds = %98
  %103 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %104 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %103, i32 1)
  %105 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %12, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %109 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i64 %105(i8* %106, i32 1, i64 %107, i64 %111)
  store i64 %112, i64* %16, align 8
  %113 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %114 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %113, i32 0)
  %115 = load i64, i64* @CURL_WRITEFUNC_PAUSE, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %102
  %119 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %120 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PROTOPT_NONETWORK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %129 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %130, i32* %5, align 4
  br label %193

131:                                              ; preds = %118
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i8*, i8** %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @pausewrite(%struct.Curl_easy* %132, i32 %133, i8* %134, i64 %135)
  store i32 %136, i32* %5, align 4
  br label %193

137:                                              ; preds = %102
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %15, align 8
  %145 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %143, i64 %144)
  %146 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %146, i32* %5, align 4
  br label %193

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %98
  %149 = load i64, i64* %15, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8* %151, i8** %13, align 8
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* %14, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %14, align 8
  br label %87

155:                                              ; preds = %87
  %156 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %11, align 8
  %157 = icmp ne i64 (i8*, i32, i64, i64)* %156, null
  br i1 %157, label %158, label %191

158:                                              ; preds = %155
  %159 = load i8*, i8** %8, align 8
  store i8* %159, i8** %13, align 8
  %160 = load i64, i64* %9, align 8
  store i64 %160, i64* %14, align 8
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %162 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %161, i32 1)
  %163 = load i64 (i8*, i32, i64, i64)*, i64 (i8*, i32, i64, i64)** %11, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %167 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i64 %163(i8* %164, i32 1, i64 %165, i64 %169)
  store i64 %170, i64* %17, align 8
  %171 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %172 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %171, i32 0)
  %173 = load i64, i64* @CURL_WRITEFUNC_PAUSE, align 8
  %174 = load i64, i64* %17, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %158
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %178 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %179 = load i8*, i8** %13, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @pausewrite(%struct.Curl_easy* %177, i32 %178, i8* %179, i64 %180)
  store i32 %181, i32* %5, align 4
  br label %193

182:                                              ; preds = %158
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %14, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %188 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @CURLE_WRITE_ERROR, align 4
  store i32 %189, i32* %5, align 4
  br label %193

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %155
  %192 = load i32, i32* @CURLE_OK, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %191, %186, %176, %141, %131, %127, %35, %25
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @pausewrite(%struct.Curl_easy*, i32, i8*, i64) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
