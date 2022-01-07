; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_RecordPDU.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_RecordPDU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i64, i8*, %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i8*, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { i8*, i64 }

@g_bond = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"[%s] recordPDU: LACP will maintain\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"[%s] recordPDU: LACP partner in sync\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"[%s] recordPDU: LACP partner in sync (ind)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_19__*)* @bondport_RecordPDU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bondport_RecordPDU(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = call i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_20__* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = call i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_20__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = call i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_20__* %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = call i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_20__* %41)
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @lacp_actor_partner_state_set_out_of_sync(i8* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @lacp_actor_partner_state_set_not_defaulted(i8* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %9, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @lacp_actor_partner_state_active_lacp(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %2
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @lacp_actor_partner_state_active_lacp(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @lacp_actor_partner_state_active_lacp(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72, %2
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_bond, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = call i32 @bondport_get_name(%struct.TYPE_22__* %84)
  %86 = call i32 @timestamp_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %72, %66
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = call i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_20__* %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %92 = call i64 @bondport_get_index(%struct.TYPE_22__* %91)
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %158

94:                                               ; preds = %88
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = call i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_20__* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %158

101:                                              ; preds = %94
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_bond, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = call i64 @bcmp(i64 %104, i32* %106, i32 4)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %158

109:                                              ; preds = %101
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = call i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_20__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_bond, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %109
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %118 = call i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_20__* %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %158

123:                                              ; preds = %116
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @lacp_actor_partner_state_aggregatable(i8* %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @lacp_actor_partner_state_aggregatable(i8* %130)
  %132 = icmp eq i64 %127, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %123
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @lacp_actor_partner_state_in_sync(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @lacp_actor_partner_state_set_in_sync(i8* %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_bond, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %155 = call i32 @bondport_get_name(%struct.TYPE_22__* %154)
  %156 = call i32 @timestamp_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %142
  br label %190

158:                                              ; preds = %139, %133, %123, %116, %109, %101, %94, %88
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @lacp_actor_partner_state_aggregatable(i8* %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %158
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @lacp_actor_partner_state_in_sync(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %164
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @lacp_actor_partner_state_set_in_sync(i8* %176)
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** @g_bond, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %186 = call i32 @bondport_get_name(%struct.TYPE_22__* %185)
  %187 = call i32 @timestamp_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %184, %173
  br label %189

189:                                              ; preds = %188, %170, %164, %158
  br label %190

190:                                              ; preds = %189, %157
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %192 = call i32 @bondport_assign_to_LAG(%struct.TYPE_22__* %191)
  ret void
}

declare dso_local i64 @lacp_actor_partner_tlv_get_port(%struct.TYPE_20__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_port_priority(%struct.TYPE_20__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_system_priority(%struct.TYPE_20__*) #1

declare dso_local i64 @lacp_actor_partner_tlv_get_key(%struct.TYPE_20__*) #1

declare dso_local i8* @lacp_actor_partner_state_set_out_of_sync(i8*) #1

declare dso_local i8* @lacp_actor_partner_state_set_not_defaulted(i8*) #1

declare dso_local i64 @lacp_actor_partner_state_active_lacp(i8*) #1

declare dso_local i32 @timestamp_printf(i8*, i32) #1

declare dso_local i32 @bondport_get_name(%struct.TYPE_22__*) #1

declare dso_local i64 @bondport_get_index(%struct.TYPE_22__*) #1

declare dso_local i64 @bcmp(i64, i32*, i32) #1

declare dso_local i64 @lacp_actor_partner_state_aggregatable(i8*) #1

declare dso_local i64 @lacp_actor_partner_state_in_sync(i8*) #1

declare dso_local i8* @lacp_actor_partner_state_set_in_sync(i8*) #1

declare dso_local i32 @bondport_assign_to_LAG(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
