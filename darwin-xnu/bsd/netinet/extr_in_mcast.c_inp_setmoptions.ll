; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inp_setmoptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inp_setmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockopt = type { i32, i32 }
%struct.ip_moptions = type { i32, i32, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@if_index = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@IFF_MULTICAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inp_setmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %15 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @SOCK_PROTO(i32 %16)
  %18 = load i64, i64* @IPPROTO_DIVERT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %2
  %21 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @SOCK_TYPE(i32 %23)
  %25 = load i64, i64* @SOCK_RAW, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %29 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @SOCK_TYPE(i32 %30)
  %32 = load i64, i64* @SOCK_DGRAM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %2
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %3, align 4
  br label %219

36:                                               ; preds = %27, %20
  %37 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %38 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %215 [
    i32 138, label %40
    i32 137, label %44
    i32 135, label %114
    i32 136, label %157
    i32 144, label %199
    i32 143, label %199
    i32 132, label %199
    i32 131, label %199
    i32 141, label %203
    i32 140, label %203
    i32 130, label %203
    i32 129, label %203
    i32 142, label %207
    i32 134, label %207
    i32 133, label %207
    i32 128, label %207
    i32 139, label %211
  ]

40:                                               ; preds = %36
  %41 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %42 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %43 = call i32 @inp_set_multicast_if(%struct.inpcb* %41, %struct.sockopt* %42)
  store i32 %43, i32* %7, align 4
  br label %217

44:                                               ; preds = %36
  %45 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %46 = call i32 (%struct.sockopt*, ...) @sooptcopyin(%struct.sockopt* %45, i32* %8, i64 4, i64 4)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %217

50:                                               ; preds = %44
  %51 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %52 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %51)
  store %struct.ip_moptions* %52, %struct.ip_moptions** %6, align 8
  %53 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %54 = icmp eq %struct.ip_moptions* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %7, align 4
  br label %217

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %62 = call i32 @IMO_LOCK(%struct.ip_moptions* %61)
  %63 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %64 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %63, i32 0, i32 3
  store %struct.ifnet* null, %struct.ifnet** %64, align 8
  %65 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %66 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %65)
  %67 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %68 = call i32 @IMO_REMREF(%struct.ip_moptions* %67)
  br label %217

69:                                               ; preds = %57
  %70 = call i32 (...) @ifnet_head_lock_shared()
  %71 = load i64, i64* @if_index, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = call i32 (...) @ifnet_head_done()
  %77 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %78 = call i32 @IMO_REMREF(%struct.ip_moptions* %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %7, align 4
  br label %217

80:                                               ; preds = %69
  %81 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %81, i64 %83
  %85 = load %struct.ifnet*, %struct.ifnet** %84, align 8
  store %struct.ifnet* %85, %struct.ifnet** %9, align 8
  %86 = call i32 (...) @ifnet_head_done()
  %87 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %88 = icmp eq %struct.ifnet* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %80
  %90 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_MULTICAST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %89, %80
  %97 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %98 = call i32 @IMO_REMREF(%struct.ip_moptions* %97)
  %99 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %99, i32* %7, align 4
  br label %217

100:                                              ; preds = %89
  %101 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %102 = call i32 @IMO_LOCK(%struct.ip_moptions* %101)
  %103 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %104 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %105 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %104, i32 0, i32 3
  store %struct.ifnet* %103, %struct.ifnet** %105, align 8
  %106 = load i32, i32* @INADDR_ANY, align 4
  %107 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %108 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %111 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %110)
  %112 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %113 = call i32 @IMO_REMREF(%struct.ip_moptions* %112)
  br label %217

114:                                              ; preds = %36
  %115 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %116 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %122 = call i32 (%struct.sockopt*, ...) @sooptcopyin(%struct.sockopt* %121, i32* %10, i64 4, i64 4)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %217

126:                                              ; preds = %120
  br label %140

