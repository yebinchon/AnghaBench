; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bondport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32*, i32*, i32*, i32*, i32, %struct.ifnet*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ifnet = type { i32 }

@M_BOND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"if_bond: name too large\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"if_bond: SIOCGIFDEVMTU %s failed, %d\0A\00", align 1
@bondport_timer_process_func = common dso_local global i32 0, align 4
@ReceiveState_none = common dso_local global i32 0, align 4
@MuxState_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.ifnet*, i32, i32, i32, i32*)* @bondport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @bondport_create(%struct.ifnet* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @M_BOND, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.TYPE_8__* @_MALLOC(i32 88, i32 %16, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %156

26:                                               ; preds = %5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 12
  %29 = call i32 @multicast_list_init(i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %34 = call i8* @ifnet_name(%struct.ifnet* %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %36 = call i32 @ifnet_unit(%struct.ifnet* %35)
  %37 = call i64 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %153

45:                                               ; preds = %26
  %46 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  %49 = call i32 @siocgifdevmtu(%struct.ifnet* %46, %struct.TYPE_9__* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = call i8* @bondport_get_name(%struct.TYPE_8__* %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  br label %153

57:                                               ; preds = %45
  %58 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %59 = call i32 @ifnet_mtu(%struct.ifnet* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 10
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 9
  store %struct.ifnet* %63, %struct.ifnet** %65, align 8
  %66 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %67 = call i32 @interface_media_info(%struct.ifnet* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @bondport_timer_process_func, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = call i8* @devtimer_create(i32 %70, %struct.TYPE_8__* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 7
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %57
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %153

83:                                               ; preds = %57
  %84 = load i32, i32* @bondport_timer_process_func, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = call i8* @devtimer_create(i32 %84, %struct.TYPE_8__* %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  br label %153

97:                                               ; preds = %83
  %98 = load i32, i32* @bondport_timer_process_func, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %100 = call i8* @devtimer_create(i32 %98, %struct.TYPE_8__* %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %153

111:                                              ; preds = %97
  %112 = load i32, i32* @bondport_timer_process_func, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %114 = call i8* @devtimer_create(i32 %112, %struct.TYPE_8__* %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  br label %153

125:                                              ; preds = %111
  %126 = load i32, i32* @ReceiveState_none, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @MuxState_none, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  store i64 0, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i64 @lacp_actor_partner_state_set_aggregatable(i64 %135)
  store i64 %136, i64* %14, align 8
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load i64, i64* %14, align 8
  %141 = call i64 @lacp_actor_partner_state_set_short_timeout(i64 %140)
  store i64 %141, i64* %14, align 8
  br label %142

142:                                              ; preds = %139, %125
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i64, i64* %14, align 8
  %147 = call i64 @lacp_actor_partner_state_set_active_lacp(i64 %146)
  store i64 %147, i64* %14, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %152, %struct.TYPE_8__** %6, align 8
  br label %156

153:                                              ; preds = %122, %108, %94, %80, %52, %41
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %155 = call i32 @bondport_free(%struct.TYPE_8__* %154)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %156

156:                                              ; preds = %153, %148, %23
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %157
}

declare dso_local %struct.TYPE_8__* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @multicast_list_init(i32*) #1

declare dso_local i64 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @ifnet_name(%struct.ifnet*) #1

declare dso_local i32 @ifnet_unit(%struct.ifnet*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @siocgifdevmtu(%struct.ifnet*, %struct.TYPE_9__*) #1

declare dso_local i8* @bondport_get_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ifnet_mtu(%struct.ifnet*) #1

declare dso_local i32 @interface_media_info(%struct.ifnet*) #1

declare dso_local i8* @devtimer_create(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @lacp_actor_partner_state_set_aggregatable(i64) #1

declare dso_local i64 @lacp_actor_partner_state_set_short_timeout(i64) #1

declare dso_local i64 @lacp_actor_partner_state_set_active_lacp(i64) #1

declare dso_local i32 @bondport_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
