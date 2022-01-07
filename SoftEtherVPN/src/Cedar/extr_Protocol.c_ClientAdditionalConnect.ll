; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientAdditionalConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientAdditionalConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Uploading Signature...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Downloading Hello...\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Additional Connect Error: %u\0A\00", align 1
@ERR_SESSION_TIMEOUT = common dso_local global i64 0, align 8
@ERR_INVALID_PROTOCOL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Additional Connect Succeed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"TCP Connection Incremented: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"New Half Connection: %s\0A\00", align 1
@TCP_SERVER_TO_CLIENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"TCP_SERVER_TO_CLIENT\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"TCP_CLIENT_TO_SERVER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientAdditionalConnect(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %211

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = call i32* @ClientAdditionalConnectToServer(%struct.TYPE_16__* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %211

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %188

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ClientUploadSignature(i32* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %188

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %188

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ClientDownloadHello(%struct.TYPE_16__* %40, i32* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %188

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %188

51:                                               ; preds = %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ClientUploadAuth2(%struct.TYPE_16__* %52, i32* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %188

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @HttpClientRecv(i32* %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %188

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @GetErrorFromPack(i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @PackGetInt(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 %67, i64* %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @FreePack(i32* %68)
  store i32* null, i32** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load i64, i64* %9, align 8
  %74 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @ERR_SESSION_TIMEOUT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @ERR_INVALID_PROTOCOL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78, %72
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %78
  br label %188

88:                                               ; preds = %63
  %89 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32*, i32** %6, align 8
  %91 = call %struct.TYPE_15__* @NewTcpSock(i32* %90)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %8, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %88
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %96
  %106 = call i64 (...) @Tick64()
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 1000
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %106, %115
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %105, %96
  br label %120

120:                                              ; preds = %119, %88
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @LockList(i32 %125)
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = call i32 @Add(i32 %134, %struct.TYPE_15__* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @UnlockList(i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @Count(i32 %145)
  %147 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %120
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @TCP_SERVER_TO_CLIENT, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)
  %160 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %154, %120
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @Cancel(i32 %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @LockList(i32 %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = call i64 @Delete(i32 %174, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %161
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @ReleaseSock(i32* %179)
  br label %181

181:                                              ; preds = %178, %161
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @UnlockList(i32 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = call i32 @ReleaseSock(i32* %186)
  store i32 1, i32* %3, align 4
  br label %211

188:                                              ; preds = %87, %62, %56, %50, %44, %37, %31, %25
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @Disconnect(i32* %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @LockList(i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = call i64 @Delete(i32 %197, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %188
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @ReleaseSock(i32* %202)
  br label %204

204:                                              ; preds = %201, %188
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @UnlockList(i32 %207)
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 @ReleaseSock(i32* %209)
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %204, %181, %19, %13
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32* @ClientAdditionalConnectToServer(%struct.TYPE_16__*) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @ClientUploadSignature(i32*) #1

declare dso_local i32 @ClientDownloadHello(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ClientUploadAuth2(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @HttpClientRecv(i32*) #1

declare dso_local i64 @GetErrorFromPack(i32*) #1

declare dso_local i64 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local %struct.TYPE_15__* @NewTcpSock(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i8* @Count(i32) #1

declare dso_local i32 @Cancel(i32) #1

declare dso_local i64 @Delete(i32, i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
