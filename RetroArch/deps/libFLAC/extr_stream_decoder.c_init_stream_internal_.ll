; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_stream_internal_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_stream_decoder.c_init_stream_internal_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i8*, i64, i32, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_13__, i32, i8*, i8*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@FLAC__STREAM_DECODER_UNINITIALIZED = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@FLAC__HAS_OGG = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_UNSUPPORTED_CONTAINER = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS = common dso_local global i32 0, align 4
@FLAC__lpc_restore_signal = common dso_local global i8* null, align 8
@FLAC__lpc_restore_signal_wide = common dso_local global i32 0, align 4
@read_callback_ = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_MEMORY_ALLOCATION_ERROR = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_INIT_STATUS_OK = common dso_local global i32 0, align 4
@FLAC__CPUINFO_TYPE_IA32 = common dso_local global i64 0, align 8
@FLAC__CPUINFO_TYPE_X86_64 = common dso_local global i64 0, align 8
@FLAC__STREAM_DECODER_INIT_STATUS_ERROR_OPENING_FILE = common dso_local global i32 0, align 4
@FLAC__lpc_restore_signal_16_intrin_sse2 = common dso_local global i8* null, align 8
@FLAC__lpc_restore_signal_asm_ia32 = common dso_local global i8* null, align 8
@FLAC__lpc_restore_signal_asm_ia32_mmx = common dso_local global i8* null, align 8
@FLAC__lpc_restore_signal_wide_asm_ia32 = common dso_local global i32 0, align 4
@FLAC__lpc_restore_signal_wide_intrin_sse41 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i64, i64, i64, i64, i64, i32, i64, i8*, i64)* @init_stream_internal_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream_internal_(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = icmp ne %struct.TYPE_12__* null, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @FLAC__ASSERT(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FLAC__STREAM_DECODER_UNINITIALIZED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %11
  %36 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED, align 4
  store i32 %36, i32* %12, align 4
  br label %204

37:                                               ; preds = %11
  %38 = load i64, i64* @FLAC__HAS_OGG, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i64, i64* %23, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_UNSUPPORTED_CONTAINER, align 4
  store i32 %44, i32* %12, align 4
  br label %204

45:                                               ; preds = %40, %37
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 0, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %19, align 8
  %50 = icmp eq i64 0, %49
  br i1 %50, label %66, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %21, align 8
  %53 = icmp eq i64 0, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* %16, align 8
  %59 = icmp eq i64 0, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %17, align 8
  %62 = icmp eq i64 0, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %18, align 8
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %60, %57, %51, %48, %45
  %67 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS, align 4
  store i32 %67, i32* %12, align 4
  br label %204

68:                                               ; preds = %63, %54
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 18
  %73 = call i32 @FLAC__cpu_info(%struct.TYPE_13__* %72)
  %74 = load i8*, i8** @FLAC__lpc_restore_signal, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 21
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* @FLAC__lpc_restore_signal_wide, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 19
  store i32 %79, i32* %83, align 8
  %84 = load i8*, i8** @FLAC__lpc_restore_signal, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 20
  store i8* %84, i8** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 18
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %68
  br label %97

97:                                               ; preds = %96, %68
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 17
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @read_callback_, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %105 = call i32 @FLAC__bitreader_init(i32 %102, i32 %103, %struct.TYPE_12__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %97
  %108 = load i64, i64* @FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  %113 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %113, i32* %12, align 4
  br label %204

114:                                              ; preds = %97
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 16
  store i64 %115, i64* %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 15
  store i64 %120, i64* %124, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 14
  store i64 %125, i64* %129, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 13
  store i64 %130, i64* %134, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 12
  store i64 %135, i64* %139, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 11
  store i64 %140, i64* %144, align 8
  %145 = load i32, i32* %20, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 10
  store i32 %145, i32* %149, align 8
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 9
  store i64 %150, i64* %154, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 8
  store i8* %155, i8** %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 7
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 5
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  store i32 %184, i32* %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  store i32 1, i32* %196, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %198 = call i32 @FLAC__stream_decoder_reset(%struct.TYPE_12__* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %114
  %201 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_MEMORY_ALLOCATION_ERROR, align 4
  store i32 %201, i32* %12, align 4
  br label %204

202:                                              ; preds = %114
  %203 = load i32, i32* @FLAC__STREAM_DECODER_INIT_STATUS_OK, align 4
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %202, %200, %107, %66, %43, %35
  %205 = load i32, i32* %12, align 4
  ret i32 %205
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i32 @FLAC__cpu_info(%struct.TYPE_13__*) #1

declare dso_local i32 @FLAC__bitreader_init(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @FLAC__stream_decoder_reset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
