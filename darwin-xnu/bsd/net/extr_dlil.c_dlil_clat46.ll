; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_clat46.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_clat46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, %struct.ip* }
%struct.ip = type { i32, i32, i32, i32, i32, i32, i32, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.in6_ifaddr = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.nat464_addr = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@IP_OFFMASK = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IP_RF = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IN6_IFF_CLAT46 = common dso_local global i32 0, align 4
@ip6stat = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@NT_NAT64 = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@NT_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32**)* @dlil_clat46 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlil_clat46(i32 %0, i64* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ip*, align 8
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.in6_ifaddr*, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca %struct.in6_addr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32** %2, i32*** %6, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PF_INET, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IS_INTF_CLAT46(i32 %30)
  %32 = call i32 @VERIFY(i32 %31)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store %struct.ip* null, %struct.ip** %9, align 8
  store i32 0, i32* %12, align 4
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %13, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %21, align 8
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %22, align 8
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %23, align 8
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pbuf_init_mbuf(%struct.TYPE_11__* %7, i32* %37, i32 %38)
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.ip*, %struct.ip** %41, align 8
  store %struct.ip* %42, %struct.ip** %9, align 8
  %43 = load %struct.ip*, %struct.ip** %9, align 8
  %44 = getelementptr inbounds %struct.ip, %struct.ip* %43, i32 0, i32 8
  %45 = bitcast %struct.in_addr* %10 to i8*
  %46 = bitcast %struct.in_addr* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.ip*, %struct.ip** %9, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 7
  %49 = bitcast %struct.in_addr* %11 to i8*
  %50 = bitcast %struct.in_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load %struct.ip*, %struct.ip** %9, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ip*, %struct.ip** %9, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 2
  store i32 %57, i32* %17, align 4
  %58 = load %struct.ip*, %struct.ip** %9, align 8
  %59 = getelementptr inbounds %struct.ip, %struct.ip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load %struct.ip*, %struct.ip** %9, align 8
  %62 = getelementptr inbounds %struct.ip, %struct.ip* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  %65 = load i32, i32* @IP_OFFMASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %20, align 4
  %67 = load %struct.ip*, %struct.ip** %9, align 8
  %68 = getelementptr inbounds %struct.ip, %struct.ip* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntohs(i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load %struct.ip*, %struct.ip** %9, align 8
  %72 = getelementptr inbounds %struct.ip, %struct.ip* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load i32, i32* @IP_DF, align 4
  %76 = load i32, i32* @IP_RF, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %74, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %3
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %21, align 8
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %22, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = load %struct.ip*, %struct.ip** %9, align 8
  %89 = getelementptr inbounds %struct.ip, %struct.ip* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = load i32, i32* @IP_MF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %23, align 8
  br label %97

97:                                               ; preds = %95, %87
  br label %98

98:                                               ; preds = %97, %3
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @IN6_IFF_CLAT46, align 4
  %101 = call %struct.in6_ifaddr* @in6ifa_ifpwithflag(i32 %99, i32 %100)
  store %struct.in6_ifaddr* %101, %struct.in6_ifaddr** %13, align 8
  %102 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %103 = icmp eq %struct.in6_ifaddr* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 6), align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 6), align 4
  store i32 -1, i32* %16, align 4
  br label %183

107:                                              ; preds = %98
  %108 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %109 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store %struct.in6_addr* %110, %struct.in6_addr** %14, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @nat464_synthesize_ipv6(i32 %111, %struct.in_addr* %11, %struct.in6_addr* %15)
  store i32 %112, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 5), align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 5), align 4
  br label %183

117:                                              ; preds = %107
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.ip*, %struct.ip** %9, align 8
  %121 = getelementptr inbounds %struct.ip, %struct.ip* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ip*, %struct.ip** %9, align 8
  %124 = getelementptr inbounds %struct.ip, %struct.ip* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ip*, %struct.ip** %9, align 8
  %127 = getelementptr inbounds %struct.ip, %struct.ip* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %130 = load i32, i32* %18, align 4
  %131 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %129, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @nat464_translate_46(%struct.TYPE_11__* %118, i32 %119, i32 %122, i32 %125, i32 %128, i32 %132, i32 %134, i32 %130)
  %136 = load i64, i64* @NT_NAT64, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 -1
  store i32 %139, i32* %16, align 4
  store %struct.ip* null, %struct.ip** %9, align 8
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %117
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 4), align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 4), align 4
  br label %183

145:                                              ; preds = %117
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %147 = bitcast %struct.in_addr* %10 to %struct.nat464_addr*
  %148 = bitcast %struct.in_addr* %11 to %struct.nat464_addr*
  %149 = load i32, i32* %12, align 4
  %150 = load i64, i64* @PF_INET, align 8
  %151 = load i64, i64* @PF_INET6, align 8
  %152 = load i32, i32* @NT_OUT, align 4
  %153 = load i64, i64* %22, align 8
  %154 = icmp ne i64 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i64 @nat464_translate_proto(%struct.TYPE_11__* %146, %struct.nat464_addr* %147, %struct.nat464_addr* %148, i32 %149, i64 %150, i64 %151, i32 %152, i32 %156)
  %158 = load i64, i64* @NT_NAT64, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 0, i32 -1
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %145
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 3), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 3), align 4
  br label %183

167:                                              ; preds = %145
  %168 = load i64, i64* %21, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i64, i64* %23, align 8
  %175 = call i32 @nat464_insert_frag46(%struct.TYPE_11__* %171, i32 %172, i32 %173, i64 %174)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 2), align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 2), align 4
  br label %183

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %178, %164, %142, %114, %104
  %184 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %185 = icmp ne %struct.in6_ifaddr* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %13, align 8
  %188 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %187, i32 0, i32 0
  %189 = call i32 @IFA_REMREF(i32* %188)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %192 = call i64 @pbuf_is_valid(%struct.TYPE_11__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32**, i32*** %6, align 8
  store i32* %197, i32** %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = call i32 @pbuf_destroy(%struct.TYPE_11__* %201)
  br label %206

203:                                              ; preds = %190
  store i32 -1, i32* %16, align 4
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 1), align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 1), align 4
  br label %206

206:                                              ; preds = %203, %194
  %207 = load i32, i32* %16, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i64, i64* @PF_INET6, align 8
  %211 = load i64*, i64** %5, align 8
  store i64 %210, i64* %211, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 0), align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ip6stat, i32 0, i32 0), align 4
  br label %214

214:                                              ; preds = %209, %206
  %215 = load i32, i32* %16, align 4
  ret i32 %215
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IS_INTF_CLAT46(i32) #1

declare dso_local i32 @pbuf_init_mbuf(%struct.TYPE_11__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpwithflag(i32, i32) #1

declare dso_local i32 @nat464_synthesize_ipv6(i32, %struct.in_addr*, %struct.in6_addr*) #1

declare dso_local i64 @nat464_translate_46(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @nat464_translate_proto(%struct.TYPE_11__*, %struct.nat464_addr*, %struct.nat464_addr*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @nat464_insert_frag46(%struct.TYPE_11__*, i32, i32, i64) #1

declare dso_local i32 @IFA_REMREF(i32*) #1

declare dso_local i64 @pbuf_is_valid(%struct.TYPE_11__*) #1

declare dso_local i32 @pbuf_destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
