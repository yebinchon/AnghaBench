; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPIpQueryThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPIpQueryThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@UDP_NAT_T_GET_IP_INTERVAL = common dso_local global i64 0, align 8
@UDP_NAT_T_GET_IP_INTERVAL_MAX = common dso_local global i64 0, align 8
@UDP_NAT_T_GET_IP_INTERVAL_AFTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"NAT-T: NAT-T Server IP (%s): %r\0A\00", align 1
@UDP_NAT_T_GET_PRIVATE_IP_INTERVAL = common dso_local global i64 0, align 8
@UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN = common dso_local global i32 0, align 4
@UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"NAT-T: My Private IP: %r\0A\00", align 1
@RUDP_LOOP_WAIT_INTERVAL_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RUDPIpQueryThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load i32, i32* @MAX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 1, i32* %14, align 4
  br label %216

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %5, align 8
  %33 = call i64 (...) @GetHostIPAddressHash32()
  store i64 %33, i64* %8, align 8
  %34 = call i8* (...) @NewRouteChange()
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @IsRouteChanged(i8* %35)
  %37 = trunc i64 %21 to i32
  %38 = call i32 @Zero(i8* %23, i32 %37)
  br label %39

39:                                               ; preds = %207, %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %213

44:                                               ; preds = %39
  %45 = call i64 (...) @GetHostIPAddressHash32()
  store i64 %45, i64* %15, align 8
  %46 = call i64 (...) @Tick64()
  store i64 %46, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @IsRouteChanged(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %17, align 4
  %63 = load i64, i64* %15, align 8
  store i64 %63, i64* %8, align 8
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %59
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @Lock(i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @StrCmpi(i8* %23, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  store i64 0, i64* %6, align 8
  %77 = trunc i64 %21 to i32
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @StrCpy(i8* %23, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %76, %66
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @Unlock(i32 %85)
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %159

93:                                               ; preds = %89, %82
  %94 = call i64 @GetIP4(i32* %18, i8* %23)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = call i32 @IsZeroIp(i32* %18)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @Lock(i32 %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 10
  %106 = call i64 @CmpIpAddr(i32* %105, i32* %18)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  store i32 1, i32* %17, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 10
  %111 = call i32 @Copy(i32* %110, i32* %18, i32 4)
  br label %112

112:                                              ; preds = %108, %99
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @Unlock(i32 %115)
  br label %117

117:                                              ; preds = %112, %96, %93
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 10
  %120 = call i32 @IsZeroIp(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i64, i64* %13, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL, align 8
  %127 = load i64, i64* %13, align 8
  %128 = mul nsw i64 %126, %127
  %129 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL_MAX, align 8
  %130 = call i64 @MIN(i64 %128, i64 %129)
  %131 = add nsw i64 %125, %130
  store i64 %131, i64* %6, align 8
  br label %136

132:                                              ; preds = %117
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* @UDP_NAT_T_GET_IP_INTERVAL_AFTER, align 8
  %135 = add nsw i64 %133, %134
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %132, %122
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %136
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 10
  %142 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23, i32* %141)
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 9
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 8
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 7
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 6
  store i64 0, i64* %150, align 8
  %151 = call i32 (...) @Rand64()
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @SetSockEvent(i32 %156)
  br label %158

158:                                              ; preds = %139, %136
  br label %159

159:                                              ; preds = %158, %89
  %160 = load i64, i64* %7, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %7, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %201

166:                                              ; preds = %162, %159
  %167 = call i64 @GetMyPrivateIP(i32* %19, i32 0)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @Lock(i32 %172)
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = call i32 @Copy(i32* %175, i32* %19, i32 4)
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @Unlock(i32 %179)
  br label %181

181:                                              ; preds = %169, %166
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  %184 = call i32 @IsZeroIp(i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* @UDP_NAT_T_GET_PRIVATE_IP_INTERVAL, align 8
  %189 = add nsw i64 %187, %188
  store i64 %189, i64* %7, align 8
  br label %196

190:                                              ; preds = %181
  %191 = load i64, i64* %16, align 8
  %192 = load i32, i32* @UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN, align 4
  %193 = load i32, i32* @UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX, align 4
  %194 = call i64 @GenRandInterval(i32 %192, i32 %193)
  %195 = add nsw i64 %191, %194
  store i64 %195, i64* %7, align 8
  br label %196

196:                                              ; preds = %190, %186
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = bitcast i32* %198 to i8*
  %200 = call i32 (i8*, i8*, ...) @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %196, %162
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %213

207:                                              ; preds = %201
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @RUDP_LOOP_WAIT_INTERVAL_S, align 4
  %212 = call i32 @Wait(i32 %210, i32 %211)
  br label %39

213:                                              ; preds = %206, %39
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 @FreeRouteChange(i8* %214)
  store i32 0, i32* %14, align 4
  br label %216

216:                                              ; preds = %213, %29
  %217 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %14, align 4
  switch i32 %218, label %220 [
    i32 0, label %219
    i32 1, label %219
  ]

219:                                              ; preds = %216, %216
  ret void

220:                                              ; preds = %216
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetHostIPAddressHash32(...) #2

declare dso_local i8* @NewRouteChange(...) #2

declare dso_local i64 @IsRouteChanged(i8*) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i64 @Tick64(...) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @StrCmpi(i8*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i64 @GetIP4(i32*, i8*) #2

declare dso_local i32 @IsZeroIp(i32*) #2

declare dso_local i64 @CmpIpAddr(i32*, i32*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i32 @Debug(i8*, i8*, ...) #2

declare dso_local i32 @Rand64(...) #2

declare dso_local i32 @SetSockEvent(i32) #2

declare dso_local i64 @GetMyPrivateIP(i32*, i32) #2

declare dso_local i64 @GenRandInterval(i32, i32) #2

declare dso_local i32 @Wait(i32, i32) #2

declare dso_local i32 @FreeRouteChange(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
