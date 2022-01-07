; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_InRpcEnumSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"HubName\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Ip\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ClientIP\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"MaxNumTcp\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"CurrentNumTcp\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"PacketSize\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"PacketNum\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"RemoteSession\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"LinkMode\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"SecureNATMode\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"BridgeMode\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Layer3Mode\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Client_BridgeMode\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Client_MonitorMode\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"RemoteHostname\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VLanId\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"UniqueId\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"IsDormantEnabled\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"IsDormant\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"LastCommDormant\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CreatedTime\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"LastCommTime\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcEnumSession(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %175

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_7__* %14, i32 24)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PackGetStr(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 4)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @PackGetIndexCount(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 176, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_6__* @ZeroMalloc(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %172, %13
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %175

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 23
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @PackGetStrEx(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 4, i64 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 22
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @PackGetStrEx(i32* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 4, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i8* @PackGetIntEx(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 21
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 20
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @PackGetIpEx(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %66, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 19
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @PackGetStrEx(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 4, i64 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i8* @PackGetIntEx(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 18
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i8* @PackGetIntEx(i32* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 17
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i8* @PackGetInt64Ex(i32* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 16
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i8* @PackGetInt64Ex(i32* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 15
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i8* @PackGetBoolEx(i32* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 14
  store i8* %97, i8** %99, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i8* @PackGetBoolEx(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 13
  store i8* %102, i8** %104, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i8* @PackGetBoolEx(i32* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 12
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i8* @PackGetBoolEx(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i8* @PackGetBoolEx(i32* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 10
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i8* @PackGetBoolEx(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i8* @PackGetBoolEx(i32* %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 8
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @PackGetStrEx(i32* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %133, i32 4, i64 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i8* @PackGetIntEx(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i64 %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @PackGetDataEx2(i32* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %144, i32 4, i64 %145)
  %147 = load i32*, i32** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i8* @PackGetBoolEx(i32* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i64 %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i8* @PackGetBoolEx(i32* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = load i64, i64* %5, align 8
  %159 = call i8* @PackGetInt64Ex(i32* %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i64 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load i64, i64* %5, align 8
  %164 = call i8* @PackGetInt64Ex(i32* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 %163)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i64, i64* %5, align 8
  %169 = call i8* @PackGetInt64Ex(i32* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i64 %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %41
  %173 = load i64, i64* %5, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %5, align 8
  br label %34

175:                                              ; preds = %12, %34
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetIndexCount(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @PackGetStrEx(i32*, i8*, i32, i32, i64) #1

declare dso_local i8* @PackGetIntEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetIpEx(i32*, i8*, i32*, i64) #1

declare dso_local i8* @PackGetInt64Ex(i32*, i8*, i64) #1

declare dso_local i8* @PackGetBoolEx(i32*, i8*, i64) #1

declare dso_local i32 @PackGetDataEx2(i32*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
