; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_patch_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_hci_patch_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_pcb = type { i32 }
%struct.bt_state = type { i32 }

@ERR_OK = common dso_local global i64 0, align 8
@__const.bte_hci_patch_complete.dev_cod = private unnamed_addr constant [3 x i32] [i32 4, i32 2, i32 64], align 4
@.str = private unnamed_addr constant [40 x i8] c"bte_hci_patch_complete(%02x,%02x,%02x)\0A\00", align 1
@HCI_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i32 0, align 4
@ERR_CONN = common dso_local global i64 0, align 8
@HCI_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_READ_BD_ADDR = common dso_local global i32 0, align 4
@HCI_READ_LOCAL_FEATURES = common dso_local global i32 0, align 4
@HCI_RESET = common dso_local global i32 0, align 4
@HCI_WRITE_COD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HCI_WRITE_LOCAL_NAME = common dso_local global i32 0, align 4
@HCI_WRITE_PIN_TYPE = common dso_local global i32 0, align 4
@HCI_HOST_BUF_SIZE = common dso_local global i32 0, align 4
@HCI_VENDOR_PATCH_END_OCF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown command complete event. OGF = 0x%x OCF = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bte_hci_patch_complete(i8* %0, %struct.hci_pcb* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([3 x i32]* @__const.bte_hci_patch_complete.dev_cod to i8*), i64 12, i1 false)
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.bt_state*
  store %struct.bt_state* %18, %struct.bt_state** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (i8*, i32, i32, ...) @LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %168 [
    i32 129, label %24
    i32 130, label %84
    i32 128, label %154
  ]

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @HCI_READ_BUFFER_SIZE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @HCI_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %34 = call i32 @hci_write_cod(i32* %33)
  br label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @ERR_CONN, align 8
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %83

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @HCI_READ_LOCAL_VERSION, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @HCI_SUCCESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @hci_read_bd_addr()
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @ERR_CONN, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %46
  br label %82

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @HCI_READ_BD_ADDR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @HCI_SUCCESS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (...) @hci_read_local_features()
  br label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @ERR_CONN, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %61, %59
  br label %81

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @HCI_READ_LOCAL_FEATURES, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @HCI_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = call i32 @hci_cmd_complete(i32* null)
  %74 = load %struct.bt_state*, %struct.bt_state** %14, align 8
  %75 = load i64, i64* @ERR_OK, align 8
  %76 = call i64 @__bte_cmdfinish(%struct.bt_state* %74, i64 %75)
  store i64 %76, i64* %6, align 8
  br label %183

77:                                               ; preds = %68
  %78 = load i64, i64* @ERR_CONN, align 8
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %64
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %37
  br label %173

84:                                               ; preds = %5
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @HCI_RESET, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @HCI_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (...) @hci_read_buffer_size()
  br label %96

94:                                               ; preds = %88
  %95 = load i64, i64* @ERR_CONN, align 8
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %94, %92
  br label %153

97:                                               ; preds = %84
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @HCI_WRITE_COD, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @HCI_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @hci_write_local_name(i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 1)
  br label %109

107:                                              ; preds = %101
  %108 = load i64, i64* @ERR_CONN, align 8
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %107, %105
  br label %152

110:                                              ; preds = %97
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @HCI_WRITE_LOCAL_NAME, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @HCI_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @hci_write_pin_type(i32 0)
  br label %122

120:                                              ; preds = %114
  %121 = load i64, i64* @ERR_CONN, align 8
  store i64 %121, i64* %12, align 8
  br label %122

122:                                              ; preds = %120, %118
  br label %151

123:                                              ; preds = %110
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @HCI_WRITE_PIN_TYPE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @HCI_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 (...) @hci_host_buffer_size()
  br label %135

133:                                              ; preds = %127
  %134 = load i64, i64* @ERR_CONN, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %133, %131
  br label %150

136:                                              ; preds = %123
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @HCI_HOST_BUF_SIZE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @HCI_SUCCESS, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 (...) @hci_read_local_version()
  br label %148

146:                                              ; preds = %140
  %147 = load i64, i64* @ERR_CONN, align 8
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %122
  br label %152

152:                                              ; preds = %151, %109
  br label %153

153:                                              ; preds = %152, %96
  br label %173

154:                                              ; preds = %5
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @HCI_VENDOR_PATCH_END_OCF, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @HCI_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i64 (...) @hci_reset()
  store i64 %163, i64* %12, align 8
  br label %166

164:                                              ; preds = %158
  %165 = load i64, i64* @ERR_CONN, align 8
  store i64 %165, i64* %12, align 8
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %154
  br label %173

168:                                              ; preds = %5
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 (i8*, i32, i32, ...) @LOG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i64, i64* @ERR_CONN, align 8
  store i64 %172, i64* %12, align 8
  br label %173

173:                                              ; preds = %168, %167, %153, %83
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* @ERR_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.bt_state*, %struct.bt_state** %14, align 8
  %179 = load i64, i64* %12, align 8
  %180 = call i64 @__bte_cmdfinish(%struct.bt_state* %178, i64 %179)
  br label %181

181:                                              ; preds = %177, %173
  %182 = load i64, i64* %12, align 8
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %181, %72
  %184 = load i64, i64* %6, align 8
  ret i64 %184
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LOG(i8*, i32, i32, ...) #2

declare dso_local i32 @hci_write_cod(i32*) #2

declare dso_local i32 @hci_read_bd_addr(...) #2

declare dso_local i32 @hci_read_local_features(...) #2

declare dso_local i32 @hci_cmd_complete(i32*) #2

declare dso_local i64 @__bte_cmdfinish(%struct.bt_state*, i64) #2

declare dso_local i32 @hci_read_buffer_size(...) #2

declare dso_local i32 @hci_write_local_name(i32*, i32) #2

declare dso_local i32 @hci_write_pin_type(i32) #2

declare dso_local i32 @hci_host_buffer_size(...) #2

declare dso_local i32 @hci_read_local_version(...) #2

declare dso_local i64 @hci_reset(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
