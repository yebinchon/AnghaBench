; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_rtsp.c_Curl_rtsp_parseheader.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_rtsp.c_Curl_rtsp_parseheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.RTSP* }
%struct.RTSP = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"CSeq:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c": %ld\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to read the CSeq header: [%s]\00", align 1
@CURLE_RTSP_CSEQ_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Session:\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Got a blank Session ID\00", align 1
@STRING_RTSP_SESSION_ID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"Got RTSP Session ID Line [%s], but wanted ID [%s]\00", align 1
@CURLE_RTSP_SESSION_ERROR = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_rtsp_parseheader(%struct.connectdata* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.RTSP*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.RTSP*, %struct.RTSP** %27, align 8
  store %struct.RTSP* %28, %struct.RTSP** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.RTSP*, %struct.RTSP** %9, align 8
  %31 = getelementptr inbounds %struct.RTSP, %struct.RTSP* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %41

36:                                               ; preds = %18
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @CURLE_RTSP_CSEQ_ERROR, align 4
  store i32 %40, i32* %3, align 4
  br label %194

41:                                               ; preds = %24
  br label %192

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @checkprefix(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %191

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %61, %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @ISSPACE(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ false, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  br label %49

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %70 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %190

71:                                               ; preds = %64
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %73 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %112

80:                                               ; preds = %71
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %83 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %90 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @strncmp(i8* %81, i8* %88, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %80
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %103 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %101, i8* %108)
  %110 = load i32, i32* @CURLE_RTSP_SESSION_ERROR, align 4
  store i32 %110, i32* %3, align 4
  br label %194

111:                                              ; preds = %80
  br label %189

112:                                              ; preds = %71
  %113 = load i8*, i8** %10, align 8
  store i8* %113, i8** %11, align 8
  br label %114

114:                                              ; preds = %132, %112
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 59
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @ISSPACE(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %124, %119, %114
  %131 = phi i1 [ false, %119 ], [ false, %114 ], [ %129, %124 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %11, align 8
  br label %114

135:                                              ; preds = %130
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = add nsw i64 %140, 1
  %142 = trunc i64 %141 to i32
  %143 = call i8* @malloc(i32 %142)
  %144 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %145 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  store i8* %143, i8** %149, align 8
  %150 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %151 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %135
  %159 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %159, i32* %3, align 4
  br label %194

160:                                              ; preds = %135
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %162 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i8**, i8*** %163, align 8
  %165 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  %175 = call i32 @memcpy(i8* %167, i8* %168, i32 %174)
  %176 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %177 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = ptrtoint i8* %183 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = getelementptr inbounds i8, i8* %182, i64 %187
  store i8 0, i8* %188, align 1
  br label %189

189:                                              ; preds = %160, %111
  br label %190

190:                                              ; preds = %189, %68
  br label %191

191:                                              ; preds = %190, %42
  br label %192

192:                                              ; preds = %191, %41
  %193 = load i32, i32* @CURLE_OK, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %158, %99, %36
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i64 @checkprefix(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
