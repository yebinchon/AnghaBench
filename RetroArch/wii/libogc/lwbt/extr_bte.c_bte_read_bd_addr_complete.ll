; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_read_bd_addr_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_read_bd_addr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bd_addr = type { i32* }
%struct.bt_state = type { i64 }

@ERR_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bte_read_bd_addr_complete(%02x,%p)\0A\00", align 1
@ERR_VAL = common dso_local global i32 0, align 4
@HCI_INFO_PARAM_OGF = common dso_local global i64 0, align 8
@HCI_R_BD_ADDR_OCF = common dso_local global i64 0, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"bte_read_bd_addr_complete(%02x,%p,%d)\0A\00", align 1
@i = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_read_bd_addr_complete(i8* %0, %struct.hci_pcb* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hci_pcb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bd_addr*, align 8
  %13 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.bt_state*
  store %struct.bt_state* %15, %struct.bt_state** %13, align 8
  %16 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %17 = icmp ne %struct.hci_pcb* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ERR_CONN, align 4
  store i32 %19, i32* %6, align 4
  br label %126

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %23 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %22, i32 0, i32 0
  %24 = call i32 (i8*, i64, ...) @LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21, %struct.TYPE_2__* %23)
  %25 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %26 = icmp eq %struct.bt_state* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ERR_VAL, align 4
  store i32 %28, i32* %6, align 4
  br label %126

29:                                               ; preds = %20
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @HCI_INFO_PARAM_OGF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @HCI_R_BD_ADDR_OCF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %39 = load i32, i32* @ERR_CONN, align 4
  %40 = call i32 @__bte_cmdfinish(%struct.bt_state* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %126

41:                                               ; preds = %33
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @HCI_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %122

45:                                               ; preds = %41
  %46 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %47 = getelementptr inbounds %struct.bt_state, %struct.bt_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.bd_addr*
  store %struct.bd_addr* %49, %struct.bd_addr** %12, align 8
  %50 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %51 = icmp ne %struct.bd_addr* %50, null
  br i1 %51, label %52, label %113

52:                                               ; preds = %45
  %53 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %54 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %60 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %64 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %70 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %74 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %80 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %84 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %90 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %94 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %100 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32 %98, i32* %102, align 4
  %103 = load %struct.hci_pcb*, %struct.hci_pcb** %8, align 8
  %104 = getelementptr inbounds %struct.hci_pcb, %struct.hci_pcb* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %110 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %52, %45
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.bd_addr*, %struct.bd_addr** %12, align 8
  %116 = load i32, i32* @i, align 4
  %117 = call i32 (i8*, i64, ...) @LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %114, %struct.bd_addr* %115, i32 %116)
  %118 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %119 = load i32, i32* @ERR_OK, align 4
  %120 = call i32 @__bte_cmdfinish(%struct.bt_state* %118, i32 %119)
  %121 = load i32, i32* @ERR_OK, align 4
  store i32 %121, i32* %6, align 4
  br label %126

122:                                              ; preds = %41
  %123 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %124 = load i32, i32* @ERR_VAL, align 4
  %125 = call i32 @__bte_cmdfinish(%struct.bt_state* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %113, %37, %27, %18
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @LOG(i8*, i64, ...) #1

declare dso_local i32 @__bte_cmdfinish(%struct.bt_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
