; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_signal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2cap_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32 }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, %struct.l2cap_hdr* }
%struct.l2cap_hdr = type { i8*, i8* }
%struct.l2cap_sig = type { %struct.pbuf*, i32, i32, i32 }
%struct.l2cap_sig_hdr = type { i32, i32, i8* }

@.str = private unnamed_addr constant [58 x i8] c"l2cap_signal: Allocate memory for l2cap_sig. Code = 0x%x\0A\00", align 1
@l2cap_sigs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"l2cap_signal: could not allocate memory for l2cap_sig\0A\00", align 1
@ERR_MEM = common dso_local global i64 0, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_HDR_LEN = common dso_local global i32 0, align 4
@L2CAP_SIGHDR_LEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"l2cap_signal: could not allocate memory for pbuf\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"l2cap_signal: Sending response/reject signal with id = %d code = %d\0A\00", align 1
@L2CAP_RTX = common dso_local global i32 0, align 4
@L2CAP_MAXRTX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"l2cap_signal: Sending request signal with id = %d code = %d\0A\00", align 1
@L2CAP_SIG_CID = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"l2cap_signal: Registering sent request signal with id = %d code = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"l2cap_signal: Deallocating sent response/reject signal with id = %d code = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2cap_signal(%struct.l2cap_pcb* %0, i32 %1, i32 %2, %struct.bd_addr* %3, %struct.pbuf* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2cap_pcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bd_addr*, align 8
  %11 = alloca %struct.pbuf*, align 8
  %12 = alloca %struct.l2cap_sig*, align 8
  %13 = alloca %struct.l2cap_sig_hdr*, align 8
  %14 = alloca %struct.l2cap_hdr*, align 8
  %15 = alloca i64, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bd_addr* %3, %struct.bd_addr** %10, align 8
  store %struct.pbuf* %4, %struct.pbuf** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call %struct.l2cap_sig* @btmemb_alloc(i32* @l2cap_sigs)
  store %struct.l2cap_sig* %18, %struct.l2cap_sig** %12, align 8
  %19 = icmp eq %struct.l2cap_sig* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = call i32 @ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @ERR_MEM, align 8
  store i64 %22, i64* %6, align 8
  br label %177

23:                                               ; preds = %5
  %24 = load i32, i32* @PBUF_RAW, align 4
  %25 = load i32, i32* @L2CAP_HDR_LEN, align 4
  %26 = load i32, i32* @L2CAP_SIGHDR_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @PBUF_RAM, align 4
  %29 = call %struct.pbuf* @btpbuf_alloc(i32 %24, i32 %27, i32 %28)
  %30 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %31 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %30, i32 0, i32 0
  store %struct.pbuf* %29, %struct.pbuf** %31, align 8
  %32 = icmp eq %struct.pbuf* %29, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = call i32 @ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* @ERR_MEM, align 8
  store i64 %35, i64* %6, align 8
  br label %177

36:                                               ; preds = %23
  %37 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %38 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %37, i32 0, i32 0
  %39 = load %struct.pbuf*, %struct.pbuf** %38, align 8
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %39, i32 0, i32 1
  %41 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %40, align 8
  %42 = bitcast %struct.l2cap_hdr* %41 to i32*
  %43 = load i32, i32* @L2CAP_HDR_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to %struct.l2cap_sig_hdr*
  store %struct.l2cap_sig_hdr* %46, %struct.l2cap_sig_hdr** %13, align 8
  %47 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %48 = icmp eq %struct.pbuf* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %51 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %50, i32 0, i32 2
  store i8* null, i8** %51, align 8
  br label %66

52:                                               ; preds = %36
  %53 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %54 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %53, i32 0, i32 0
  %55 = load %struct.pbuf*, %struct.pbuf** %54, align 8
  %56 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %57 = call i32 @btpbuf_chain(%struct.pbuf* %55, %struct.pbuf* %56)
  %58 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %59 = call i32 @btpbuf_free(%struct.pbuf* %58)
  %60 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %61 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htole16(i32 %62)
  %64 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %65 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %49
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %69 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %71 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %78 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %80 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %83 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84)
  br label %103

86:                                               ; preds = %66
  %87 = call i32 (...) @l2cap_next_sigid()
  %88 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %89 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @L2CAP_RTX, align 4
  %91 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %92 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @L2CAP_MAXRTX, align 4
  %94 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %95 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %97 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %100 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %86, %75
  %104 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %105 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %108 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %110 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %109, i32 0, i32 0
  %111 = load %struct.pbuf*, %struct.pbuf** %110, align 8
  %112 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %111, i32 0, i32 1
  %113 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %112, align 8
  store %struct.l2cap_hdr* %113, %struct.l2cap_hdr** %14, align 8
  %114 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %115 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %114, i32 0, i32 0
  %116 = load %struct.pbuf*, %struct.pbuf** %115, align 8
  %117 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @L2CAP_HDR_LEN, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i8* @htole16(i32 %120)
  %122 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %14, align 8
  %123 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @L2CAP_SIG_CID, align 4
  %125 = call i8* @htole16(i32 %124)
  %126 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %14, align 8
  %127 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.bd_addr*, %struct.bd_addr** %10, align 8
  %129 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %130 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %129, i32 0, i32 0
  %131 = load %struct.pbuf*, %struct.pbuf** %130, align 8
  %132 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %133 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %132, i32 0, i32 0
  %134 = load %struct.pbuf*, %struct.pbuf** %133, align 8
  %135 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @l2cap_write(%struct.bd_addr* %128, %struct.pbuf* %131, i32 %136)
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* @ERR_OK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %103
  %142 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %143 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = srem i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %149 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %152 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %156 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %155, i32 0, i32 0
  %157 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %158 = call i32 @L2CAP_SIG_REG(i32* %156, %struct.l2cap_sig* %157)
  br label %175

159:                                              ; preds = %141, %103
  %160 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %161 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.l2cap_sig_hdr*, %struct.l2cap_sig_hdr** %13, align 8
  %164 = getelementptr inbounds %struct.l2cap_sig_hdr, %struct.l2cap_sig_hdr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32 %165)
  %167 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %168 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %167, i32 0, i32 0
  %169 = load %struct.pbuf*, %struct.pbuf** %168, align 8
  %170 = call i32 @btpbuf_free(%struct.pbuf* %169)
  %171 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %172 = getelementptr inbounds %struct.l2cap_sig, %struct.l2cap_sig* %171, i32 0, i32 0
  store %struct.pbuf* null, %struct.pbuf** %172, align 8
  %173 = load %struct.l2cap_sig*, %struct.l2cap_sig** %12, align 8
  %174 = call i32 @btmemb_free(i32* @l2cap_sigs, %struct.l2cap_sig* %173)
  br label %175

175:                                              ; preds = %159, %147
  %176 = load i64, i64* %15, align 8
  store i64 %176, i64* %6, align 8
  br label %177

177:                                              ; preds = %175, %33, %20
  %178 = load i64, i64* %6, align 8
  ret i64 %178
}

declare dso_local i32 @LOG(i8*, i32, ...) #1

declare dso_local %struct.l2cap_sig* @btmemb_alloc(i32*) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @btpbuf_chain(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @l2cap_next_sigid(...) #1

declare dso_local i64 @l2cap_write(%struct.bd_addr*, %struct.pbuf*, i32) #1

declare dso_local i32 @L2CAP_SIG_REG(i32*, %struct.l2cap_sig*) #1

declare dso_local i32 @btmemb_free(i32*, %struct.l2cap_sig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
