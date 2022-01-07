; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_kpi_ipfilter.c_ipf_injectv4_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_kpi_ipfilter.c_ipf_injectv4_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.route = type { i32, i32, i32, i32 }
%struct.ip = type { i32, i32 }
%struct.mbuf = type { i64 }
%struct.m_tag = type { i32 }
%struct.ip_moptions = type { i32, i32, i32 }
%struct.ip_out_args = type { i32, i32, i32, i32 }

@IFSCOPE_NONE = common dso_local global i32 0, align 4
@SO_TC_UNSPEC = common dso_local global i32 0, align 4
@_NET_SERVICE_TYPE_UNSPEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_IPFILT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IPPOF_MCAST_OPTS = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@IPPOF_SELECT_SRCIF = common dso_local global i32 0, align 4
@IPOAF_SELECT_SRCIF = common dso_local global i32 0, align 4
@IPPOF_BOUND_IF = common dso_local global i32 0, align 4
@IPOAF_BOUND_IF = common dso_local global i32 0, align 4
@IPPOF_SHIFT_IFSCOPE = common dso_local global i32 0, align 4
@IPPOF_NO_IFT_CELLULAR = common dso_local global i32 0, align 4
@IPOAF_NO_CELLULAR = common dso_local global i32 0, align 4
@IPPOF_BOUND_SRCADDR = common dso_local global i32 0, align 4
@IPOAF_BOUND_SRCADDR = common dso_local global i32 0, align 4
@IPPOF_NO_IFF_EXPENSIVE = common dso_local global i32 0, align 4
@IPOAF_NO_EXPENSIVE = common dso_local global i32 0, align 4
@IP_ALLOWBROADCAST = common dso_local global i32 0, align 4
@IP_RAWOUTPUT = common dso_local global i32 0, align 4
@IP_OUTARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_3__*)* @ipf_injectv4_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipf_injectv4_out(i64 %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.route, align 4
  %9 = alloca %struct.ip*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_tag*, align 8
  %13 = alloca %struct.ip_moptions*, align 8
  %14 = alloca %struct.ip_out_args, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.mbuf*
  store %struct.mbuf* %16, %struct.mbuf** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.m_tag* null, %struct.m_tag** %12, align 8
  store %struct.ip_moptions* null, %struct.ip_moptions** %13, align 8
  %17 = bitcast %struct.ip_out_args* %14 to %struct.route*
  %18 = call i32 @bzero(%struct.route* %17, i32 16)
  %19 = load i32, i32* @IFSCOPE_NONE, align 4
  %20 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @SO_TC_UNSPEC, align 4
  %22 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @_NET_SERVICE_TYPE_UNSPEC, align 4
  %24 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %31 = call %struct.mbuf* @m_pullup(%struct.mbuf* %30, i32 8)
  store %struct.mbuf* %31, %struct.mbuf** %10, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = icmp eq %struct.mbuf* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %182

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = call i64 @m_mtod(%struct.mbuf* %38)
  %40 = inttoptr i64 %39 to %struct.ip*
  store %struct.ip* %40, %struct.ip** %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %45 = load i32, i32* @KERNEL_TAG_TYPE_IPFILT, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %48 = call %struct.m_tag* @m_tag_create(i32 %44, i32 %45, i32 8, i32 %46, %struct.mbuf* %47)
  store %struct.m_tag* %48, %struct.m_tag** %12, align 8
  %49 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %50 = icmp eq %struct.m_tag* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %53 = call i32 @m_freem(%struct.mbuf* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %182

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %58 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %57, i64 1
  %59 = bitcast %struct.m_tag* %58 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %61 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %62 = call i32 @m_tag_prepend(%struct.mbuf* %60, %struct.m_tag* %61)
  br label %63

63:                                               ; preds = %55, %37
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IPPOF_MCAST_OPTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load i32, i32* @M_DONTWAIT, align 4
  %75 = call %struct.ip_moptions* @ip_allocmoptions(i32 %74)
  store %struct.ip_moptions* %75, %struct.ip_moptions** %13, align 8
  %76 = icmp ne %struct.ip_moptions* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %82 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %87 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %92 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %77, %73, %66, %63
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = icmp ne %struct.TYPE_3__* %94, null
  br i1 %95, label %96, label %163

96:                                               ; preds = %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IPPOF_SELECT_SRCIF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @IPOAF_SELECT_SRCIF, align 4
  %105 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IPPOF_BOUND_IF, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load i32, i32* @IPOAF_BOUND_IF, align 4
  %117 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IPPOF_SHIFT_IFSCOPE, align 4
  %124 = ashr i32 %122, %123
  %125 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %115, %108
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IPPOF_NO_IFT_CELLULAR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @IPOAF_NO_CELLULAR, align 4
  %135 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IPPOF_BOUND_SRCADDR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i32, i32* @IPOAF_BOUND_SRCADDR, align 4
  %147 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %138
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IPPOF_NO_IFF_EXPENSIVE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, i32* @IPOAF_NO_EXPENSIVE, align 4
  %159 = getelementptr inbounds %struct.ip_out_args, %struct.ip_out_args* %14, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %157, %150
  br label %163

163:                                              ; preds = %162, %93
  %164 = call i32 @bzero(%struct.route* %8, i32 16)
  %165 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %166 = load i32, i32* @IP_ALLOWBROADCAST, align 4
  %167 = load i32, i32* @IP_RAWOUTPUT, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @IP_OUTARGS, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %172 = bitcast %struct.ip_out_args* %14 to %struct.route*
  %173 = call i32 @ip_output(%struct.mbuf* %165, i32* null, %struct.route* %8, i32 %170, %struct.ip_moptions* %171, %struct.route* %172)
  store i32 %173, i32* %11, align 4
  %174 = call i32 @ROUTE_RELEASE(%struct.route* %8)
  %175 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %176 = icmp ne %struct.ip_moptions* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load %struct.ip_moptions*, %struct.ip_moptions** %13, align 8
  %179 = call i32 @IMO_REMREF(%struct.ip_moptions* %178)
  br label %180

180:                                              ; preds = %177, %163
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %51, %34
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @bzero(%struct.route*, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i64 @m_mtod(%struct.mbuf*) #1

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local %struct.ip_moptions* @ip_allocmoptions(i32) #1

declare dso_local i32 @ip_output(%struct.mbuf*, i32*, %struct.route*, i32, %struct.ip_moptions*, %struct.route*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

declare dso_local i32 @IMO_REMREF(%struct.ip_moptions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
