; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcpudp_reporting_allowed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcpudp_reporting_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.nstat_tucookie = type { %struct.inpcb* }
%struct.inpcb = type { %struct.socket*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.socket = type { i64, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@NSTAT_FILTER_IFNET_FLAGS = common dso_local global i32 0, align 4
@NSTAT_FILTER_SPECIFIC_USER = common dso_local global i32 0, align 4
@NSTAT_FILTER_ACCEPT_CELLULAR = common dso_local global i32 0, align 4
@NSTAT_FILTER_ACCEPT_EXPENSIVE = common dso_local global i32 0, align 4
@NSTAT_FILTER_ACCEPT_WIFI = common dso_local global i32 0, align 4
@NSTAT_FILTER_ACCEPT_WIRED = common dso_local global i32 0, align 4
@NSTAT_FILTER_SPECIFIC_USER_BY_PID = common dso_local global i32 0, align 4
@NSTAT_FILTER_SPECIFIC_USER_BY_EPID = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@NSTAT_FILTER_SPECIFIC_USER_BY_UUID = common dso_local global i32 0, align 4
@NSTAT_FILTER_SPECIFIC_USER_BY_EUUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_9__*, i32)* @nstat_tcpudp_reporting_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_tcpudp_reporting_allowed(i64 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nstat_tucookie*, align 8
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NSTAT_FILTER_IFNET_FLAGS, align 4
  %17 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %233

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = inttoptr i64 %22 to %struct.nstat_tucookie*
  store %struct.nstat_tucookie* %23, %struct.nstat_tucookie** %9, align 8
  %24 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %9, align 8
  %25 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %24, i32 0, i32 0
  %26 = load %struct.inpcb*, %struct.inpcb** %25, align 8
  store %struct.inpcb* %26, %struct.inpcb** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NSTAT_FILTER_IFNET_FLAGS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %119

33:                                               ; preds = %21
  %34 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %35 = call i32 @nstat_inpcb_to_flags(%struct.inpcb* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %116

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NSTAT_FILTER_ACCEPT_CELLULAR, align 4
  %51 = load i32, i32* @NSTAT_FILTER_ACCEPT_EXPENSIVE, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55
  br label %115

70:                                               ; preds = %62, %46
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NSTAT_FILTER_ACCEPT_WIFI, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %86 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %77
  br label %115

92:                                               ; preds = %84, %70
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NSTAT_FILTER_ACCEPT_WIRED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %101 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %108 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %99
  br label %115

114:                                              ; preds = %106, %92
  store i32 0, i32* %4, align 4
  br label %235

115:                                              ; preds = %113, %91, %69
  br label %117

116:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %235

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %33
  br label %119

119:                                              ; preds = %118, %21
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %232

126:                                              ; preds = %119
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %232

129:                                              ; preds = %126
  %130 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %131 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %130, i32 0, i32 0
  %132 = load %struct.socket*, %struct.socket** %131, align 8
  store %struct.socket* %132, %struct.socket** %12, align 8
  store i32 0, i32* %8, align 4
  %133 = load %struct.socket*, %struct.socket** %12, align 8
  %134 = icmp ne %struct.socket* %133, null
  br i1 %134, label %135, label %231

135:                                              ; preds = %129
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER_BY_PID, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.socket*, %struct.socket** %12, align 8
  %147 = getelementptr inbounds %struct.socket, %struct.socket* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 1, i32* %8, align 4
  br label %230

151:                                              ; preds = %142, %135
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER_BY_EPID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %151
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.socket*, %struct.socket** %12, align 8
  %163 = getelementptr inbounds %struct.socket, %struct.socket* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SOF_DELEGATED, align 4
  %166 = and i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = icmp eq i64 %161, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %158
  %170 = load %struct.socket*, %struct.socket** %12, align 8
  %171 = getelementptr inbounds %struct.socket, %struct.socket* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %180

174:                                              ; preds = %158
  %175 = load %struct.socket*, %struct.socket** %12, align 8
  %176 = getelementptr inbounds %struct.socket, %struct.socket* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174, %169
  store i32 1, i32* %8, align 4
  br label %229

180:                                              ; preds = %174, %169, %151
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER_BY_UUID, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %180
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.socket*, %struct.socket** %12, align 8
  %192 = getelementptr inbounds %struct.socket, %struct.socket* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @memcmp(i32 %190, i32 %193, i32 4)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  store i32 1, i32* %8, align 4
  br label %228

197:                                              ; preds = %187, %180
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @NSTAT_FILTER_SPECIFIC_USER_BY_EUUID, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %197
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.socket*, %struct.socket** %12, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SOF_DELEGATED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %204
  %215 = load %struct.socket*, %struct.socket** %12, align 8
  %216 = getelementptr inbounds %struct.socket, %struct.socket* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  br label %222

218:                                              ; preds = %204
  %219 = load %struct.socket*, %struct.socket** %12, align 8
  %220 = getelementptr inbounds %struct.socket, %struct.socket* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi i32 [ %217, %214 ], [ %221, %218 ]
  %224 = call i64 @memcmp(i32 %207, i32 %223, i32 4)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %226, %222, %197
  br label %228

228:                                              ; preds = %227, %196
  br label %229

229:                                              ; preds = %228, %179
  br label %230

230:                                              ; preds = %229, %150
  br label %231

231:                                              ; preds = %230, %129
  br label %232

232:                                              ; preds = %231, %126, %119
  br label %233

233:                                              ; preds = %232, %3
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %116, %114
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @nstat_inpcb_to_flags(%struct.inpcb*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
