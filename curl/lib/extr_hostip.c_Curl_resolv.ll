; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_resolv.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_hostip.c_Curl_resolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32)*, i64*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.Curl_dns_entry = type { i32 }

@CURLRESOLV_ERROR = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_DNS = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Hostname %s was found in DNS cache\0A\00", align 1
@CURLRESOLV_RESOLVED = common dso_local global i32 0, align 4
@CURLRESOLV_PENDING = common dso_local global i32 0, align 4
@STRING_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_resolv(%struct.connectdata* %0, i8* %1, i32 %2, i32 %3, %struct.Curl_dns_entry** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Curl_dns_entry**, align 8
  %12 = alloca %struct.Curl_dns_entry*, align 8
  %13 = alloca %struct.Curl_easy*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.Curl_dns_entry** %4, %struct.Curl_dns_entry*** %11, align 8
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %12, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 0
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  store %struct.Curl_easy* %21, %struct.Curl_easy** %13, align 8
  %22 = load i32, i32* @CURLRESOLV_ERROR, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.Curl_dns_entry**, %struct.Curl_dns_entry*** %11, align 8
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %23, align 8
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %30 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %31 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %32 = call i32 @Curl_share_lock(%struct.Curl_easy* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %5
  %34 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.Curl_dns_entry* @fetch_addr(%struct.connectdata* %34, i8* %35, i32 %36)
  store %struct.Curl_dns_entry* %37, %struct.Curl_dns_entry** %12, align 8
  %38 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %39 = icmp ne %struct.Curl_dns_entry* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @infof(%struct.Curl_easy* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %45 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @CURLRESOLV_RESOLVED, align 4
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %56 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %57 = call i32 @Curl_share_unlock(%struct.Curl_easy* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %60 = icmp ne %struct.Curl_dns_entry* %59, null
  br i1 %60, label %171, label %61

61:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  %62 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %63 = call i32 @Curl_ipvalid(%struct.connectdata* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @CURLRESOLV_ERROR, align 4
  store i32 %66, i32* %6, align 4
  br label %175

67:                                               ; preds = %61
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %70, align 8
  %72 = icmp ne i32 (i32, i32*, i32)* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %75 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %74, i32 1)
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %77 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %78, align 8
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %85 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %79(i32 %83, i32* null, i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %90 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %89, i32 0)
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %73
  %94 = load i32, i32* @CURLRESOLV_ERROR, align 4
  store i32 %94, i32* %6, align 4
  br label %175

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %101 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32* @Curl_doh(%struct.connectdata* %106, i8* %107, i32 %108, i32* %17)
  store i32* %109, i32** %16, align 8
  br label %115

110:                                              ; preds = %99, %96
  %111 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32* @Curl_getaddrinfo(%struct.connectdata* %111, i8* %112, i32 %113, i32* %17)
  store i32* %114, i32** %16, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32*, i32** %16, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %123 = call i64 @Curl_resolv_check(%struct.connectdata* %122, %struct.Curl_dns_entry** %12)
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @CURLRESOLV_ERROR, align 4
  store i32 %127, i32* %6, align 4
  br label %175

128:                                              ; preds = %121
  %129 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %130 = icmp ne %struct.Curl_dns_entry* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @CURLRESOLV_RESOLVED, align 4
  store i32 %132, i32* %15, align 4
  br label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @CURLRESOLV_PENDING, align 4
  store i32 %134, i32* %15, align 4
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %118
  br label %170

137:                                              ; preds = %115
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %144 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %145 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %146 = call i32 @Curl_share_lock(%struct.Curl_easy* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy* %148, i32* %149, i8* %150, i32 %151)
  store %struct.Curl_dns_entry* %152, %struct.Curl_dns_entry** %12, align 8
  %153 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %154 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %159 = load i32, i32* @CURL_LOCK_DATA_DNS, align 4
  %160 = call i32 @Curl_share_unlock(%struct.Curl_easy* %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %147
  %162 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %163 = icmp ne %struct.Curl_dns_entry* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32*, i32** %16, align 8
  %166 = call i32 @Curl_freeaddrinfo(i32* %165)
  br label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @CURLRESOLV_RESOLVED, align 4
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %167, %164
  br label %170

170:                                              ; preds = %169, %136
  br label %171

171:                                              ; preds = %170, %58
  %172 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %12, align 8
  %173 = load %struct.Curl_dns_entry**, %struct.Curl_dns_entry*** %11, align 8
  store %struct.Curl_dns_entry* %172, %struct.Curl_dns_entry** %173, align 8
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %171, %126, %93, %65
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local %struct.Curl_dns_entry* @fetch_addr(%struct.connectdata*, i8*, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

declare dso_local i32 @Curl_ipvalid(%struct.connectdata*) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i32* @Curl_doh(%struct.connectdata*, i8*, i32, i32*) #1

declare dso_local i32* @Curl_getaddrinfo(%struct.connectdata*, i8*, i32, i32*) #1

declare dso_local i64 @Curl_resolv_check(%struct.connectdata*, %struct.Curl_dns_entry**) #1

declare dso_local %struct.Curl_dns_entry* @Curl_cache_addr(%struct.Curl_easy*, i32*, i8*, i32) #1

declare dso_local i32 @Curl_freeaddrinfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
