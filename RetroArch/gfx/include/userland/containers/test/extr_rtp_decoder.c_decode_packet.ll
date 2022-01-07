; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_rtp_decoder.c_decode_packet.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_rtp_decoder.c_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Packet too small: basic header missing\00", align 1
@seen_first_packet = common dso_local global i32 0, align 4
@expected_next_seq_num = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"*** Sequence break, expected %hu, got %hu ***\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"*** Jumped forward %hd packets ***\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"*** Jumped backward %hd packets ***\00", align 1
@verbosity = common dso_local global i64 0, align 8
@BASIC_HEADER_VERBOSITY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [72 x i8] c"Version: %d\0APayload type: %d%s\0ASequence: %d\0ATimestamp: %u\0ASSRC: 0x%8.8X\00", align 1
@PAYLOAD_TYPE_MASK = common dso_local global i32 0, align 4
@HAS_MARKER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" (M)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FULL_HEADER_VERBOSITY = common dso_local global i64 0, align 8
@CSRC_COUNT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Packet too small: CSRCs missing\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CSRCs:\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" 0x%8.8X\00", align 1
@HAS_EXTENSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"Packet too small: extension header missing\00", align 1
@EXTENSION_LENGTH_MASK = common dso_local global i32 0, align 4
@EXTENSION_ID_SHIFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Packet too small: extension content missing\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Extension: 0x%4.4X (%u bytes)\00", align 1
@FULL_PACKET_VERBOSITY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"Data: (%u bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_packet(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 12
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i64 @network_to_host_16(i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = call i32 @network_to_host_32(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = call i32 @network_to_host_32(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @seen_first_packet, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %21
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @expected_next_seq_num, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @expected_next_seq_num, align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i64, i64* @expected_next_seq_num, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %60

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 0, %57
  %59 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %39, %21
  store i32 1, i32* @seen_first_packet, align 4
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @expected_next_seq_num, align 8
  %64 = load i64, i64* @verbosity, align 8
  %65 = load i64, i64* @BASIC_HEADER_VERBOSITY, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 6
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PAYLOAD_TYPE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @HAS_MARKER, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %72, i8* %78, i64 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %67, %61
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 12
  store i32* %85, i32** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub i64 %86, 12
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* @verbosity, align 8
  %89 = load i64, i64* @FULL_HEADER_VERBOSITY, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %167

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CSRC_COUNT_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %91
  %98 = load i64, i64* %5, align 8
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

105:                                              ; preds = %97
  %106 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %119, %105
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @network_to_host_32(i32* %112)
  %114 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  store i32* %116, i32** %4, align 8
  %117 = load i64, i64* %5, align 8
  %118 = sub i64 %117, 4
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %107

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %91
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @HAS_EXTENSION, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %123
  %129 = load i64, i64* %5, align 8
  %130 = icmp ult i64 %129, 4
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @network_to_host_32(i32* %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  store i32* %137, i32** %4, align 8
  %138 = load i64, i64* %5, align 8
  %139 = sub i64 %138, 4
  store i64 %139, i64* %5, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @EXTENSION_LENGTH_MASK, align 4
  %142 = and i32 %140, %141
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %16, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @EXTENSION_ID_SHIFT, align 4
  %146 = ashr i32 %144, %145
  store i32 %146, i32* %15, align 4
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %179

152:                                              ; preds = %133
  %153 = load i32, i32* %15, align 4
  %154 = load i64, i64* %16, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %153, i32 %155)
  %157 = load i32*, i32** %4, align 8
  %158 = load i64, i64* %16, align 8
  %159 = call i32 @dump_bytes(i32* %157, i64 %158)
  %160 = load i64, i64* %16, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 %160
  store i32* %162, i32** %4, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %5, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %5, align 8
  br label %166

166:                                              ; preds = %152, %123
  br label %167

167:                                              ; preds = %166, %83
  %168 = load i64, i64* @verbosity, align 8
  %169 = load i64, i64* @FULL_PACKET_VERBOSITY, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load i64, i64* %5, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i32*, i8*, ...) @LOG_INFO(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %173)
  %175 = load i32*, i32** %4, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @dump_bytes(i32* %175, i64 %176)
  br label %178

178:                                              ; preds = %171, %167
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %150, %131, %103, %19
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i64 @network_to_host_16(i32*) #1

declare dso_local i32 @network_to_host_32(i32*) #1

declare dso_local i32 @LOG_INFO(i32*, i8*, ...) #1

declare dso_local i32 @dump_bytes(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
