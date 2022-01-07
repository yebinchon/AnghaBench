; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_initsub_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_initsub_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { i32 }
%struct.bt_state = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@__const.bte_hci_initsub_complete.dev_cod = private unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 72], align 4
@.str = private unnamed_addr constant [37 x i8] c"bte_hci_initsub_complete(%02x,%02x)\0A\00", align 1
@HCI_WRITE_INQUIRY_MODE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@ERR_CONN = common dso_local global i64 0, align 8
@HCI_WRITE_PAGE_SCAN_TYPE = common dso_local global i32 0, align 4
@HCI_WRITE_INQUIRY_SCAN_TYPE = common dso_local global i32 0, align 4
@HCI_WRITE_COD = common dso_local global i32 0, align 4
@HCI_WRITE_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Wii\00", align 1
@HCI_WRITE_LOCAL_NAME = common dso_local global i32 0, align 4
@HCI_WRITE_SCAN_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown command complete event. OGF = 0x%x OCF = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_hci_initsub_complete(i8* %0, %struct.hci_pcb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hci_pcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* @ERR_OK, align 8
  store i64 %15, i64* %12, align 8
  %16 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([3 x i32]* @__const.bte_hci_initsub_complete.dev_cod to i8*), i64 12, i1 false)
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.bt_state*
  store %struct.bt_state* %18, %struct.bt_state** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %125 [
    i32 128, label %23
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @HCI_WRITE_INQUIRY_MODE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @HCI_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @hci_write_page_scan_type(i32 1)
  br label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @ERR_CONN, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %33, %31
  br label %124

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @HCI_WRITE_PAGE_SCAN_TYPE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @HCI_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @hci_write_inquiry_scan_type(i32 1)
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @ERR_CONN, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %44
  br label %123

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @HCI_WRITE_INQUIRY_SCAN_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @HCI_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %59 = call i32 @hci_write_cod(i32* %58)
  br label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @ERR_CONN, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %122

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @HCI_WRITE_COD, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @HCI_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @hci_write_page_timeout(i32 32768)
  br label %75

73:                                               ; preds = %67
  %74 = load i64, i64* @ERR_CONN, align 8
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %73, %71
  br label %121

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @HCI_WRITE_PAGE_TIMEOUT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @HCI_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @hci_write_local_name(i32* bitcast ([4 x i8]* @.str.1 to i32*), i32 4)
  br label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @ERR_CONN, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %86, %84
  br label %120

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @HCI_WRITE_LOCAL_NAME, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @HCI_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 @hci_write_scan_enable(i32 2)
  br label %101

99:                                               ; preds = %93
  %100 = load i64, i64* @ERR_CONN, align 8
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %119

102:                                              ; preds = %89
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @HCI_WRITE_SCAN_ENABLE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @HCI_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = call i32 @hci_cmd_complete(i32* null)
  %112 = load %struct.bt_state*, %struct.bt_state** %14, align 8
  %113 = load i64, i64* @ERR_OK, align 8
  %114 = call i64 @__bte_cmdfinish(%struct.bt_state* %112, i64 %113)
  store i64 %114, i64* %6, align 8
  br label %140

115:                                              ; preds = %106
  %116 = load i64, i64* @ERR_CONN, align 8
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118, %101
  br label %120

120:                                              ; preds = %119, %88
  br label %121

121:                                              ; preds = %120, %75
  br label %122

122:                                              ; preds = %121, %62
  br label %123

123:                                              ; preds = %122, %48
  br label %124

124:                                              ; preds = %123, %35
  br label %130

125:                                              ; preds = %5
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i64, i64* @ERR_CONN, align 8
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %125, %124
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @ERR_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.bt_state*, %struct.bt_state** %14, align 8
  %136 = load i64, i64* %12, align 8
  %137 = call i64 @__bte_cmdfinish(%struct.bt_state* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %138, %110
  %141 = load i64, i64* %6, align 8
  ret i64 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LOG(i8*, i32, i32) #2

declare dso_local i32 @hci_write_page_scan_type(i32) #2

declare dso_local i32 @hci_write_inquiry_scan_type(i32) #2

declare dso_local i32 @hci_write_cod(i32*) #2

declare dso_local i32 @hci_write_page_timeout(i32) #2

declare dso_local i32 @hci_write_local_name(i32*, i32) #2

declare dso_local i32 @hci_write_scan_enable(i32) #2

declare dso_local i32 @hci_cmd_complete(i32*) #2

declare dso_local i64 @__bte_cmdfinish(%struct.bt_state*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
