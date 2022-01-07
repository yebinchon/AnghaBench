; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32* }

@ff_nut_metadata_conv = common dso_local global i32 0, align 4
@MAIN_STARTCODE = common dso_local global i32 0, align 4
@STREAM_STARTCODE = common dso_local global i32 0, align 4
@INFO_STARTCODE = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @write_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_headers(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = load i32, i32* @ff_nut_metadata_conv, align 4
  %15 = call i32 @ff_metadata_conv_ctx(%struct.TYPE_14__* %13, i32 %14, i32* null)
  %16 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %167

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @write_mainheader(%struct.TYPE_13__* %22, i32* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @MAIN_STARTCODE, align 4
  %29 = call i32 @put_packet(%struct.TYPE_13__* %25, i32* %26, i32* %27, i32 1, i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %69, %21
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %30
  %39 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %167

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @write_streamheader(%struct.TYPE_14__* %45, i32* %46, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = call i32 @ffio_free_dyn_buf(i32** %7)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %167

63:                                               ; preds = %44
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @STREAM_STARTCODE, align 4
  %68 = call i32 @put_packet(%struct.TYPE_13__* %64, i32* %65, i32* %66, i32 1, i32 %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %30

72:                                               ; preds = %30
  %73 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %167

78:                                               ; preds = %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @write_globalinfo(%struct.TYPE_13__* %79, i32* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @INFO_STARTCODE, align 4
  %86 = call i32 @put_packet(%struct.TYPE_13__* %82, i32* %83, i32* %84, i32 1, i32 %85)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %122, %78
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %167

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @write_streaminfo(%struct.TYPE_13__* %102, i32* %103, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @INFO_STARTCODE, align 4
  %113 = call i32 @put_packet(%struct.TYPE_13__* %109, i32* %110, i32* %111, i32 1, i32 %112)
  br label %121

114:                                              ; preds = %101
  %115 = call i32 @ffio_free_dyn_buf(i32** %7)
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %167

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %87

125:                                              ; preds = %87
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %156, %125
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %127, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %126
  %135 = call i32 @avio_open_dyn_buf(i32** %7)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %167

140:                                              ; preds = %134
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @write_chapter(%struct.TYPE_13__* %141, i32* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = call i32 @ffio_free_dyn_buf(i32** %7)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %167

150:                                              ; preds = %140
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* @INFO_STARTCODE, align 4
  %155 = call i32 @put_packet(%struct.TYPE_13__* %151, i32* %152, i32* %153, i32 1, i32 %154)
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %126

159:                                              ; preds = %126
  %160 = load i32, i32* @INT_MIN, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %159, %147, %138, %118, %99, %76, %60, %42, %19
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @ff_metadata_conv_ctx(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @write_mainheader(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @put_packet(%struct.TYPE_13__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @write_streamheader(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @ffio_free_dyn_buf(i32**) #1

declare dso_local i32 @write_globalinfo(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @write_streaminfo(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @write_chapter(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
