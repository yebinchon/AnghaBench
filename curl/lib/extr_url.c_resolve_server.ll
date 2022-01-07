; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_resolve_server.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_resolve_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i8*, %struct.Curl_dns_entry*, i64, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, %struct.hostname, %struct.hostname, i32 }
%struct.Curl_dns_entry = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.hostname }
%struct.TYPE_5__ = type { %struct.hostname }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64 }
%struct.hostname = type { i8*, i32 }
%struct.connectdata = type { i8*, %struct.Curl_dns_entry*, i64, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, %struct.hostname, %struct.hostname, i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLRESOLV_PENDING = common dso_local global i32 0, align 4
@CURLRESOLV_TIMEDOUT = common dso_local global i32 0, align 4
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't resolve host '%s'\00", align 1
@CURLE_COULDNT_RESOLVE_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't resolve proxy '%s'\00", align 1
@CURLE_COULDNT_RESOLVE_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i32*)* @resolve_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_server(%struct.Curl_easy* %0, %struct.connectdata* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Curl_dns_entry*, align 8
  %12 = alloca %struct.hostname*, align 8
  %13 = alloca %struct.hostname*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store %struct.connectdata* %1, %struct.connectdata** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @CURLE_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %16 = bitcast %struct.Curl_easy* %15 to %struct.connectdata*
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @Curl_timeleft(%struct.connectdata* %16, i32* null, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %20 = call i32 @DEBUGASSERT(%struct.connectdata* %19)
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %22 = bitcast %struct.Curl_easy* %21 to %struct.connectdata*
  %23 = call i32 @DEBUGASSERT(%struct.connectdata* %22)
  %24 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %25 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %195

32:                                               ; preds = %3
  %33 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %118, label %38

38:                                               ; preds = %32
  %39 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 10
  store %struct.hostname* %46, %struct.hostname** %12, align 8
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %49 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %48, i32 0, i32 9
  store %struct.hostname* %49, %struct.hostname** %12, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %58 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %61 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %68

62:                                               ; preds = %50
  %63 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %64 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.hostname*, %struct.hostname** %12, align 8
  %70 = getelementptr inbounds %struct.hostname, %struct.hostname* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @strdup(i32 %71)
  %73 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %74 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %76 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %80, i32* %4, align 4
  br label %197

81:                                               ; preds = %68
  %82 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %83 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %84 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @Curl_resolv_timeout(%struct.connectdata* %82, i8* %85, i32 %89, %struct.Curl_dns_entry** %11, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @CURLRESOLV_PENDING, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i32, i32* @TRUE, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %117

98:                                               ; preds = %81
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @CURLRESOLV_TIMEDOUT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %103, i32* %8, align 4
  br label %116

104:                                              ; preds = %98
  %105 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %106 = icmp ne %struct.Curl_dns_entry* %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %109 = bitcast %struct.Curl_easy* %108 to %struct.connectdata*
  %110 = load %struct.hostname*, %struct.hostname** %12, align 8
  %111 = getelementptr inbounds %struct.hostname, %struct.hostname* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @failf(%struct.connectdata* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @CURLE_COULDNT_RESOLVE_HOST, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %107, %104
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %116, %95
  br label %183

118:                                              ; preds = %32
  %119 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %120 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %126 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  br label %132

128:                                              ; preds = %118
  %129 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %130 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi %struct.hostname* [ %127, %124 ], [ %131, %128 ]
  store %struct.hostname* %133, %struct.hostname** %13, align 8
  %134 = load %struct.hostname*, %struct.hostname** %13, align 8
  %135 = getelementptr inbounds %struct.hostname, %struct.hostname* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @strdup(i32 %136)
  %138 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %139 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %141 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %132
  %145 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %145, i32* %4, align 4
  br label %197

146:                                              ; preds = %132
  %147 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %148 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %149 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %152 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @Curl_resolv_timeout(%struct.connectdata* %147, i8* %150, i32 %154, %struct.Curl_dns_entry** %11, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @CURLRESOLV_PENDING, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i32*, i32** %7, align 8
  store i32 %161, i32* %162, align 4
  br label %182

163:                                              ; preds = %146
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @CURLRESOLV_TIMEDOUT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %168, i32* %8, align 4
  br label %181

169:                                              ; preds = %163
  %170 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %171 = icmp ne %struct.Curl_dns_entry* %170, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %174 = bitcast %struct.Curl_easy* %173 to %struct.connectdata*
  %175 = load %struct.hostname*, %struct.hostname** %13, align 8
  %176 = getelementptr inbounds %struct.hostname, %struct.hostname* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @failf(%struct.connectdata* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* @CURLE_COULDNT_RESOLVE_PROXY, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %172, %169
  br label %181

181:                                              ; preds = %180, %167
  br label %182

182:                                              ; preds = %181, %160
  br label %183

183:                                              ; preds = %182, %117
  %184 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %185 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %184, i32 0, i32 1
  %186 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %185, align 8
  %187 = icmp eq %struct.Curl_dns_entry* %186, null
  %188 = zext i1 %187 to i32
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.connectdata*
  %191 = call i32 @DEBUGASSERT(%struct.connectdata* %190)
  %192 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %11, align 8
  %193 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %194 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %193, i32 0, i32 1
  store %struct.Curl_dns_entry* %192, %struct.Curl_dns_entry** %194, align 8
  br label %195

195:                                              ; preds = %183, %29
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %144, %79
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @Curl_timeleft(%struct.connectdata*, i32*, i32) #1

declare dso_local i32 @DEBUGASSERT(%struct.connectdata*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @Curl_resolv_timeout(%struct.connectdata*, i8*, i32, %struct.Curl_dns_entry**, i32) #1

declare dso_local i32 @failf(%struct.connectdata*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
