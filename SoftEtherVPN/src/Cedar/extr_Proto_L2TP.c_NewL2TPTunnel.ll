; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_NewL2TPTunnel.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_NewL2TPTunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i8*, i8*, i32, i32, i32, i32*, i32*, i32, i32, i32, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32* }

@L2TP_AVP_TYPE_HOST_NAME = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_VENDOR_NAME = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_V3_TUNNEL_ID = common dso_local global i32 0, align 4
@L2TP_AVP_TYPE_ASSIGNED_TUNNEL = common dso_local global i32 0, align 4
@L2TPV3_CISCO_AVP_TUNNEL_ID = common dso_local global i32 0, align 4
@L2TP_AVP_VENDOR_ID_CISCO = common dso_local global i32 0, align 4
@CmpL2TPQueueForRecv = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @NewL2TPTunnel(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %11 = icmp eq %struct.TYPE_19__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = icmp eq %struct.TYPE_20__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = icmp eq %struct.TYPE_17__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %218

19:                                               ; preds = %15
  %20 = call %struct.TYPE_18__* @ZeroMalloc(i32 104)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = call i8* @NewList(i32* null)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 15
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = call i32 @Copy(i32* %33, i32* %35, i32 4)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 13
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = call i32 @Copy(i32* %43, i32* %45, i32 4)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = load i32, i32* @L2TP_AVP_TYPE_HOST_NAME, align 4
  %54 = call %struct.TYPE_21__* @GetAVPValue(%struct.TYPE_20__* %52, i32 %53)
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %9, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %28
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 8
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 11
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Copy(i32* %71, i32* %74, i32 %77)
  br label %86

79:                                               ; preds = %62, %57, %28
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 8
  %85 = call i32 @IPToStr(i32* %82, i32 8, i32* %84)
  br label %86

86:                                               ; preds = %79, %68
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = load i32, i32* @L2TP_AVP_TYPE_VENDOR_NAME, align 4
  %89 = call %struct.TYPE_21__* @GetAVPValue(%struct.TYPE_20__* %87, i32 %88)
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %9, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = icmp ne %struct.TYPE_21__* %90, null
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 1
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 8
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @Copy(i32* %106, i32* %109, i32 %112)
  br label %114

114:                                              ; preds = %103, %97, %92, %86
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @L2TP_AVP_TYPE_V3_TUNNEL_ID, align 4
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @L2TP_AVP_TYPE_ASSIGNED_TUNNEL, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = call %struct.TYPE_21__* @GetAVPValue(%struct.TYPE_20__* %115, i32 %125)
  store %struct.TYPE_21__* %126, %struct.TYPE_21__** %9, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %128 = icmp eq %struct.TYPE_21__* %127, null
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i64 4, i64 4
  %140 = icmp ne i64 %133, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129, %124
  br label %215

142:                                              ; preds = %129
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @READ_UINT(i32* %150)
  br label %157

152:                                              ; preds = %142
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @READ_USHORT(i32* %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = phi i32 [ %151, %147 ], [ %156, %152 ]
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @GenerateNewTunnelIdEx(%struct.TYPE_19__* %161, i32* %163, i32 %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %157
  br label %215

175:                                              ; preds = %157
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %182 = load i32, i32* @L2TPV3_CISCO_AVP_TUNNEL_ID, align 4
  %183 = load i32, i32* @L2TP_AVP_VENDOR_ID_CISCO, align 4
  %184 = call %struct.TYPE_21__* @GetAVPValueEx(%struct.TYPE_20__* %181, i32 %182, i32 %183)
  store %struct.TYPE_21__* %184, %struct.TYPE_21__** %9, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %186 = icmp ne %struct.TYPE_21__* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %180
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %190, %175
  %197 = call i8* @NewList(i32* null)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 6
  store i8* %197, i8** %199, align 8
  %200 = load i32*, i32** @CmpL2TPQueueForRecv, align 8
  %201 = call i8* @NewList(i32* %200)
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %214, %struct.TYPE_18__** %4, align 8
  br label %218

215:                                              ; preds = %174, %141
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %217 = call i32 @FreeL2TPTunnel(%struct.TYPE_18__* %216)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  br label %218

218:                                              ; preds = %215, %196, %18
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  ret %struct.TYPE_18__* %219
}

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i8* @NewList(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @GetAVPValue(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @IPToStr(i32*, i32, i32*) #1

declare dso_local i32 @READ_UINT(i32*) #1

declare dso_local i32 @READ_USHORT(i32*) #1

declare dso_local i64 @GenerateNewTunnelIdEx(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @GetAVPValueEx(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @FreeL2TPTunnel(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
