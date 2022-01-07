; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_18__*, %struct.TYPE_16__, %struct.TYPE_15__*, i32*, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, %struct.connectdata*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.sockaddr = type { i64 }

@TFTP_BLKSIZE_DEFAULT = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TFTP_BLKSIZE_MAX = common dso_local global i32 0, align 4
@TFTP_BLKSIZE_MIN = common dso_local global i32 0, align 4
@CURLE_TFTP_ILLEGAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TFTP\00", align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@TFTP_STATE_START = common dso_local global i32 0, align 4
@TFTP_ERR_NONE = common dso_local global i32 0, align 4
@STRERROR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"bind() failed; %s\00", align 1
@SOCKERRNO = common dso_local global i32 0, align 4
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32*)* @tftp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @TFTP_BLKSIZE_DEFAULT, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i8* @calloc(i32 1, i32 48)
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %186

22:                                               ; preds = %2
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %32 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TFTP_BLKSIZE_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TFTP_BLKSIZE_MIN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %30
  %46 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %46, i32* %3, align 4
  br label %186

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @TFTP_BLKSIZE_DEFAULT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @TFTP_BLKSIZE_DEFAULT, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %77, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 2
  %64 = add nsw i32 %63, 2
  %65 = call i8* @calloc(i32 1, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %61
  %75 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %75, i32* %3, align 4
  br label %186

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 2
  %86 = add nsw i32 %85, 2
  %87 = call i8* @calloc(i32 1, i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %97, i32* %3, align 4
  br label %186

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %101 = call i32 @connclose(%struct.connectdata* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 6
  store %struct.connectdata* %102, %struct.connectdata** %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 6
  %107 = load %struct.connectdata*, %struct.connectdata** %106, align 8
  %108 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @FIRSTSOCKET, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @TFTP_STATE_START, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @TFTP_ERR_NONE, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @TFTP_BLKSIZE_DEFAULT, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %128 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %127, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = bitcast i32* %133 to %struct.sockaddr*
  %135 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = call i32 @tftp_set_timeouts(%struct.TYPE_17__* %136)
  %138 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %139 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %177, label %143

143:                                              ; preds = %99
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = bitcast i32* %148 to %struct.sockaddr*
  %150 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %151 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %150, i32 0, i32 2
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @bind(i32 %146, %struct.sockaddr* %149, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %143
  %159 = load i32, i32* @STRERROR_LEN, align 4
  %160 = zext i32 %159 to i64
  %161 = call i8* @llvm.stacksave()
  store i8* %161, i8** %10, align 8
  %162 = alloca i8, i64 %160, align 16
  store i64 %160, i64* %11, align 8
  %163 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %164 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = load i32, i32* @SOCKERRNO, align 4
  %167 = trunc i64 %160 to i32
  %168 = call i32 @Curl_strerror(i32 %166, i8* %162, i32 %167)
  %169 = call i32 @failf(%struct.TYPE_18__* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %170, i32* %3, align 4
  %171 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %171)
  br label %186

172:                                              ; preds = %143
  %173 = load i8*, i8** @TRUE, align 8
  %174 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %175 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i8* %173, i8** %176, align 8
  br label %177

177:                                              ; preds = %172, %99
  %178 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %179 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = call i32 @Curl_pgrsStartNow(%struct.TYPE_18__* %180)
  %182 = load i8*, i8** @TRUE, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* @CURLE_OK, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %177, %158, %96, %74, %45, %20
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i32 @tftp_set_timeouts(%struct.TYPE_17__*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @failf(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @Curl_strerror(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Curl_pgrsStartNow(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
