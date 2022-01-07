; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_initcore_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_initcore_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { i32 }
%struct.bt_state = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@__const.bte_hci_initcore_complete.dev_cod = private unnamed_addr constant [3 x i32] [i32 0, i32 31, i32 0], align 4
@.str = private unnamed_addr constant [38 x i8] c"bte_hci_initcore_complete(%02x,%02x)\0A\00", align 1
@HCI_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@ERR_CONN = common dso_local global i64 0, align 8
@HCI_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_READ_BD_ADDR = common dso_local global i32 0, align 4
@HCI_READ_LOCAL_FEATURES = common dso_local global i32 0, align 4
@bte_hci_initcore_complete2 = common dso_local global i32 0, align 4
@HCI_RESET = common dso_local global i32 0, align 4
@HCI_WRITE_COD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HCI_WRITE_LOCAL_NAME = common dso_local global i32 0, align 4
@HCI_WRITE_PIN_TYPE = common dso_local global i32 0, align 4
@HCI_HOST_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown command complete event. OGF = 0x%x OCF = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_hci_initcore_complete(i8* %0, %struct.hci_pcb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hci_pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [3 x i32], align 4
  %13 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @ERR_OK, align 8
  store i64 %14, i64* %11, align 8
  %15 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.bte_hci_initcore_complete.dev_cod to i8*), i64 12, i1 false)
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.bt_state*
  store %struct.bt_state* %17, %struct.bt_state** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %151 [
    i32 128, label %22
    i32 129, label %81
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @HCI_READ_BUFFER_SIZE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @HCI_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %32 = call i32 @hci_write_cod(i32* %31)
  br label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @ERR_CONN, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %33, %30
  br label %80

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HCI_READ_LOCAL_VERSION, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @HCI_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @hci_read_bd_addr()
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @ERR_CONN, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %44
  br label %79

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @HCI_READ_BD_ADDR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @HCI_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @hci_read_local_features()
  br label %61

59:                                               ; preds = %53
  %60 = load i64, i64* @ERR_CONN, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %78

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HCI_READ_LOCAL_FEATURES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @HCI_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @bte_hci_initcore_complete2, align 4
  %72 = call i32 @hci_cmd_complete(i32 %71)
  %73 = call i32 @hci_write_inquiry_mode(i32 1)
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* @ERR_CONN, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %35
  br label %156

81:                                               ; preds = %5
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @HCI_RESET, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @HCI_SUCCESS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (...) @hci_read_buffer_size()
  br label %93

91:                                               ; preds = %85
  %92 = load i64, i64* @ERR_CONN, align 8
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %91, %89
  br label %150

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @HCI_WRITE_COD, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @HCI_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @hci_write_local_name(i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 1)
  br label %106

104:                                              ; preds = %98
  %105 = load i64, i64* @ERR_CONN, align 8
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %104, %102
  br label %149

107:                                              ; preds = %94
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @HCI_WRITE_LOCAL_NAME, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @HCI_SUCCESS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @hci_write_pin_type(i32 0)
  br label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @ERR_CONN, align 8
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %117, %115
  br label %148

120:                                              ; preds = %107
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @HCI_WRITE_PIN_TYPE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @HCI_SUCCESS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 (...) @hci_host_buffer_size()
  br label %132

130:                                              ; preds = %124
  %131 = load i64, i64* @ERR_CONN, align 8
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %130, %128
  br label %147

133:                                              ; preds = %120
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @HCI_HOST_BUF_SIZE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @HCI_SUCCESS, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (...) @hci_read_local_version()
  br label %145

143:                                              ; preds = %137
  %144 = load i64, i64* @ERR_CONN, align 8
  store i64 %144, i64* %11, align 8
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %133
  br label %147

147:                                              ; preds = %146, %132
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149, %93
  br label %156

151:                                              ; preds = %5
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i64, i64* @ERR_CONN, align 8
  store i64 %155, i64* %11, align 8
  br label %156

156:                                              ; preds = %151, %150, %80
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @ERR_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.bt_state*, %struct.bt_state** %13, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @__bte_cmdfinish(%struct.bt_state* %161, i64 %162)
  br label %164

164:                                              ; preds = %160, %156
  %165 = load i64, i64* %11, align 8
  ret i64 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LOG(i8*, i32, i32) #2

declare dso_local i32 @hci_write_cod(i32*) #2

declare dso_local i32 @hci_read_bd_addr(...) #2

declare dso_local i32 @hci_read_local_features(...) #2

declare dso_local i32 @hci_cmd_complete(i32) #2

declare dso_local i32 @hci_write_inquiry_mode(i32) #2

declare dso_local i32 @hci_read_buffer_size(...) #2

declare dso_local i32 @hci_write_local_name(i32*, i32) #2

declare dso_local i32 @hci_write_pin_type(i32) #2

declare dso_local i32 @hci_host_buffer_size(...) #2

declare dso_local i32 @hci_read_local_version(...) #2

declare dso_local i32 @__bte_cmdfinish(%struct.bt_state*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
