; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_read_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i8*, i8* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }

@VC_CONTAINER_ERROR_EOS = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @rcv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcv_read_header(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__, align 4
  %6 = alloca [36 x i32], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %14 = call i32 @PEEK_BYTES(%struct.TYPE_18__* %12, i32* %13, i32 144)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 144
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VC_CONTAINER_ERROR_EOS, align 4
  store i32 %18, i32* %2, align 4
  br label %163

19:                                               ; preds = %1
  %20 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %21 = call i32 @LI24(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = call i8* @LI32(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = call i32 @memcpy(i32 %33, i32* %35, i32 4)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  store i32 %39, i32* %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = call i8* @LI32(i32* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i8* %54, i8** %63, align 8
  %64 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %65 = getelementptr inbounds i32, i32* %64, i64 16
  %66 = call i8* @LI32(i32* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i8* %66, i8** %75, align 8
  %76 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %77 = getelementptr inbounds i32, i32* %76, i64 20
  %78 = call i8* @LI32(i32* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %84 = getelementptr inbounds i32, i32* %83, i64 24
  %85 = call i32 @memcpy(i32 %82, i32* %84, i32 8)
  %86 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %87 = getelementptr inbounds i32, i32* %86, i64 32
  %88 = call i8* @LI32(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 197
  br i1 %93, label %102, label %94

94:                                               ; preds = %19
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 4
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 12
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %94, %19
  %103 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %103, i32* %2, align 4
  br label %163

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 4294967295
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i32 %115, i32* %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %113, %108, %104
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 16777215
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ne i64 %145, 4294967295
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 1000000
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = sdiv i64 %151, %154
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %147, %142, %138, %134
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = call i32 @SKIP_BYTES(%struct.TYPE_18__* %159, i32 144)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = call i32 @STREAM_STATUS(%struct.TYPE_18__* %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %158, %102, %17
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @LI24(i32*) #1

declare dso_local i8* @LI32(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
