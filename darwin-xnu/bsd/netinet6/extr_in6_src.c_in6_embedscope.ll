; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_embedscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_embedscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.in6_addr = type { i8** }
%struct.sockaddr_in6 = type { i64, %struct.in6_addr }
%struct.in6pcb = type { %struct.TYPE_3__*, %struct.ip6_pktopts* }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.ip6_pktopts = type { %struct.in6_pktinfo* }
%struct.in6_pktinfo = type { i64 }

@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@if_index = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_embedscope(%struct.in6_addr* %0, %struct.sockaddr_in6* %1, %struct.in6pcb* %2, %struct.ifnet** %3, %struct.ip6_pktopts* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.in6pcb*, align 8
  %10 = alloca %struct.ifnet**, align 8
  %11 = alloca %struct.ip6_pktopts*, align 8
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ip6_pktopts*, align 8
  %15 = alloca %struct.in6_pktinfo*, align 8
  %16 = alloca %struct.ifnet*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %7, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %8, align 8
  store %struct.in6pcb* %2, %struct.in6pcb** %9, align 8
  store %struct.ifnet** %3, %struct.ifnet*** %10, align 8
  store %struct.ip6_pktopts* %4, %struct.ip6_pktopts** %11, align 8
  store %struct.ifnet* null, %struct.ifnet** %12, align 8
  store %struct.ip6_pktopts* null, %struct.ip6_pktopts** %14, align 8
  %17 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 1
  %20 = bitcast %struct.in6_addr* %17 to i8*
  %21 = bitcast %struct.in6_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  %26 = icmp ne %struct.ifnet** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  store %struct.ifnet* null, %struct.ifnet** %28, align 8
  br label %29

29:                                               ; preds = %27, %5
  %30 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %31 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %35 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %180

37:                                               ; preds = %33, %29
  store %struct.ifnet* null, %struct.ifnet** %16, align 8
  %38 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %39 = icmp ne %struct.in6pcb* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %42 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %46 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %51 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @IM6O_LOCK(%struct.TYPE_3__* %52)
  %54 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %55 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.ifnet*, %struct.ifnet** %57, align 8
  store %struct.ifnet* %58, %struct.ifnet** %16, align 8
  %59 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %60 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @IM6O_UNLOCK(%struct.TYPE_3__* %61)
  br label %63

63:                                               ; preds = %49, %44, %40, %37
  %64 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %11, align 8
  %65 = icmp ne %struct.ip6_pktopts* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %11, align 8
  store %struct.ip6_pktopts* %67, %struct.ip6_pktopts** %14, align 8
  br label %76

68:                                               ; preds = %63
  %69 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %70 = icmp ne %struct.in6pcb* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %73 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %72, i32 0, i32 1
  %74 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %73, align 8
  store %struct.ip6_pktopts* %74, %struct.ip6_pktopts** %14, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %66
  %77 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %78 = icmp ne %struct.in6pcb* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %14, align 8
  %81 = icmp ne %struct.ip6_pktopts* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %79
  %83 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %14, align 8
  %84 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %83, i32 0, i32 0
  %85 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %84, align 8
  store %struct.in6_pktinfo* %85, %struct.in6_pktinfo** %15, align 8
  %86 = icmp ne %struct.in6_pktinfo* %85, null
  br i1 %86, label %87, label %113

87:                                               ; preds = %82
  %88 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %15, align 8
  %89 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  %94 = icmp ne %struct.ifnet** %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = call i32 (...) @ifnet_head_lock_shared()
  %97 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %98 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %15, align 8
  %99 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %97, i64 %100
  %102 = load %struct.ifnet*, %struct.ifnet** %101, align 8
  store %struct.ifnet* %102, %struct.ifnet** %12, align 8
  %103 = call i32 (...) @ifnet_head_done()
  br label %104

104:                                              ; preds = %95, %92
  %105 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %15, align 8
  %106 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @htons(i64 %107)
  %109 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %110 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  store i8* %108, i8** %112, align 8
  br label %167

113:                                              ; preds = %87, %82, %79, %76
  %114 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %115 = icmp ne %struct.in6pcb* %114, null
  br i1 %115, label %116, label %138

116:                                              ; preds = %113
  %117 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %118 = call i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = load %struct.in6pcb*, %struct.in6pcb** %9, align 8
  %122 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = icmp ne %struct.TYPE_3__* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  %127 = icmp ne %struct.ifnet* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %129, %struct.ifnet** %12, align 8
  %130 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @htons(i64 %132)
  %134 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %135 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  store i8* %133, i8** %137, align 8
  br label %166

138:                                              ; preds = %125, %120, %116, %113
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %138
  %142 = load i64, i64* @if_index, align 8
  %143 = load i64, i64* %13, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @ENXIO, align 4
  store i32 %146, i32* %6, align 4
  br label %181

147:                                              ; preds = %141
  %148 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  %149 = icmp ne %struct.ifnet** %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = call i32 (...) @ifnet_head_lock_shared()
  %152 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %153 = load i64, i64* %13, align 8
  %154 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %152, i64 %153
  %155 = load %struct.ifnet*, %struct.ifnet** %154, align 8
  store %struct.ifnet* %155, %struct.ifnet** %12, align 8
  %156 = call i32 (...) @ifnet_head_done()
  br label %157

157:                                              ; preds = %150, %147
  %158 = load i64, i64* %13, align 8
  %159 = and i64 %158, 65535
  %160 = call i8* @htons(i64 %159)
  %161 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %162 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  store i8* %160, i8** %164, align 8
  br label %165

165:                                              ; preds = %157, %138
  br label %166

166:                                              ; preds = %165, %128
  br label %167

167:                                              ; preds = %166, %104
  %168 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  %169 = icmp ne %struct.ifnet** %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %172 = icmp ne %struct.ifnet* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %175 = call i32 @ifnet_reference(%struct.ifnet* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %178 = load %struct.ifnet**, %struct.ifnet*** %10, align 8
  store %struct.ifnet* %177, %struct.ifnet** %178, align 8
  br label %179

179:                                              ; preds = %176, %167
  br label %180

180:                                              ; preds = %179, %33
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %145
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #2

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr*) #2

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(%struct.in6_addr*) #2

declare dso_local i32 @IM6O_LOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @IM6O_UNLOCK(%struct.TYPE_3__*) #2

declare dso_local i32 @ifnet_head_lock_shared(...) #2

declare dso_local i32 @ifnet_head_done(...) #2

declare dso_local i8* @htons(i64) #2

declare dso_local i32 @ifnet_reference(%struct.ifnet*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
