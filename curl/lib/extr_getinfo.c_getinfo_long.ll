; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_long.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%union.anon = type { i64* }

@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_1_0 = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_1_1 = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_2_0 = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_3 = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_NONE = common dso_local global i64 0, align 8
@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, i64*)* @getinfo_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_long(%struct.Curl_easy* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %191 [
    i32 132, label %11
    i32 144, label %17
    i32 147, label %23
    i32 146, label %51
    i32 133, label %57
    i32 128, label %63
    i32 135, label %70
    i32 134, label %77
    i32 145, label %83
    i32 136, label %92
    i32 139, label %101
    i32 140, label %107
    i32 142, label %113
    i32 138, label %125
    i32 141, label %131
    i32 148, label %137
    i32 131, label %146
    i32 129, label %152
    i32 130, label %158
    i32 143, label %164
    i32 137, label %185
  ]

11:                                               ; preds = %3
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  br label %193

17:                                               ; preds = %3
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 %21, i64* %22, align 8
  br label %193

23:                                               ; preds = %3
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LONG_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @LONG_MAX, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %50

33:                                               ; preds = %23
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LONG_MIN, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* @LONG_MIN, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49, %30
  br label %193

51:                                               ; preds = %3
  %52 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %53 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 12
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  br label %193

57:                                               ; preds = %3
  %58 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %59 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  br label %193

63:                                               ; preds = %3
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %193

70:                                               ; preds = %3
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  br label %193

77:                                               ; preds = %3
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %79 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  br label %193

83:                                               ; preds = %3
  %84 = load i64*, i64** %7, align 8
  %85 = bitcast %union.anon* %9 to i64**
  store i64* %84, i64** %85, align 8
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = bitcast %union.anon* %9 to i64**
  %91 = load i64*, i64** %90, align 8
  store i64 %89, i64* %91, align 8
  br label %193

92:                                               ; preds = %3
  %93 = load i64*, i64** %7, align 8
  %94 = bitcast %union.anon* %9 to i64**
  store i64* %93, i64** %94, align 8
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %96 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = bitcast %union.anon* %9 to i64**
  %100 = load i64*, i64** %99, align 8
  store i64 %98, i64* %100, align 8
  br label %193

101:                                              ; preds = %3
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  br label %193

107:                                              ; preds = %3
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %109 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %7, align 8
  store i64 %111, i64* %112, align 8
  br label %193

113:                                              ; preds = %3
  %114 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %115 = call i64 @Curl_getconnectinfo(%struct.Curl_easy* %114, i32* null)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i64, i64* %8, align 8
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  br label %124

122:                                              ; preds = %113
  %123 = load i64*, i64** %7, align 8
  store i64 -1, i64* %123, align 8
  br label %124

124:                                              ; preds = %122, %119
  br label %193

125:                                              ; preds = %3
  %126 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %127 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  br label %193

131:                                              ; preds = %3
  %132 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %133 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %7, align 8
  store i64 %135, i64* %136, align 8
  br label %193

137:                                              ; preds = %3
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i64 1, i64 0
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  br label %193

146:                                              ; preds = %3
  %147 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %148 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %7, align 8
  store i64 %150, i64* %151, align 8
  br label %193

152:                                              ; preds = %3
  %153 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %154 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %7, align 8
  store i64 %156, i64* %157, align 8
  br label %193

158:                                              ; preds = %3
  %159 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %160 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %7, align 8
  store i64 %162, i64* %163, align 8
  br label %193

164:                                              ; preds = %3
  %165 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %166 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %181 [
    i32 10, label %169
    i32 11, label %172
    i32 20, label %175
    i32 30, label %178
  ]

169:                                              ; preds = %164
  %170 = load i64, i64* @CURL_HTTP_VERSION_1_0, align 8
  %171 = load i64*, i64** %7, align 8
  store i64 %170, i64* %171, align 8
  br label %184

172:                                              ; preds = %164
  %173 = load i64, i64* @CURL_HTTP_VERSION_1_1, align 8
  %174 = load i64*, i64** %7, align 8
  store i64 %173, i64* %174, align 8
  br label %184

175:                                              ; preds = %164
  %176 = load i64, i64* @CURL_HTTP_VERSION_2_0, align 8
  %177 = load i64*, i64** %7, align 8
  store i64 %176, i64* %177, align 8
  br label %184

178:                                              ; preds = %164
  %179 = load i64, i64* @CURL_HTTP_VERSION_3, align 8
  %180 = load i64*, i64** %7, align 8
  store i64 %179, i64* %180, align 8
  br label %184

181:                                              ; preds = %164
  %182 = load i64, i64* @CURL_HTTP_VERSION_NONE, align 8
  %183 = load i64*, i64** %7, align 8
  store i64 %182, i64* %183, align 8
  br label %184

184:                                              ; preds = %181, %178, %175, %172, %169
  br label %193

185:                                              ; preds = %3
  %186 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %187 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %7, align 8
  store i64 %189, i64* %190, align 8
  br label %193

191:                                              ; preds = %3
  %192 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %192, i32* %4, align 4
  br label %195

193:                                              ; preds = %185, %184, %158, %152, %146, %137, %131, %125, %124, %107, %101, %92, %83, %77, %70, %63, %57, %51, %50, %17, %11
  %194 = load i32, i32* @CURLE_OK, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i64 @Curl_getconnectinfo(%struct.Curl_easy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
