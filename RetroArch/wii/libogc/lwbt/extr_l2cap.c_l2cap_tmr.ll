; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_tmr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i64, %struct.TYPE_2__, %struct.l2cap_sig*, %struct.l2cap_pcb* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.l2cap_sig = type { i64, i64, i64, %struct.l2cap_sig* }

@l2cap_active_pcbs = common dso_local global %struct.l2cap_pcb* null, align 8
@L2CAP_CLOSED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"l2cap_tmr: Max number of retransmissions (rtx) has expired\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"l2cap_tmr: Max number of retransmissions (ertx) has expired\0A\00", align 1
@L2CAP_RTX = common dso_local global i64 0, align 8
@L2CAP_CONFIG = common dso_local global i64 0, align 8
@L2CAP_CFG_IR = common dso_local global i32 0, align 4
@L2CAP_CONN_CFG_TO = common dso_local global i32 0, align 4
@L2CAP_CFG_TO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_tmr() #0 {
  %1 = alloca %struct.l2cap_sig*, align 8
  %2 = alloca %struct.l2cap_pcb*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** @l2cap_active_pcbs, align 8
  store %struct.l2cap_pcb* %5, %struct.l2cap_pcb** %2, align 8
  br label %6

6:                                                ; preds = %172, %0
  %7 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %8 = icmp ne %struct.l2cap_pcb* %7, null
  br i1 %8, label %9, label %176

9:                                                ; preds = %6
  %10 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %10, i32 0, i32 2
  %12 = load %struct.l2cap_sig*, %struct.l2cap_sig** %11, align 8
  store %struct.l2cap_sig* %12, %struct.l2cap_sig** %1, align 8
  br label %13

13:                                               ; preds = %117, %9
  %14 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %15 = icmp ne %struct.l2cap_sig* %14, null
  br i1 %15, label %16, label %121

16:                                               ; preds = %13
  %17 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %18 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 65535
  br i1 %21, label %22, label %116

22:                                               ; preds = %16
  %23 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %24 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %29 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %33 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %27
  %37 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %38 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** @L2CAP_CLOSED, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %45 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = call i32 @LOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %48 = load i32, i32* @ERR_OK, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @L2CA_ACTION_DISCONN_IND(%struct.l2cap_pcb* %47, i32 %48, i32 %49)
  br label %70

51:                                               ; preds = %36
  %52 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %53 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %57 = load i32, i32* @ERR_OK, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @L2CA_ACTION_TO_IND(%struct.l2cap_pcb* %56, i32 %57, i32 %58)
  %60 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %61 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %64 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %68 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %69 = call i32 @l2cap_rexmit_signal(%struct.l2cap_pcb* %67, %struct.l2cap_sig* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %51, %41
  br label %71

71:                                               ; preds = %70, %27
  br label %115

72:                                               ; preds = %22
  %73 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %74 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %78 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %72
  %82 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %83 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** @L2CAP_CLOSED, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %90 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = call i32 @LOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %93 = load i32, i32* @ERR_OK, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @L2CA_ACTION_DISCONN_IND(%struct.l2cap_pcb* %92, i32 %93, i32 %94)
  br label %113

96:                                               ; preds = %81
  %97 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %98 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %102 = load i32, i32* @ERR_OK, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @L2CA_ACTION_TO_IND(%struct.l2cap_pcb* %101, i32 %102, i32 %103)
  %105 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %106 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* @L2CAP_RTX, align 8
  %108 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %109 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %111 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %112 = call i32 @l2cap_rexmit_signal(%struct.l2cap_pcb* %110, %struct.l2cap_sig* %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %96, %86
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %71
  br label %116

116:                                              ; preds = %115, %16
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.l2cap_sig*, %struct.l2cap_sig** %1, align 8
  %119 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %118, i32 0, i32 3
  %120 = load %struct.l2cap_sig*, %struct.l2cap_sig** %119, align 8
  store %struct.l2cap_sig* %120, %struct.l2cap_sig** %1, align 8
  br label %13

121:                                              ; preds = %13
  %122 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %123 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @L2CAP_CONFIG, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %171

127:                                              ; preds = %121
  %128 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %129 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %127
  %134 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %135 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %140 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %133
  %145 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %146 = call i32 @l2ca_disconnect_req(%struct.l2cap_pcb* %145, i32* null)
  %147 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %148 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @L2CAP_CFG_IR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %144
  %155 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %156 = load i32, i32* @L2CAP_CONN_CFG_TO, align 4
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb* %155, i32 %156, i32 0, i32 %157)
  br label %164

159:                                              ; preds = %144
  %160 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %161 = load i32, i32* @ERR_OK, align 4
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @L2CA_ACTION_CONN_IND(%struct.l2cap_pcb* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i64, i64* @L2CAP_CFG_TO, align 8
  %166 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %167 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i64 %165, i64* %168, align 8
  br label %169

169:                                              ; preds = %164, %133
  br label %170

170:                                              ; preds = %169, %127
  br label %171

171:                                              ; preds = %170, %121
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %2, align 8
  %174 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %173, i32 0, i32 3
  %175 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %174, align 8
  store %struct.l2cap_pcb* %175, %struct.l2cap_pcb** %2, align 8
  br label %6

176:                                              ; preds = %6
  ret void
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @L2CA_ACTION_DISCONN_IND(%struct.l2cap_pcb*, i32, i32) #1

declare dso_local i32 @L2CA_ACTION_TO_IND(%struct.l2cap_pcb*, i32, i32) #1

declare dso_local i32 @l2cap_rexmit_signal(%struct.l2cap_pcb*, %struct.l2cap_sig*) #1

declare dso_local i32 @l2ca_disconnect_req(%struct.l2cap_pcb*, i32*) #1

declare dso_local i32 @L2CA_ACTION_CONN_CFM(%struct.l2cap_pcb*, i32, i32, i32) #1

declare dso_local i32 @L2CA_ACTION_CONN_IND(%struct.l2cap_pcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
