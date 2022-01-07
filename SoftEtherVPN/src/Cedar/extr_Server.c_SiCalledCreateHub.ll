; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledCreateHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalledCreateHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@NUM_PACKET_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HubType\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MaxSession\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SavePacketLog\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PacketLogSwitchType\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PacketLogConfig\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"SaveSecurityLog\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SecurityLogSwitchType\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"MaxSessionClient\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"MaxSessionBridge\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"MaxSessionClientBridgeApply\00", align 1
@INFINITE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"SecurePassword\00", align 1
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"EnableSecureNAT\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"SiCalledCreateHub: SecureNAT Created.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiCalledCreateHub(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* @NUM_PACKET_LOG, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %2
  store i32 1, i32* %17, align 4
  br label %177

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = trunc i64 %21 to i32
  %36 = call i32 @PackGetStr(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @PackGetInt(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = call i32 @Zero(%struct.TYPE_17__* %8, i32 32)
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @PackGetInt(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @PackGetInt(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @PackGetInt(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %61, %33
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @NUM_PACKET_LOG, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @PackGetIntEx(i32* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %26, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @PackGetInt(i32* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @PackGetInt(i32* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = call i32 @Zero(%struct.TYPE_17__* %9, i32 32)
  %72 = load i32, i32* %10, align 4
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Copy(i32 %77, i32* %26, i32 4)
  %79 = load i32, i32* %13, align 4
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %14, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.TYPE_18__* @NewHub(i32 %85, i8* %23, %struct.TYPE_17__* %8)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %16, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 8
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 9
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 10
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %94 = call i32 @SetHubLogSetting(%struct.TYPE_18__* %93, %struct.TYPE_17__* %9)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i8* @PackGetInt(i32* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @PackGetInt(i32* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @PackGetBool(i32* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %64
  %115 = load i8*, i8** @INFINITE, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @INFINITE, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %114, %64
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SHA1_SIZE, align 4
  %127 = call i32 @PackGetData2(i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SHA1_SIZE, align 4
  %133 = call i32 @PackGetData2(i32* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %131, i32 %132)
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %148, %121
  %135 = load i32, i32* %15, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @SiNumAccessFromPack(i32* %136)
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32* @SiPackToAccess(i32* %140, i32 %141)
  store i32* %142, i32** %18, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = call i32 @AddAccessList(%struct.TYPE_18__* %143, i32* %144)
  %146 = load i32*, i32** %18, align 8
  %147 = call i32 @Free(i32* %146)
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %134

151:                                              ; preds = %134
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @PackGetBool(i32* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @InVhOption(i32* %19, i32* %156)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @Copy(i32 %160, i32* %19, i32 4)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %163 = call i32 @EnableSecureNAT(%struct.TYPE_18__* %162, i32 1)
  %164 = call i32 @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %165

165:                                              ; preds = %155, %151
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %170 = call i32 @AddHub(i32 %168, %struct.TYPE_18__* %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %174 = call i32 @SetHubOnline(%struct.TYPE_18__* %173)
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %176 = call i32 @ReleaseHub(%struct.TYPE_18__* %175)
  store i32 0, i32* %17, align 4
  br label %177

177:                                              ; preds = %165, %32
  %178 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %17, align 4
  switch i32 %179, label %181 [
    i32 0, label %180
    i32 1, label %180
  ]

180:                                              ; preds = %177, %177
  ret void

181:                                              ; preds = %177
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #2

declare dso_local i8* @PackGetInt(i32*, i8*) #2

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @PackGetIntEx(i32*, i8*, i32) #2

declare dso_local i32 @Copy(i32, i32*, i32) #2

declare dso_local %struct.TYPE_18__* @NewHub(i32, i8*, %struct.TYPE_17__*) #2

declare dso_local i32 @SetHubLogSetting(%struct.TYPE_18__*, %struct.TYPE_17__*) #2

declare dso_local i32 @PackGetBool(i32*, i8*) #2

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #2

declare dso_local i32 @SiNumAccessFromPack(i32*) #2

declare dso_local i32* @SiPackToAccess(i32*, i32) #2

declare dso_local i32 @AddAccessList(%struct.TYPE_18__*, i32*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @InVhOption(i32*, i32*) #2

declare dso_local i32 @EnableSecureNAT(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @Debug(i8*) #2

declare dso_local i32 @AddHub(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @SetHubOnline(%struct.TYPE_18__*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
