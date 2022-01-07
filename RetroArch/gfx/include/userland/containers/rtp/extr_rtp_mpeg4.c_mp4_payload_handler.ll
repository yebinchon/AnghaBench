; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_payload_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_payload_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64 }

@TRACK_NEW_PACKET = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Packet data\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, i64)* @mp4_payload_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_payload_handler(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %12, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %13, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TRACK_NEW_PACKET, align 4
  %35 = call i32 @BIT_IS_SET(i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %36, i64* %17, align 8
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %4
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = call i64 @mp4_new_rtp_packet(i32* %40, %struct.TYPE_13__* %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %17, align 8
  store i64 %47, i64* %5, align 8
  br label %161

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @mp4_next_au_header(i32* %55, %struct.TYPE_15__* %56, i32 %57)
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* %17, align 8
  store i64 %63, i64* %5, align 8
  br label %161

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = icmp ne %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  br label %87

87:                                               ; preds = %68, %65
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %16, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i64 @BITS_BYTES_AVAILABLE(i32* %91, i32* %92)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i64, i64* %15, align 8
  store i64 %98, i64* %16, align 8
  br label %99

99:                                               ; preds = %97, %87
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @VC_CONTAINER_READ_FLAG_SKIP, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @VC_CONTAINER_READ_FLAG_INFO, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %16, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %16, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @BITS_COPY_BYTES(i32* %123, i32* %124, i64 %125, i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %122, %107
  %131 = load i64, i64* %16, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %139

134:                                              ; preds = %102, %99
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i32 @BITS_SKIP_BYTES(i32* %135, i32* %136, i64 %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %130
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @VC_CONTAINER_READ_FLAG_INFO, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %16, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, %145
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i32*, i32** %6, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i64 @BITS_VALID(i32* %151, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  br label %159

157:                                              ; preds = %150
  %158 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i64 [ %156, %155 ], [ %158, %157 ]
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %159, %62, %46
  %162 = load i64, i64* %5, align 8
  ret i64 %162
}

declare dso_local i32 @BIT_IS_SET(i32, i32) #1

declare dso_local i64 @mp4_new_rtp_packet(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @mp4_next_au_header(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @BITS_BYTES_AVAILABLE(i32*, i32*) #1

declare dso_local i32 @BITS_COPY_BYTES(i32*, i32*, i64, i32, i8*) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i64, i8*) #1

declare dso_local i64 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
