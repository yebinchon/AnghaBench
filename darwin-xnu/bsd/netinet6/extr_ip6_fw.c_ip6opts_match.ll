; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_ip6opts_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_ip6opts_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32, i32 }
%struct.ip6_fw = type { i64, i64 }
%struct.mbuf = type { i32 }
%struct.ip6_ext = type { i32, i32 }
%struct.ip6_frag = type { i32 }

@IP6F_OFF_MASK = common dso_local global i32 0, align 4
@IPV6_FW_IP6OPT_FRAG = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_AH = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_HOPOPT = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_ROUTE = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_ESP = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_NONXT = common dso_local global i64 0, align 8
@IPV6_FW_IP6OPT_OPTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_hdr**, %struct.ip6_fw*, %struct.mbuf**, i32*, i32*, i32*)* @ip6opts_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6opts_match(%struct.ip6_hdr** %0, %struct.ip6_fw* %1, %struct.mbuf** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip6_hdr**, align 8
  %9 = alloca %struct.ip6_fw*, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip6_hdr*, align 8
  %16 = alloca %struct.ip6_ext*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ip6_frag*, align 8
  store %struct.ip6_hdr** %0, %struct.ip6_hdr*** %8, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %9, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.ip6_hdr**, %struct.ip6_hdr*** %8, align 8
  %22 = load %struct.ip6_hdr*, %struct.ip6_hdr** %21, align 8
  store %struct.ip6_hdr* %22, %struct.ip6_hdr** %15, align 8
  %23 = load %struct.ip6_fw*, %struct.ip6_fw** %9, align 8
  %24 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  %26 = load %struct.ip6_fw*, %struct.ip6_fw** %9, align 8
  %27 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %19, align 8
  store i64 %28, i64* %18, align 8
  %29 = load %struct.ip6_hdr*, %struct.ip6_hdr** %15, align 8
  %30 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %12, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 8, i32* %33, align 4
  %34 = load %struct.ip6_hdr*, %struct.ip6_hdr** %15, align 8
  %35 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %182, %6
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %187

46:                                               ; preds = %41
  %47 = load %struct.ip6_hdr*, %struct.ip6_hdr** %15, align 8
  %48 = ptrtoint %struct.ip6_hdr* %47 to i64
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = inttoptr i64 %52 to %struct.ip6_ext*
  store %struct.ip6_ext* %53, %struct.ip6_ext** %16, align 8
  %54 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %188

65:                                               ; preds = %46
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %124 [
    i32 131, label %68
    i32 134, label %107
  ]

68:                                               ; preds = %65
  %69 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 4
  %78 = icmp uge i64 %73, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %68
  %80 = load %struct.ip6_hdr*, %struct.ip6_hdr** %15, align 8
  %81 = ptrtoint %struct.ip6_hdr* %80 to i64
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = inttoptr i64 %85 to %struct.ip6_frag*
  store %struct.ip6_frag* %86, %struct.ip6_frag** %20, align 8
  %87 = load %struct.ip6_frag*, %struct.ip6_frag** %20, align 8
  %88 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IP6F_OFF_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %79, %68
  %94 = load i64, i64* @IPV6_FW_IP6OPT_FRAG, align 8
  %95 = xor i64 %94, -1
  %96 = load i64, i64* %17, align 8
  %97 = and i64 %96, %95
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* @IPV6_FW_IP6OPT_FRAG, align 8
  %99 = xor i64 %98, -1
  %100 = load i64, i64* %18, align 8
  %101 = and i64 %100, %99
  store i64 %101, i64* %18, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %182

107:                                              ; preds = %65
  %108 = load i64, i64* @IPV6_FW_IP6OPT_AH, align 8
  %109 = xor i64 %108, -1
  %110 = load i64, i64* %17, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* @IPV6_FW_IP6OPT_AH, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %18, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %18, align 8
  %116 = load %struct.ip6_ext*, %struct.ip6_ext** %16, align 8
  %117 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 2
  %120 = shl i32 %119, 2
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %182

124:                                              ; preds = %65
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %172 [
    i32 130, label %127
    i32 128, label %136
    i32 132, label %145
    i32 129, label %154
    i32 133, label %163
  ]

127:                                              ; preds = %124
  %128 = load i64, i64* @IPV6_FW_IP6OPT_HOPOPT, align 8
  %129 = xor i64 %128, -1
  %130 = load i64, i64* %17, align 8
  %131 = and i64 %130, %129
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* @IPV6_FW_IP6OPT_HOPOPT, align 8
  %133 = xor i64 %132, -1
  %134 = load i64, i64* %18, align 8
  %135 = and i64 %134, %133
  store i64 %135, i64* %18, align 8
  br label %173

136:                                              ; preds = %124
  %137 = load i64, i64* @IPV6_FW_IP6OPT_ROUTE, align 8
  %138 = xor i64 %137, -1
  %139 = load i64, i64* %17, align 8
  %140 = and i64 %139, %138
  store i64 %140, i64* %17, align 8
  %141 = load i64, i64* @IPV6_FW_IP6OPT_ROUTE, align 8
  %142 = xor i64 %141, -1
  %143 = load i64, i64* %18, align 8
  %144 = and i64 %143, %142
  store i64 %144, i64* %18, align 8
  br label %173

145:                                              ; preds = %124
  %146 = load i64, i64* @IPV6_FW_IP6OPT_ESP, align 8
  %147 = xor i64 %146, -1
  %148 = load i64, i64* %17, align 8
  %149 = and i64 %148, %147
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* @IPV6_FW_IP6OPT_ESP, align 8
  %151 = xor i64 %150, -1
  %152 = load i64, i64* %18, align 8
  %153 = and i64 %152, %151
  store i64 %153, i64* %18, align 8
  br label %173

154:                                              ; preds = %124
  %155 = load i64, i64* @IPV6_FW_IP6OPT_NONXT, align 8
  %156 = xor i64 %155, -1
  %157 = load i64, i64* %17, align 8
  %158 = and i64 %157, %156
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* @IPV6_FW_IP6OPT_NONXT, align 8
  %160 = xor i64 %159, -1
  %161 = load i64, i64* %18, align 8
  %162 = and i64 %161, %160
  store i64 %162, i64* %18, align 8
  br label %188

163:                                              ; preds = %124
  %164 = load i64, i64* @IPV6_FW_IP6OPT_OPTS, align 8
  %165 = xor i64 %164, -1
  %166 = load i64, i64* %17, align 8
  %167 = and i64 %166, %165
  store i64 %167, i64* %17, align 8
  %168 = load i64, i64* @IPV6_FW_IP6OPT_OPTS, align 8
  %169 = xor i64 %168, -1
  %170 = load i64, i64* %18, align 8
  %171 = and i64 %170, %169
  store i64 %171, i64* %18, align 8
  br label %173

172:                                              ; preds = %124
  br label %188

173:                                              ; preds = %163, %145, %136, %127
  %174 = load %struct.ip6_ext*, %struct.ip6_ext** %16, align 8
  %175 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  %178 = shl i32 %177, 3
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %173, %107, %93
  %183 = load %struct.ip6_ext*, %struct.ip6_ext** %16, align 8
  %184 = getelementptr inbounds %struct.ip6_ext, %struct.ip6_ext* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %12, align 8
  store i32 %185, i32* %186, align 4
  br label %41

187:                                              ; preds = %41
  br label %188

188:                                              ; preds = %187, %172, %154, %64
  %189 = load %struct.ip6_fw*, %struct.ip6_fw** %9, align 8
  %190 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.ip6_fw*, %struct.ip6_fw** %9, align 8
  %193 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %191, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  store i32 1, i32* %7, align 4
  br label %206

197:                                              ; preds = %188
  %198 = load i64, i64* %17, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* %19, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 1, i32* %7, align 4
  br label %206

205:                                              ; preds = %200, %197
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %205, %204, %196
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
