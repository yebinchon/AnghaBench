; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry_complete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_bte_inquiry_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.inquiry_info_ex* }
%struct.inquiry_info_ex = type { i32, i32, i32, i32, i32 }
%struct.hci_pcb = type { i32 }
%struct.hci_inq_res = type { i32*, i32, i32, i32, %struct.hci_inq_res*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.bt_state = type { i32 }

@HCI_SUCCESS = common dso_local global i64 0, align 8
@btstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"bdaddr: %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cod:    %02x%02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"psrm:   %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"psm:   %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"co:   %04x\0A\00", align 1
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bte_inquiry_complete(i8* %0, %struct.hci_pcb* %1, %struct.hci_inq_res* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hci_pcb*, align 8
  %7 = alloca %struct.hci_inq_res*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hci_inq_res*, align 8
  %11 = alloca %struct.bt_state*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.hci_pcb* %1, %struct.hci_pcb** %6, align 8
  store %struct.hci_inq_res* %2, %struct.hci_inq_res** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.bt_state*
  store %struct.bt_state* %13, %struct.bt_state** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @HCI_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %172

17:                                               ; preds = %4
  %18 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  %19 = icmp ne %struct.hci_inq_res* %18, null
  br i1 %19, label %20, label %168

20:                                               ; preds = %17
  %21 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %22 = icmp ne %struct.inquiry_info_ex* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %25 = call i32 @free(%struct.inquiry_info_ex* %24)
  br label %26

26:                                               ; preds = %23, %20
  store %struct.inquiry_info_ex* null, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %27 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  store %struct.hci_inq_res* %27, %struct.hci_inq_res** %10, align 8
  br label %28

28:                                               ; preds = %31, %26
  %29 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %30 = icmp ne %struct.hci_inq_res* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %34 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %35 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %34, i32 0, i32 4
  %36 = load %struct.hci_inq_res*, %struct.hci_inq_res** %35, align 8
  store %struct.hci_inq_res* %36, %struct.hci_inq_res** %10, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load %struct.hci_inq_res*, %struct.hci_inq_res** %7, align 8
  store %struct.hci_inq_res* %38, %struct.hci_inq_res** %10, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 20, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @malloc(i32 %42)
  %44 = inttoptr i64 %43 to %struct.inquiry_info_ex*
  store %struct.inquiry_info_ex* %44, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %161, %37
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %52 = icmp ne %struct.hci_inq_res* %51, null
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i1 [ false, %45 ], [ %52, %50 ]
  br i1 %54, label %55, label %164

55:                                               ; preds = %53
  %56 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %56, i64 %57
  %59 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %58, i32 0, i32 4
  %60 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %61 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %60, i32 0, i32 5
  %62 = call i32 @bd_addr_set(i32* %59, %struct.TYPE_4__* %61)
  %63 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %63, i64 %64
  %66 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %69 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @memcpy(i32 %67, i32* %70, i32 3)
  %72 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %73 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %75, i64 %76
  %78 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %80 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %82, i64 %83
  %85 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %87 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.inquiry_info_ex*, %struct.inquiry_info_ex** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %89, i64 %90
  %92 = getelementptr inbounds %struct.inquiry_info_ex, %struct.inquiry_info_ex* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 4
  %93 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %94 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %100 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %106 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %112 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %118 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %124 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %104, i32 %110, i32 %116, i32 %122, i32 %128)
  %130 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %131 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %136 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %141 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %139, i32 %144)
  %146 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %147 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %151 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %155 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load %struct.hci_inq_res*, %struct.hci_inq_res** %10, align 8
  %159 = getelementptr inbounds %struct.hci_inq_res, %struct.hci_inq_res* %158, i32 0, i32 4
  %160 = load %struct.hci_inq_res*, %struct.hci_inq_res** %159, align 8
  store %struct.hci_inq_res* %160, %struct.hci_inq_res** %10, align 8
  br label %161

161:                                              ; preds = %55
  %162 = load i64, i64* %9, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %9, align 8
  br label %45

164:                                              ; preds = %53
  %165 = load %struct.bt_state*, %struct.bt_state** %11, align 8
  %166 = load i32, i32* @ERR_OK, align 4
  %167 = call i32 @__bte_cmdfinish(%struct.bt_state* %165, i32 %166)
  br label %171

168:                                              ; preds = %17
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 1), align 8
  %170 = call i32 @hci_inquiry(i32 10390323, i32 3, i64 %169, i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i64)* @bte_inquiry_complete)
  br label %171

171:                                              ; preds = %168, %164
  br label %172

172:                                              ; preds = %171, %4
  %173 = load i32, i32* @ERR_OK, align 4
  ret i32 %173
}

declare dso_local i32 @free(%struct.inquiry_info_ex*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bd_addr_set(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @__bte_cmdfinish(%struct.bt_state*, i32) #1

declare dso_local i32 @hci_inquiry(i32, i32, i64, i32 (i8*, %struct.hci_pcb*, %struct.hci_inq_res*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
