; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_delmulti_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_delmulti_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmultiaddr = type { i32, i64, i32, i64, %struct.TYPE_2__*, %struct.ifmultiaddr*, %struct.ifnet* }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i64 }

@AF_LINK = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IFMAF_ANONYMOUS = common dso_local global i32 0, align 4
@ifma_link = common dso_local global i32 0, align 4
@M_IFADDR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IFD_ATTACHED = common dso_local global i32 0, align 4
@RTM_DELMADDR = common dso_local global i32 0, align 4
@SIOCDELMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmultiaddr*, %struct.ifnet*, %struct.sockaddr*, i32)* @if_delmulti_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_delmulti_common(%struct.ifmultiaddr* %0, %struct.ifnet* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifmultiaddr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifmultiaddr*, align 8
  store %struct.ifmultiaddr* %0, %struct.ifmultiaddr** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sockaddr* null, %struct.sockaddr** %10, align 8
  store i32 0, i32* %12, align 4
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %14, align 8
  %15 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %16 = icmp ne %struct.ifmultiaddr* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %19 = icmp ne %struct.ifnet* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %22 = icmp ne %struct.sockaddr* %21, null
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br label %25

25:                                               ; preds = %23, %4
  %26 = phi i1 [ true, %4 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @VERIFY(i32 %27)
  %29 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %30 = icmp ne %struct.ifmultiaddr* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %33 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %32, i32 0, i32 6
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  store %struct.ifnet* %34, %struct.ifnet** %7, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = icmp ne %struct.sockaddr* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_LINK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_UNSPEC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44, %38
  %51 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %52 = call %struct.sockaddr* @copy_and_normalize(%struct.sockaddr* %51)
  store %struct.sockaddr* %52, %struct.sockaddr** %10, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %54 = icmp eq %struct.sockaddr* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %5, align 4
  br label %254

57:                                               ; preds = %50
  %58 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %58, %struct.sockaddr** %8, align 8
  br label %59

59:                                               ; preds = %57, %44, %35
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %60)
  %62 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %63 = icmp eq %struct.ifmultiaddr* %62, null
  br i1 %63, label %64, label %128

64:                                               ; preds = %59
  %65 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = call %struct.ifmultiaddr* @LIST_FIRST(i32* %66)
  store %struct.ifmultiaddr* %67, %struct.ifmultiaddr** %6, align 8
  br label %68

68:                                               ; preds = %109, %64
  %69 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %70 = icmp ne %struct.ifmultiaddr* %69, null
  br i1 %70, label %71, label %113

71:                                               ; preds = %68
  %72 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %73 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %72)
  %74 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %75 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %76 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = call i32 @ifa_equal(%struct.sockaddr* %74, %struct.TYPE_2__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %85 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %83, %71
  %91 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %92 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFMAF_ANONYMOUS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %99 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %97, %90
  %103 = phi i1 [ true, %90 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @VERIFY(i32 %104)
  %106 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %107 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %106)
  br label %109

108:                                              ; preds = %83, %80
  br label %113

109:                                              ; preds = %102
  %110 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %111 = load i32, i32* @ifma_link, align 4
  %112 = call %struct.ifmultiaddr* @LIST_NEXT(%struct.ifmultiaddr* %110, i32 %111)
  store %struct.ifmultiaddr* %112, %struct.ifmultiaddr** %6, align 8
  br label %68

113:                                              ; preds = %108, %68
  %114 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %115 = icmp eq %struct.ifmultiaddr* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %118 = icmp ne %struct.sockaddr* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %121 = load i32, i32* @M_IFADDR, align 4
  %122 = call i32 @FREE(%struct.sockaddr* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %125 = call i32 @ifnet_lock_done(%struct.ifnet* %124)
  %126 = load i32, i32* @ENOENT, align 4
  store i32 %126, i32* %5, align 4
  br label %254

127:                                              ; preds = %113
  br label %131

128:                                              ; preds = %59
  %129 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %130 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %129)
  br label %131

131:                                              ; preds = %128, %127
  %132 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %133 = call i32 @IFMA_LOCK_ASSERT_HELD(%struct.ifmultiaddr* %132)
  %134 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %135 = call i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr* %134)
  %136 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %137 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @if_detach_ifma(%struct.ifnet* %136, %struct.ifmultiaddr* %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %131
  %143 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %144 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IFD_ATTACHED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %151 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br label %154

154:                                              ; preds = %149, %142
  %155 = phi i1 [ false, %142 ], [ %153, %149 ]
  br label %156

156:                                              ; preds = %154, %131
  %157 = phi i1 [ true, %131 ], [ %155, %154 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @VERIFY(i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %164 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %163, i32 0, i32 5
  %165 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %164, align 8
  %166 = icmp eq %struct.ifmultiaddr* %165, null
  br label %167

167:                                              ; preds = %162, %156
  %168 = phi i1 [ true, %156 ], [ %166, %162 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @VERIFY(i32 %169)
  %171 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %172 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %171, i32 0, i32 5
  %173 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %172, align 8
  store %struct.ifmultiaddr* %173, %struct.ifmultiaddr** %14, align 8
  %174 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %175 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %174, i32 0, i32 4
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AF_UNSPEC, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %167
  %182 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %183 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %182, i32 0, i32 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @AF_LINK, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %181, %167
  %190 = phi i1 [ true, %167 ], [ %188, %181 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %13, align 4
  %192 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %193 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %192)
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %198 = icmp ne %struct.ifmultiaddr* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %201 = call i32 @IFMA_LOCK(%struct.ifmultiaddr* %200)
  %202 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %203 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %204 = call i32 @if_detach_ifma(%struct.ifnet* %202, %struct.ifmultiaddr* %203, i32 0)
  store i32 %204, i32* %12, align 4
  %205 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %206 = call i32 @IFMA_UNLOCK(%struct.ifmultiaddr* %205)
  br label %207

207:                                              ; preds = %199, %196, %189
  %208 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %209 = call i32 @ifnet_lock_done(%struct.ifnet* %208)
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* @RTM_DELMADDR, align 4
  %214 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %215 = call i32 @rt_newmaddrmsg(i32 %213, %struct.ifmultiaddr* %214)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %218 = icmp eq %struct.ifmultiaddr* %217, null
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %222, %219, %216
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225, %222
  %229 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %230 = load i32, i32* @SIOCDELMULTI, align 4
  %231 = call i32 @ifnet_ioctl(%struct.ifnet* %229, i32 0, i32 %230, i32* null)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %237 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %236)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %14, align 8
  %243 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %6, align 8
  %246 = call i32 @IFMA_REMREF(%struct.ifmultiaddr* %245)
  %247 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %248 = icmp ne %struct.sockaddr* %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %251 = load i32, i32* @M_IFADDR, align 4
  %252 = call i32 @FREE(%struct.sockaddr* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %244
  store i32 0, i32* %5, align 4
  br label %254

254:                                              ; preds = %253, %123, %55
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.sockaddr* @copy_and_normalize(%struct.sockaddr*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local %struct.ifmultiaddr* @LIST_FIRST(i32*) #1

declare dso_local i32 @IFMA_LOCK(%struct.ifmultiaddr*) #1

declare dso_local i32 @ifa_equal(%struct.sockaddr*, %struct.TYPE_2__*) #1

declare dso_local i32 @IFMA_UNLOCK(%struct.ifmultiaddr*) #1

declare dso_local %struct.ifmultiaddr* @LIST_NEXT(%struct.ifmultiaddr*, i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i32 @IFMA_LOCK_ASSERT_HELD(%struct.ifmultiaddr*) #1

declare dso_local i32 @IFMA_ADDREF_LOCKED(%struct.ifmultiaddr*) #1

declare dso_local i32 @if_detach_ifma(%struct.ifnet*, %struct.ifmultiaddr*, i32) #1

declare dso_local i32 @rt_newmaddrmsg(i32, %struct.ifmultiaddr*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

declare dso_local i32 @IFMA_REMREF(%struct.ifmultiaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