127:                                              ; preds = %114
  %128 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %129 = call i32 (%struct.sockopt*, ...) @sooptcopyin(%struct.sockopt* %128, i32* %11, i64 4, i64 4)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %217

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = icmp sgt i32 %134, 255
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %7, align 4
  br label %217

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %138, %126
  %141 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %142 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %141)
  store %struct.ip_moptions* %142, %struct.ip_moptions** %6, align 8
  %143 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %144 = icmp eq %struct.ip_moptions* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @ENOMEM, align 4
  store i32 %146, i32* %7, align 4
  br label %217

147:                                              ; preds = %140
  %148 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %149 = call i32 @IMO_LOCK(%struct.ip_moptions* %148)
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %152 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %154 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %153)
  %155 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %156 = call i32 @IMO_REMREF(%struct.ip_moptions* %155)
  br label %217

157:                                              ; preds = %36
  %158 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %159 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp eq i64 %161, 4
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %165 = call i32 (%struct.sockopt*, ...) @sooptcopyin(%struct.sockopt* %164, i32* %12, i64 4, i64 4)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %217

169:                                              ; preds = %163
  br label %178

170:                                              ; preds = %157
  %171 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %172 = call i32 (%struct.sockopt*, ...) @sooptcopyin(%struct.sockopt* %171, i32* %13, i64 4, i64 4)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %217

176:                                              ; preds = %170
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %169
  %179 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %180 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %179)
  store %struct.ip_moptions* %180, %struct.ip_moptions** %6, align 8
  %181 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %182 = icmp eq %struct.ip_moptions* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @ENOMEM, align 4
  store i32 %184, i32* %7, align 4
  br label %217

185:                                              ; preds = %178
  %186 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %187 = call i32 @IMO_LOCK(%struct.ip_moptions* %186)
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %194 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %196 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %195)
  %197 = load %struct.ip_moptions*, %struct.ip_moptions** %6, align 8
  %198 = call i32 @IMO_REMREF(%struct.ip_moptions* %197)
  br label %217

199:                                              ; preds = %36, %36, %36, %36
  %200 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %201 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %202 = call i32 @inp_join_group(%struct.inpcb* %200, %struct.sockopt* %201)
  store i32 %202, i32* %7, align 4
  br label %217

203:                                              ; preds = %36, %36, %36, %36
  %204 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %205 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %206 = call i32 @inp_leave_group(%struct.inpcb* %204, %struct.sockopt* %205)
  store i32 %206, i32* %7, align 4
  br label %217

207:                                              ; preds = %36, %36, %36, %36
  %208 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %209 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %210 = call i32 @inp_block_unblock_source(%struct.inpcb* %208, %struct.sockopt* %209)
  store i32 %210, i32* %7, align 4
  br label %217

211:                                              ; preds = %36
  %212 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %213 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %214 = call i32 @inp_set_source_filters(%struct.inpcb* %212, %struct.sockopt* %213)
  store i32 %214, i32* %7, align 4
  br label %217

215:                                              ; preds = %36
  %216 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %215, %211, %207, %203, %199, %185, %183, %175, %168, %147, %145, %136, %132, %125, %100, %96, %75, %60, %55, %49, %40
  %218 = load i32, i32* %7, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %34
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i64 @SOCK_PROTO(i32) #1

declare dso_local i64 @SOCK_TYPE(i32) #1

declare dso_local i32 @inp_set_multicast_if(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, ...) #1

declare dso_local %struct.ip_moptions* @inp_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @IMO_LOCK(%struct.ip_moptions*) #1

declare dso_local i32 @IMO_UNLOCK(%struct.ip_moptions*) #1

declare dso_local i32 @IMO_REMREF(%struct.ip_moptions*) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @inp_join_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_leave_group(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_block_unblock_source(%struct.inpcb*, %struct.sockopt*) #1

declare dso_local i32 @inp_set_source_filters(%struct.inpcb*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
