; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_telnet.c_suboption.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_telnet.c_suboption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32*, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.curl_slist = type { i32, %struct.curl_slist* }
%struct.TELNET = type { %struct.curl_slist*, i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%c%c%c%c%s%c%c\00", align 1
@CURL_IAC = common dso_local global i32 0, align 4
@CURL_SB = common dso_local global i32 0, align 4
@CURL_TELQUAL_IS = common dso_local global i32 0, align 4
@CURL_SE = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Sending data failed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%127[^,],%127s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%c%s%c%s\00", align 1
@CURL_NEW_ENV_VAR = common dso_local global i32 0, align 4
@CURL_NEW_ENV_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*)* @suboption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suboption(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca %struct.TELNET*, align 8
  %12 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %13 = bitcast [128 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = bitcast [128 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 128, i1 false)
  %15 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 1
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %10, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TELNET*
  store %struct.TELNET* %22, %struct.TELNET** %11, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %24 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %25 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %29 = call i64 @CURL_SB_LEN(%struct.TELNET* %28)
  %30 = add i64 %29, 2
  %31 = call i32 @printsub(%struct.Curl_easy* %23, i8 signext 60, i8* %27, i64 %30)
  %32 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %33 = call i32 @CURL_SB_GET(%struct.TELNET* %32)
  switch i32 %33, label %206 [
    i32 129, label %34
    i32 128, label %76
    i32 130, label %118
  ]

34:                                               ; preds = %1
  %35 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %36 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = add nsw i32 %38, 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  %42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %43 = load i32, i32* @CURL_IAC, align 4
  %44 = load i32, i32* @CURL_SB, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* @CURL_TELQUAL_IS, align 4
  %48 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %49 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CURL_IAC, align 4
  %52 = load i32, i32* @CURL_SE, align 4
  %53 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %42, i32 2048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %46, i32 129, i32 %47, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %55 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @FIRSTSOCKET, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @swrite(i32 %59, i8* %60, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load i32, i32* @SOCKERRNO, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @failf(%struct.Curl_easy* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %34
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 2
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %73, 2
  %75 = call i32 @printsub(%struct.Curl_easy* %71, i8 signext 62, i8* %72, i64 %74)
  br label %206

76:                                               ; preds = %1
  %77 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %78 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strlen(i32 %79)
  %81 = add nsw i32 %80, 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %6, align 8
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %85 = load i32, i32* @CURL_IAC, align 4
  %86 = load i32, i32* @CURL_SB, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load i32, i32* @CURL_TELQUAL_IS, align 4
  %90 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %91 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CURL_IAC, align 4
  %94 = load i32, i32* @CURL_SE, align 4
  %95 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %84, i32 2048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %85, i8* %88, i32 128, i32 %89, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %97 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @FIRSTSOCKET, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @swrite(i32 %101, i8* %102, i64 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %76
  %108 = load i32, i32* @SOCKERRNO, align 4
  store i32 %108, i32* %7, align 4
  %109 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @failf(%struct.Curl_easy* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %76
  %113 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 2
  %115 = load i64, i64* %6, align 8
  %116 = sub i64 %115, 2
  %117 = call i32 @printsub(%struct.Curl_easy* %113, i8 signext 62, i8* %114, i64 %116)
  br label %206

118:                                              ; preds = %1
  %119 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %120 = load i32, i32* @CURL_IAC, align 4
  %121 = load i32, i32* @CURL_SB, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i32, i32* @CURL_TELQUAL_IS, align 4
  %125 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %119, i32 2048, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %120, i8* %123, i32 130, i32 %124)
  store i64 4, i64* %6, align 8
  %126 = load %struct.TELNET*, %struct.TELNET** %11, align 8
  %127 = getelementptr inbounds %struct.TELNET, %struct.TELNET* %126, i32 0, i32 0
  %128 = load %struct.curl_slist*, %struct.curl_slist** %127, align 8
  store %struct.curl_slist* %128, %struct.curl_slist** %3, align 8
  br label %129

129:                                              ; preds = %167, %118
  %130 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %131 = icmp ne %struct.curl_slist* %130, null
  br i1 %131, label %132, label %171

132:                                              ; preds = %129
  %133 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %134 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @strlen(i32 %135)
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %139, %140
  %142 = icmp ult i64 %141, 2042
  br i1 %142, label %143, label %166

143:                                              ; preds = %132
  %144 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %145 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %148 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %149 = call i32 @sscanf(i32 %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 %152
  %154 = load i64, i64* %6, align 8
  %155 = sub i64 2048, %154
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* @CURL_NEW_ENV_VAR, align 4
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %159 = load i32, i32* @CURL_NEW_ENV_VALUE, align 4
  %160 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %161 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %153, i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %157, i8* %158, i32 %159, i8* %160)
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %6, align 8
  br label %165

165:                                              ; preds = %151, %143
  br label %166

166:                                              ; preds = %165, %132
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %169 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %168, i32 0, i32 1
  %170 = load %struct.curl_slist*, %struct.curl_slist** %169, align 8
  store %struct.curl_slist* %170, %struct.curl_slist** %3, align 8
  br label %129

171:                                              ; preds = %129
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 %172
  %174 = load i64, i64* %6, align 8
  %175 = sub i64 2048, %174
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @CURL_IAC, align 4
  %178 = load i32, i32* @CURL_SE, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 (i8*, i32, i8*, i32, i8*, ...) @msnprintf(i8* %173, i32 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %177, i8* %180)
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, 2
  store i64 %183, i64* %6, align 8
  %184 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %185 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @FIRSTSOCKET, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @swrite(i32 %189, i8* %190, i64 %191)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %171
  %196 = load i32, i32* @SOCKERRNO, align 4
  store i32 %196, i32* %7, align 4
  %197 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @failf(%struct.Curl_easy* %197, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %171
  %201 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %202 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 2
  %203 = load i64, i64* %6, align 8
  %204 = sub i64 %203, 2
  %205 = call i32 @printsub(%struct.Curl_easy* %201, i8 signext 62, i8* %202, i64 %204)
  br label %206

206:                                              ; preds = %1, %200, %112, %70
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printsub(%struct.Curl_easy*, i8 signext, i8*, i64) #2

declare dso_local i64 @CURL_SB_LEN(%struct.TELNET*) #2

declare dso_local i32 @CURL_SB_GET(%struct.TELNET*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i8*, ...) #2

declare dso_local i32 @swrite(i32, i8*, i64) #2

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #2

declare dso_local i32 @sscanf(i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
