; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.Curl_easy = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.IMAP* }
%struct.IMAP = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { %struct.imap_conn }
%struct.imap_conn = type { i64, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DO phase starts\0A\00", align 1
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MIMEKIND_NONE = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"DO phase is complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*, i32*)* @imap_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_perform(%struct.connectdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.IMAP*, align 8
  %11 = alloca %struct.imap_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %9, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.IMAP*, %struct.IMAP** %19, align 8
  store %struct.IMAP* %20, %struct.IMAP** %10, align 8
  %21 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.imap_conn* %23, %struct.imap_conn** %11, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 0
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %26, align 8
  %28 = call i32 @infof(%struct.Curl_easy* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @DEBUGF(i32 %28)
  %30 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %31 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %30, i32 0, i32 0
  %32 = load %struct.Curl_easy*, %struct.Curl_easy** %31, align 8
  %33 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %39 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %40 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %3
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %45 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %41
  %49 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %50 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %55 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %58 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @strcasecompare(i64 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %64 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %69 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %74 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %77 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @strcasecompare(i64 %75, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72, %67, %62
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %81, %72, %53, %48, %41
  %84 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %85 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %84, i32 0, i32 0
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %85, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MIMEKIND_NONE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91, %83
  %100 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %101 = call i64 @imap_perform_append(%struct.connectdata* %100)
  store i64 %101, i64* %8, align 8
  br label %193

102:                                              ; preds = %91
  %103 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %104 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %112 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %117 = call i64 @imap_perform_list(%struct.connectdata* %116)
  store i64 %117, i64* %8, align 8
  br label %192

118:                                              ; preds = %110, %102
  %119 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %120 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %128 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %133 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131, %126
  %137 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %138 = call i64 @imap_perform_fetch(%struct.connectdata* %137)
  store i64 %138, i64* %8, align 8
  br label %191

139:                                              ; preds = %131, %123, %118
  %140 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %141 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %149 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %154 = call i64 @imap_perform_search(%struct.connectdata* %153)
  store i64 %154, i64* %8, align 8
  br label %190

155:                                              ; preds = %147, %144, %139
  %156 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %157 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %186, label %163

163:                                              ; preds = %160
  %164 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %165 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %163
  %169 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %170 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %168
  %174 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %175 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %180 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %173, %168, %163
  %184 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %185 = call i64 @imap_perform_select(%struct.connectdata* %184)
  store i64 %185, i64* %8, align 8
  br label %189

186:                                              ; preds = %178, %160, %155
  %187 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %188 = call i64 @imap_perform_list(%struct.connectdata* %187)
  store i64 %188, i64* %8, align 8
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %152
  br label %191

191:                                              ; preds = %190, %136
  br label %192

192:                                              ; preds = %191, %115
  br label %193

193:                                              ; preds = %192, %99
  %194 = load i64, i64* %8, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i64, i64* %8, align 8
  store i64 %197, i64* %4, align 8
  br label %221

198:                                              ; preds = %193
  %199 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = call i64 @imap_multi_statemach(%struct.connectdata* %199, i32* %200)
  store i64 %201, i64* %8, align 8
  %202 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %203 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @FIRSTSOCKET, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %6, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %198
  %214 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %215 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %214, i32 0, i32 0
  %216 = load %struct.Curl_easy*, %struct.Curl_easy** %215, align 8
  %217 = call i32 @infof(%struct.Curl_easy* %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %218 = call i32 @DEBUGF(i32 %217)
  br label %219

219:                                              ; preds = %213, %198
  %220 = load i64, i64* %8, align 8
  store i64 %220, i64* %4, align 8
  br label %221

221:                                              ; preds = %219, %196
  %222 = load i64, i64* %4, align 8
  ret i64 %222
}

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @strcasecompare(i64, i64) #1

declare dso_local i64 @imap_perform_append(%struct.connectdata*) #1

declare dso_local i64 @imap_perform_list(%struct.connectdata*) #1

declare dso_local i64 @imap_perform_fetch(%struct.connectdata*) #1

declare dso_local i64 @imap_perform_search(%struct.connectdata*) #1

declare dso_local i64 @imap_perform_select(%struct.connectdata*) #1

declare dso_local i64 @imap_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
