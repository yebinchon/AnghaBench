; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_findentry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_arp.c_uip_arp_findentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.uip_ip_addr = type { i32 }

@UIP_ARPTAB_SIZE = common dso_local global i64 0, align 8
@arp_table = common dso_local global %struct.TYPE_2__* null, align 8
@ARP_STATE_EMPTY = common dso_local global i64 0, align 8
@ARP_STATE_PENDING = common dso_local global i64 0, align 8
@ARP_STATE_STABLE = common dso_local global i64 0, align 8
@ARP_TRY_HARD = common dso_local global i64 0, align 8
@UIP_ERR_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uip_ip_addr*, i64)* @uip_arp_findentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uip_arp_findentry(%struct.uip_ip_addr* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.uip_ip_addr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uip_ip_addr* %0, %struct.uip_ip_addr** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  store i64 %14, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %112, %2
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %115

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARP_STATE_EMPTY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %8, align 8
  br label %111

33:                                               ; preds = %23, %19
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARP_STATE_PENDING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %33
  %42 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %43 = icmp ne %struct.uip_ip_addr* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i64 @ip_addr_cmp(%struct.uip_ip_addr* %45, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %3, align 8
  br label %169

54:                                               ; preds = %44, %41
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %62, %54
  br label %70

70:                                               ; preds = %69
  br label %110

71:                                               ; preds = %33
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ARP_STATE_STABLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %71
  %80 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %81 = icmp ne %struct.uip_ip_addr* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = call i64 @ip_addr_cmp(%struct.uip_ip_addr* %83, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %3, align 8
  br label %169

92:                                               ; preds = %82, %79
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load i64, i64* %9, align 8
  store i64 %101, i64* %7, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %100, %92
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %71
  br label %110

110:                                              ; preds = %109, %70
  br label %111

111:                                              ; preds = %110, %31
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %15

115:                                              ; preds = %15
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @ARP_TRY_HARD, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = load i64, i64* @UIP_ERR_MEM, align 8
  store i64 %125, i64* %3, align 8
  br label %169

126:                                              ; preds = %119, %115
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %9, align 8
  br label %148

132:                                              ; preds = %126
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* %7, align 8
  store i64 %137, i64* %9, align 8
  br label %147

138:                                              ; preds = %132
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @UIP_ARPTAB_SIZE, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i64, i64* %6, align 8
  store i64 %143, i64* %9, align 8
  br label %146

144:                                              ; preds = %138
  %145 = load i64, i64* @UIP_ERR_MEM, align 8
  store i64 %145, i64* %3, align 8
  br label %169

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147, %130
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* @ARP_STATE_EMPTY, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i64 %153, i64* %157, align 8
  %158 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %159 = icmp ne %struct.uip_ip_addr* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %148
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arp_table, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %4, align 8
  %166 = call i32 @ip_addr_set(i32* %164, %struct.uip_ip_addr* %165)
  br label %167

167:                                              ; preds = %160, %148
  %168 = load i64, i64* %9, align 8
  store i64 %168, i64* %3, align 8
  br label %169

169:                                              ; preds = %167, %144, %124, %90, %52
  %170 = load i64, i64* %3, align 8
  ret i64 %170
}

declare dso_local i64 @ip_addr_cmp(%struct.uip_ip_addr*, i32*) #1

declare dso_local i32 @ip_addr_set(i32*, %struct.uip_ip_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
