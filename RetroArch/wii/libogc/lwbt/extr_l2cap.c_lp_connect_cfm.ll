; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_lp_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_lp_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32, i32, i32, i32, i32, %struct.l2cap_pcb* }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i64 }

@l2cap_active_pcbs = common dso_local global %struct.l2cap_pcb* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"lp_connect_cfm: Silently discard\0A\00", align 1
@ERR_OK = common dso_local global i64 0, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_CONN_REQ_SIZE = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@L2CAP_CONN_REQ = common dso_local global i32 0, align 4
@W4_L2CAP_CONNECT_RSP = common dso_local global i32 0, align 4
@L2CAP_CONN_REF_RES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"lp_connect_cfm: No resources available\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lp_connect_cfm: Connection falied\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lp_connect_cfm(%struct.bd_addr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2cap_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i64, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** @l2cap_active_pcbs, align 8
  store %struct.l2cap_pcb* %10, %struct.l2cap_pcb** %7, align 8
  br label %11

11:                                               ; preds = %22, %3
  %12 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %13 = icmp ne %struct.l2cap_pcb* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %16 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %15, i32 0, i32 1
  %17 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %18 = call i64 @bd_addr_cmp(i32* %16, %struct.bd_addr* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %24 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %23, i32 0, i32 5
  %25 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %24, align 8
  store %struct.l2cap_pcb* %25, %struct.l2cap_pcb** %7, align 8
  br label %11

26:                                               ; preds = %20, %11
  %27 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %28 = icmp eq %struct.l2cap_pcb* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %95

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ERR_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %38 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @PBUF_RAW, align 4
  %40 = load i32, i32* @L2CAP_CONN_REQ_SIZE, align 4
  %41 = load i32, i32* @PBUF_RAM, align 4
  %42 = call %struct.pbuf* @btpbuf_alloc(i32 %39, i32 %40, i32 %41)
  store %struct.pbuf* %42, %struct.pbuf** %8, align 8
  %43 = icmp ne %struct.pbuf* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %35
  %45 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %46 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @htole16(i32 %47)
  %49 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %55 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @htole16(i32 %56)
  %58 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %57, i32* %62, align 4
  %63 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %64 = load i32, i32* @L2CAP_CONN_REQ, align 4
  %65 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %66 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %65, i32 0, i32 1
  %67 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %68 = call i64 @l2cap_signal(%struct.l2cap_pcb* %63, i32 %64, i32 0, i32* %66, %struct.pbuf* %67)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* @ERR_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %44
  %72 = load i32, i32* @W4_L2CAP_CONNECT_RSP, align 4
  %73 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %74 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %80

75:                                               ; preds = %44
  %76 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %77 = load i32, i32* @L2CAP_CONN_REF_RES, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb* %76, i32 %77, i32 0, i64 %78)
  br label %80

80:                                               ; preds = %75, %71
  br label %87

81:                                               ; preds = %35
  %82 = call i32 @ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %84 = load i32, i32* @L2CAP_CONN_REF_RES, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb* %83, i32 %84, i32 0, i64 %85)
  br label %87

87:                                               ; preds = %81, %80
  br label %94

88:                                               ; preds = %31
  %89 = call i32 @ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %91 = load i32, i32* @L2CAP_CONN_REF_RES, align 4
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb* %90, i32 %91, i32 0, i64 %92)
  br label %94

94:                                               ; preds = %88, %87
  br label %95

95:                                               ; preds = %94, %29
  ret void
}

declare dso_local i64 @bd_addr_cmp(i32*, %struct.bd_addr*) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @l2cap_signal(%struct.l2cap_pcb*, i32, i32, i32*, %struct.pbuf*) #1

declare dso_local i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb*, i32, i32, i64) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
