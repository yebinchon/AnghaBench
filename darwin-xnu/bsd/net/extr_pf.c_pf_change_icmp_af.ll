; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_change_icmp_af.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_change_icmp_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pdesc = type { i32, i32, i32, i32 }
%struct.pf_addr = type { i32, i32 }
%struct.ip = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.ip6_hdr = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@IPVERSION = common dso_local global i32 0, align 4
@rfc6864 = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@IPV6_VERSION = common dso_local global i32 0, align 4
@IPV6_DEFHLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.pf_pdesc*, %struct.pf_pdesc*, %struct.pf_addr*, %struct.pf_addr*, i64, i64)* @pf_change_icmp_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_change_icmp_af(i32* %0, i32 %1, %struct.pf_pdesc* %2, %struct.pf_pdesc* %3, %struct.pf_addr* %4, %struct.pf_addr* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pf_pdesc*, align 8
  %13 = alloca %struct.pf_pdesc*, align 8
  %14 = alloca %struct.pf_addr*, align 8
  %15 = alloca %struct.pf_addr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ip*, align 8
  %19 = alloca %struct.ip6_hdr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.pf_pdesc* %2, %struct.pf_pdesc** %12, align 8
  store %struct.pf_pdesc* %3, %struct.pf_pdesc** %13, align 8
  store %struct.pf_addr* %4, %struct.pf_addr** %14, align 8
  store %struct.pf_addr* %5, %struct.pf_addr** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.ip* null, %struct.ip** %18, align 8
  store %struct.ip6_hdr* null, %struct.ip6_hdr** %19, align 8
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* %17, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %8
  %27 = load i64, i64* %16, align 8
  %28 = icmp ne i64 %27, 129
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %16, align 8
  %31 = icmp ne i64 %30, 128
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %33, 129
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %17, align 8
  %37 = icmp ne i64 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %29, %8
  store i32 -1, i32* %9, align 4
  br label %214

39:                                               ; preds = %35, %32
  %40 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %41 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %22, align 4
  %45 = load i64, i64* %17, align 8
  %46 = icmp eq i64 %45, 129
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 88, i64 88
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %21, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %21, align 4
  %54 = call i8* @pbuf_resize_segment(i32* %50, i32 %51, i32 %52, i32 %53)
  store i8* %54, i8** %20, align 8
  %55 = load i8*, i8** %20, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  store i32 -1, i32* %9, align 4
  br label %214

58:                                               ; preds = %39
  %59 = load i64, i64* %17, align 8
  switch i64 %59, label %199 [
    i64 129, label %60
    i64 128, label %136
  ]

60:                                               ; preds = %58
  %61 = load i8*, i8** %20, align 8
  %62 = bitcast i8* %61 to %struct.ip*
  store %struct.ip* %62, %struct.ip** %18, align 8
  %63 = load %struct.ip*, %struct.ip** %18, align 8
  %64 = bitcast %struct.ip* %63 to %struct.ip6_hdr*
  %65 = call i32 @bzero(%struct.ip6_hdr* %64, i32 88)
  %66 = load i32, i32* @IPVERSION, align 4
  %67 = load %struct.ip*, %struct.ip** %18, align 8
  %68 = getelementptr inbounds %struct.ip, %struct.ip* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ip*, %struct.ip** %18, align 8
  %70 = getelementptr inbounds %struct.ip, %struct.ip* %69, i32 0, i32 0
  store i32 22, i32* %70, align 8
  %71 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %72 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 88, %74
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @htons(i32 %79)
  %81 = load %struct.ip*, %struct.ip** %18, align 8
  %82 = getelementptr inbounds %struct.ip, %struct.ip* %81, i32 0, i32 14
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @rfc6864, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %60
  br label %89

86:                                               ; preds = %60
  %87 = call i32 (...) @ip_randomid()
  %88 = call i8* @htons(i32 %87)
  br label %89

89:                                               ; preds = %86, %85
  %90 = phi i8* [ null, %85 ], [ %88, %86 ]
  %91 = load %struct.ip*, %struct.ip** %18, align 8
  %92 = getelementptr inbounds %struct.ip, %struct.ip* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @IP_DF, align 4
  %94 = call i8* @htons(i32 %93)
  %95 = load %struct.ip*, %struct.ip** %18, align 8
  %96 = getelementptr inbounds %struct.ip, %struct.ip* %95, i32 0, i32 12
  store i8* %94, i8** %96, align 8
  %97 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %98 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ip*, %struct.ip** %18, align 8
  %101 = getelementptr inbounds %struct.ip, %struct.ip* %100, i32 0, i32 11
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %103 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %89
  %108 = load i32, i32* @IPPROTO_ICMP, align 4
  %109 = load %struct.ip*, %struct.ip** %18, align 8
  %110 = getelementptr inbounds %struct.ip, %struct.ip* %109, i32 0, i32 10
  store i32 %108, i32* %110, align 8
  br label %117

111:                                              ; preds = %89
  %112 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %113 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ip*, %struct.ip** %18, align 8
  %116 = getelementptr inbounds %struct.ip, %struct.ip* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %111, %107
  %118 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %119 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ip*, %struct.ip** %18, align 8
  %122 = getelementptr inbounds %struct.ip, %struct.ip* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %124 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ip*, %struct.ip** %18, align 8
  %127 = getelementptr inbounds %struct.ip, %struct.ip* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.ip*, %struct.ip** %18, align 8
  %130 = getelementptr inbounds %struct.ip, %struct.ip* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 2
  %133 = call i32 @pbuf_inet_cksum(i32* %128, i32 0, i32 0, i32 %132)
  %134 = load %struct.ip*, %struct.ip** %18, align 8
  %135 = getelementptr inbounds %struct.ip, %struct.ip* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  br label %199

136:                                              ; preds = %58
  %137 = load i8*, i8** %20, align 8
  %138 = bitcast i8* %137 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %138, %struct.ip6_hdr** %19, align 8
  %139 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %140 = call i32 @bzero(%struct.ip6_hdr* %139, i32 88)
  %141 = load i32, i32* @IPV6_VERSION, align 4
  %142 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %143 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %145 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %22, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i8* @htons(i32 %148)
  %150 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %151 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %153 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IPPROTO_ICMP, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %136
  %158 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %159 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %160 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  br label %167

161:                                              ; preds = %136
  %162 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %163 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %166 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %161, %157
  %168 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %169 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %174 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IPV6_DEFHLIM, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172, %167
  %179 = load i32, i32* @IPV6_DEFHLIM, align 4
  %180 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %181 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %188

182:                                              ; preds = %172
  %183 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %184 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %187 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %182, %178
  %189 = load %struct.pf_addr*, %struct.pf_addr** %14, align 8
  %190 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %193 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %195 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ip6_hdr*, %struct.ip6_hdr** %19, align 8
  %198 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %58, %188, %117
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %22, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %204 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %22, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load %struct.pf_pdesc*, %struct.pf_pdesc** %12, align 8
  %211 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %199, %57, %38
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i8* @pbuf_resize_segment(i32*, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ip6_hdr*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ip_randomid(...) #1

declare dso_local i32 @pbuf_inet_cksum(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
